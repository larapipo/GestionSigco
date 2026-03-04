object DMMain_FD: TDMMain_FD
  OnCreate = DataModuleCreate
  Height = 939
  Width = 1344
  object fdcGestion: TFDConnection
    Params.Strings = (
      
        'Database=C:\Proyectos Delphi\GestionComercial\Tablas IB\GESTIONV' +
        '3.FDB'
      'User_Name=sysdba'
      'Password=regulador'
      'MonitorBy=FlatFile'
      'DriverID=FB')
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtBCD
        TargetDataType = dtDouble
      end
      item
        SourceDataType = dtFmtBCD
        TargetDataType = dtDouble
      end>
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    ResourceOptions.AutoReconnect = True
    TxOptions.Isolation = xiReadCommitted
    LoginPrompt = False
    Left = 24
    Top = 8
  end
  object QCompraCab: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select Fc.*,'
      '  Fp.Detalle as MuestraCondCompra, De.Nombre as MuestraDeposito,'
      
        '  Su.Detalle as MuestraSucursal,cp.denominacion as MuestraCompro' +
        'bante,'
      
        '  cp.id_comprobante as Id_tipocomprobante,m.moneda as MuestraMon' +
        'edaCpbte,cp.Codigo_Afip as MuestraCodigoAfip,'
      '  m.signo as Muestrasignomonedacpbte,'
      '  ins.detalle as MuestraInscripcionIVA,'
      '  ob.detalle as MuestraObra from fccompcab fc'
      'left join F_Pago Fp on Fp.Codigo=Fc.CondicionCompra'
      'left join inscripcion ins on ins.codigo=fc.tipoiva'
      'left join Depositos De  on De.Id=Fc.Deposito'
      'left join Sucursal Su  on Su.Codigo=Fc.SucursalCompra'
      'left join comprobantes cp on cp.clase_comprob=Fc.ClaseCpbte and'
      '          cp.letra=fc.LetraFac and'
      '          cp.sucursal=fc.sucursalCompra and'
      '          cp.tipo_comprob=fc.tipocpbte and'
      '          cp.compra_venta='#39'C'#39
      'left join monedas m on m.id = fc.moneda_cpbte'
      'left join obras ob on ob.codigo=fc.id_obra'
      'where Fc.TipoCpbte= :TipoCpbte'
      'and Fc.id_fc=:id')
    Left = 100
    Top = 320
    ParamData = <
      item
        Position = 1
        Name = 'TipoCpbte'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QCompraCabID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCompraCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QCompraCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QCompraCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object QCompraCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QCompraCabLETRAFAC: TStringField
      FieldName = 'LETRAFAC'
      Origin = 'LETRAFAC'
      FixedChar = True
      Size = 1
    end
    object QCompraCabSUCFAC: TStringField
      FieldName = 'SUCFAC'
      Origin = 'SUCFAC'
      Size = 4
    end
    object QCompraCabNUMEROFAC: TStringField
      FieldName = 'NUMEROFAC'
      Origin = 'NUMEROFAC'
      Size = 8
    end
    object QCompraCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QCompraCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QCompraCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object QCompraCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QCompraCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object QCompraCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Origin = 'TIPOIVA'
    end
    object QCompraCabCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QCompraCabFECHACOMPRA: TSQLTimeStampField
      FieldName = 'FECHACOMPRA'
      Origin = 'FECHACOMPRA'
      Required = True
    end
    object QCompraCabFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
    object QCompraCabCONDICIONCOMPRA: TIntegerField
      FieldName = 'CONDICIONCOMPRA'
      Origin = 'CONDICIONCOMPRA'
      Required = True
    end
    object QCompraCabANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCompraCabORDENCOMPRA: TStringField
      FieldName = 'ORDENCOMPRA'
      Origin = 'ORDENCOMPRA'
      Size = 8
    end
    object QCompraCabN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
      Origin = 'N_OPERACION2'
    end
    object QCompraCabNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
      Origin = 'NETOGRAV1'
    end
    object QCompraCabDSTO: TFloatField
      FieldName = 'DSTO'
      Origin = 'DSTO'
    end
    object QCompraCabDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
      Origin = 'DSTOIMPORTE'
    end
    object QCompraCabNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
      Origin = 'NETOGRAV2'
    end
    object QCompraCabNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
      Origin = 'NETOEXEN1'
    end
    object QCompraCabNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
      Origin = 'NETOEXEN2'
    end
    object QCompraCabIMPORTEEXCLUIDO2: TFloatField
      FieldName = 'IMPORTEEXCLUIDO2'
      Origin = 'IMPORTEEXCLUIDO2'
    end
    object QCompraCabIMPORTEEXCLUIDO1: TFloatField
      FieldName = 'IMPORTEEXCLUIDO1'
      Origin = 'IMPORTEEXCLUIDO1'
    end
    object QCompraCabRETENCION_IVA: TFloatField
      FieldName = 'RETENCION_IVA'
      Origin = 'RETENCION_IVA'
      Required = True
    end
    object QCompraCabTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QCompraCabDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
    end
    object QCompraCabAPLICA: TStringField
      FieldName = 'APLICA'
      Origin = 'APLICA'
      Size = 13
    end
    object QCompraCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Origin = 'OBSERVACION1'
      Size = 60
    end
    object QCompraCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Origin = 'OBSERVACION2'
      Size = 60
    end
    object QCompraCabSUCURSALCOMPRA: TIntegerField
      FieldName = 'SUCURSALCOMPRA'
      Origin = 'SUCURSALCOMPRA'
      Required = True
    end
    object QCompraCabZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'ZONA'
    end
    object QCompraCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QCompraCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCompraCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCompraCabFECHAFISCAL: TSQLTimeStampField
      FieldName = 'FECHAFISCAL'
      Origin = 'FECHAFISCAL'
      Required = True
    end
    object QCompraCabNETOMONOTRIBUTO1: TFloatField
      FieldName = 'NETOMONOTRIBUTO1'
      Origin = 'NETOMONOTRIBUTO1'
    end
    object QCompraCabNETOMONOTRIBUTO2: TFloatField
      FieldName = 'NETOMONOTRIBUTO2'
      Origin = 'NETOMONOTRIBUTO2'
    end
    object QCompraCabCPBTE_INTERNO: TStringField
      FieldName = 'CPBTE_INTERNO'
      Origin = 'CPBTE_INTERNO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCompraCabINGRESA_A_CTACTE: TStringField
      FieldName = 'INGRESA_A_CTACTE'
      Origin = 'INGRESA_A_CTACTE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCompraCabINGRESA_LIBRO_IVA: TStringField
      FieldName = 'INGRESA_LIBRO_IVA'
      Origin = 'INGRESA_LIBRO_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCompraCabREDUCIDA: TStringField
      FieldName = 'REDUCIDA'
      Origin = 'REDUCIDA'
      FixedChar = True
      Size = 1
    end
    object QCompraCabTIPO_PROVEEDOR: TStringField
      FieldName = 'TIPO_PROVEEDOR'
      Origin = 'TIPO_PROVEEDOR'
      FixedChar = True
      Size = 1
    end
    object QCompraCabJURIDICCION: TIntegerField
      FieldName = 'JURIDICCION'
      Origin = 'JURIDICCION'
    end
    object QCompraCabPERCEPCION_IB_BASEIMPONIBLE: TFloatField
      FieldName = 'PERCEPCION_IB_BASEIMPONIBLE'
      Origin = 'PERCEPCION_IB_BASEIMPONIBLE'
    end
    object QCompraCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object QCompraCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object QCompraCabTOTAL_UNIDADES: TFloatField
      FieldName = 'TOTAL_UNIDADES'
      Origin = 'TOTAL_UNIDADES'
    end
    object QCompraCabMONEDA_CPBTE: TIntegerField
      FieldName = 'MONEDA_CPBTE'
      Origin = 'MONEDA_CPBTE'
    end
    object QCompraCabMONEDA_CPBTE_COTIZACION: TFloatField
      FieldName = 'MONEDA_CPBTE_COTIZACION'
      Origin = 'MONEDA_CPBTE_COTIZACION'
    end
    object QCompraCabNUMERO_OPERACION: TStringField
      FieldName = 'NUMERO_OPERACION'
      Origin = 'NUMERO_OPERACION'
      Size = 8
    end
    object QCompraCabCAE: TStringField
      FieldName = 'CAE'
      Origin = 'CAE'
      Required = True
      Size = 50
    end
    object QCompraCabCAE_VENCIMIENTO: TSQLTimeStampField
      FieldName = 'CAE_VENCIMIENTO'
      Origin = 'CAE_VENCIMIENTO'
    end
    object QCompraCabFACTURA_ELECTRONICA: TStringField
      FieldName = 'FACTURA_ELECTRONICA'
      Origin = 'FACTURA_ELECTRONICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCompraCabCOD_OPERACION_AFIP: TSingleField
      FieldName = 'COD_OPERACION_AFIP'
      Origin = 'COD_OPERACION_AFIP'
    end
    object QCompraCabTIPOCOMP_AFIP: TStringField
      FieldName = 'TIPOCOMP_AFIP'
      Origin = 'TIPOCOMP_AFIP'
      Size = 3
    end
    object QCompraCabCOD_CARACT_RECP_AFIP: TIntegerField
      FieldName = 'COD_CARACT_RECP_AFIP'
      Origin = 'COD_CARACT_RECP_AFIP'
    end
    object QCompraCabCOD_CARACT_EMIS_AFIP: TIntegerField
      FieldName = 'COD_CARACT_EMIS_AFIP'
      Origin = 'COD_CARACT_EMIS_AFIP'
    end
    object QCompraCabNRO_IIBB_RECEP: TStringField
      FieldName = 'NRO_IIBB_RECEP'
      Origin = 'NRO_IIBB_RECEP'
    end
    object QCompraCabNRO_RENSPA_EMISOR: TStringField
      FieldName = 'NRO_RENSPA_EMISOR'
      Origin = 'NRO_RENSPA_EMISOR'
    end
    object QCompraCabNRO_RENSPA_RECEP: TStringField
      FieldName = 'NRO_RENSPA_RECEP'
      Origin = 'NRO_RENSPA_RECEP'
    end
    object QCompraCabFECHA_OPERACION: TSQLTimeStampField
      FieldName = 'FECHA_OPERACION'
      Origin = 'FECHA_OPERACION'
    end
    object QCompraCabLUGAR_REALIZA_AFIP: TStringField
      FieldName = 'LUGAR_REALIZA_AFIP'
      Origin = 'LUGAR_REALIZA_AFIP'
      Size = 30
    end
    object QCompraCabCOD_MOTIVO_AFIP: TIntegerField
      FieldName = 'COD_MOTIVO_AFIP'
      Origin = 'COD_MOTIVO_AFIP'
    end
    object QCompraCabNRO_RUCA_EMISOR_AFIP: TSingleField
      FieldName = 'NRO_RUCA_EMISOR_AFIP'
      Origin = 'NRO_RUCA_EMISOR_AFIP'
    end
    object QCompraCabNRO_RUCA_RECEPTOR_AFIP: TSingleField
      FieldName = 'NRO_RUCA_RECEPTOR_AFIP'
      Origin = 'NRO_RUCA_RECEPTOR_AFIP'
    end
    object QCompraCabFECHA_FAENA_AFIP: TSQLTimeStampField
      FieldName = 'FECHA_FAENA_AFIP'
      Origin = 'FECHA_FAENA_AFIP'
    end
    object QCompraCabFECHA_RECEP_AFIP: TSQLTimeStampField
      FieldName = 'FECHA_RECEP_AFIP'
      Origin = 'FECHA_RECEP_AFIP'
    end
    object QCompraCabDATOS_ADIC_AFIP: TStringField
      FieldName = 'DATOS_ADIC_AFIP'
      Origin = 'DATOS_ADIC_AFIP'
      Size = 100
    end
    object QCompraCabFECHA_INCIO_ACTIV: TSQLTimeStampField
      FieldName = 'FECHA_INCIO_ACTIV'
      Origin = 'FECHA_INCIO_ACTIV'
    end
    object QCompraCabCODIGOBARRA_AFIP: TStringField
      FieldName = 'CODIGOBARRA_AFIP'
      Origin = 'CODIGOBARRA_AFIP'
      Size = 40
    end
    object QCompraCabCUIT_AUTORIZADO: TStringField
      FieldName = 'CUIT_AUTORIZADO'
      Origin = 'CUIT_AUTORIZADO'
      Size = 13
    end
    object QCompraCabNOMBRE_AUTORIZADO: TStringField
      FieldName = 'NOMBRE_AUTORIZADO'
      Origin = 'NOMBRE_AUTORIZADO'
      Size = 50
    end
    object QCompraCabTIPO_LIQUIDACION: TStringField
      FieldName = 'TIPO_LIQUIDACION'
      Origin = 'TIPO_LIQUIDACION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCompraCabCUIT_AUTORIZADO_RECEP: TStringField
      FieldName = 'CUIT_AUTORIZADO_RECEP'
      Origin = 'CUIT_AUTORIZADO_RECEP'
      Size = 13
    end
    object QCompraCabID_CPBTE_ANULADO_LIQ: TIntegerField
      FieldName = 'ID_CPBTE_ANULADO_LIQ'
      Origin = 'ID_CPBTE_ANULADO_LIQ'
    end
    object QCompraCabMUESTRACONDCOMPRA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACONDCOMPRA'
      Origin = 'DETALLE'
      ProviderFlags = []
    end
    object QCompraCabMUESTRADEPOSITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object QCompraCabMUESTRASUCURSAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object QCompraCabMUESTRACOMPROBANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      Size = 15
    end
    object QCompraCabID_TIPOCOMPROBANTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_TIPOCOMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
    end
    object QCompraCabMUESTRAMONEDACPBTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAMONEDACPBTE'
      Origin = 'MONEDA'
      ProviderFlags = []
      Size = 15
    end
    object QCompraCabMUESTRACODIGOAFIP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACODIGOAFIP'
      Origin = 'CODIGO_AFIP'
      ProviderFlags = []
      Size = 3
    end
    object QCompraCabMUESTRASIGNOMONEDACPBTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASIGNOMONEDACPBTE'
      Origin = 'SIGNO'
      ProviderFlags = []
      Size = 5
    end
    object QCompraCabMUESTRAINSCRIPCIONIVA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAINSCRIPCIONIVA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 15
    end
    object QCompraCabLOTE_AFIP: TStringField
      FieldName = 'LOTE_AFIP'
      Origin = 'LOTE_AFIP'
      Size = 8
    end
    object QCompraCabID_OBRA: TIntegerField
      FieldName = 'ID_OBRA'
      Origin = 'ID_OBRA'
      Required = True
    end
    object QCompraCabMUESTRAOBRA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAOBRA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 100
    end
    object QCompraCabNC_POR_DIFERENCIA: TStringField
      FieldName = 'NC_POR_DIFERENCIA'
      Origin = 'NC_POR_DIFERENCIA'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QCompraDet: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'Select d.*,  m.signo as MuestraMoneda,'
      's.REEMPLAZO_STK as MuestraCodAlternativo,'
      
        '( select max(cb.codigobarra) from codigobarra cb where cb.codigo' +
        '_stk=d.codigoarticulo) as MuestraCodigoBarra ,'
      '( select la.precio from listaprecioespecialart la'
      '    left join listaprecioespecialcab lc on lc.id=la.id_cab'
      
        'where la.codigoarticulo=d.codigoarticulo and lc.pordefecto='#39'S'#39') ' +
        'as MuestraPrecioVta'
      'from FcCompDet d'
      '  left join stock s on s.codigo_stk=d.codigoarticulo'
      ''
      '  left join monedas m on m.id=d.id_moneda'
      'where d.Id_CabFac= :id')
    Left = 176
    Top = 369
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QCompraDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCompraDetID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      Origin = 'ID_CABFAC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCompraDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QCompraDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QCompraDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QCompraDetCODIGOPROVEEDOR: TStringField
      FieldName = 'CODIGOPROVEEDOR'
      Origin = 'CODIGOPROVEEDOR'
      Required = True
      Size = 6
    end
    object QCompraDetRENGLON: TFloatField
      FieldName = 'RENGLON'
      Origin = 'RENGLON'
    end
    object QCompraDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object QCompraDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QCompraDetDETALLE_ADICIONAL: TStringField
      FieldName = 'DETALLE_ADICIONAL'
      Origin = 'DETALLE_ADICIONAL'
      Size = 300
    end
    object QCompraDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object QCompraDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      Required = True
    end
    object QCompraDetUNIDADES_TOTAL: TFloatField
      FieldName = 'UNIDADES_TOTAL'
      Origin = 'UNIDADES_TOTAL'
    end
    object QCompraDetUNIDADES_EXENTO: TFloatField
      FieldName = 'UNIDADES_EXENTO'
      Origin = 'UNIDADES_EXENTO'
    end
    object QCompraDetUNIDADES_GRAVADO: TFloatField
      FieldName = 'UNIDADES_GRAVADO'
      Origin = 'UNIDADES_GRAVADO'
    end
    object QCompraDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
    end
    object QCompraDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
      Origin = 'UNITARIO_EXENTO'
    end
    object QCompraDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
      Origin = 'UNITARIO_GRAVADO'
    end
    object QCompraDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCompraDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCompraDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Origin = 'TIPOIVA_TASA'
      Required = True
    end
    object QCompraDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
    end
    object QCompraDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Origin = 'TIPOIVA_SOBRETASA'
      Required = True
    end
    object QCompraDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
      Origin = 'IVA_SOBRETASA'
    end
    object QCompraDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
    end
    object QCompraDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
    end
    object QCompraDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
    end
    object QCompraDetDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
    end
    object QCompraDetTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QCompraDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QCompraDetMARGEN: TFloatField
      FieldName = 'MARGEN'
      Origin = 'MARGEN'
    end
    object QCompraDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCompraDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCompraDetCOSTO_IMP_INTERNO: TFloatField
      FieldName = 'COSTO_IMP_INTERNO'
      Origin = 'COSTO_IMP_INTERNO'
    end
    object QCompraDetUNIDADES_IMP_INTERNOS: TFloatField
      FieldName = 'UNIDADES_IMP_INTERNOS'
      Origin = 'UNIDADES_IMP_INTERNOS'
    end
    object QCompraDetUNITARIO_IMP_INTERNO: TFloatField
      FieldName = 'UNITARIO_IMP_INTERNO'
      Origin = 'UNITARIO_IMP_INTERNO'
    end
    object QCompraDetCON_NRO_SERIE: TStringField
      FieldName = 'CON_NRO_SERIE'
      Origin = 'CON_NRO_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCompraDetID_RECEPCION_CAB: TIntegerField
      FieldName = 'ID_RECEPCION_CAB'
      Origin = 'ID_RECEPCION_CAB'
    end
    object QCompraDetID_RECEPCION_DET: TIntegerField
      FieldName = 'ID_RECEPCION_DET'
      Origin = 'ID_RECEPCION_DET'
    end
    object QCompraDetNRORECEPCION: TStringField
      FieldName = 'NRORECEPCION'
      Origin = 'NRORECEPCION'
      Size = 13
    end
    object QCompraDetGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      Origin = 'GRAVADO_IB'
      FixedChar = True
      Size = 1
    end
    object QCompraDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Origin = 'ID_MONEDA'
    end
    object QCompraDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object QCompraDetCONTROL_TRAZABILIDAD: TStringField
      FieldName = 'CONTROL_TRAZABILIDAD'
      Origin = 'CONTROL_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCompraDetCANTIDAD_UNIDADES: TFloatField
      FieldName = 'CANTIDAD_UNIDADES'
      Origin = 'CANTIDAD_UNIDADES'
      Required = True
    end
    object QCompraDetPRESENTACION_CANT: TFloatField
      FieldName = 'PRESENTACION_CANT'
      Origin = 'PRESENTACION_CANT'
      Required = True
    end
    object QCompraDetTIPO_LIQUI: TIntegerField
      FieldName = 'TIPO_LIQUI'
      Origin = 'TIPO_LIQUI'
    end
    object QCompraDetCODIGO_RAZA: TIntegerField
      FieldName = 'CODIGO_RAZA'
      Origin = 'CODIGO_RAZA'
    end
    object QCompraDetDETALLE_RAZA: TStringField
      FieldName = 'DETALLE_RAZA'
      Origin = 'DETALLE_RAZA'
      Size = 40
    end
    object QCompraDetTROPA: TIntegerField
      FieldName = 'TROPA'
      Origin = 'TROPA'
    end
    object QCompraDetCABEZAS: TIntegerField
      FieldName = 'CABEZAS'
      Origin = 'CABEZAS'
    end
    object QCompraDetMUESTRAMONEDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAMONEDA'
      Origin = 'SIGNO'
      ProviderFlags = []
      Size = 5
    end
    object QCompraDetMUESTRACODALTERNATIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACODALTERNATIVO'
      Origin = 'REEMPLAZO_STK'
      ProviderFlags = []
    end
    object QCompraDetFECHACOMPRA: TSQLTimeStampField
      FieldName = 'FECHACOMPRA'
      Origin = 'FECHACOMPRA'
      Required = True
    end
    object QCompraDetMUESTRACODIGOBARRA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACODIGOBARRA'
      Origin = 'MUESTRACODIGOBARRA'
      ProviderFlags = []
      Size = 50
    end
    object QCompraDetMUESTRAPRECIOVTA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAPRECIOVTA'
      Origin = 'PRECIO'
      ProviderFlags = []
    end
    object QCompraDetCANTIDAD_INVENTARIO: TFloatField
      FieldName = 'CANTIDAD_INVENTARIO'
      Origin = 'CANTIDAD_INVENTARIO'
      Required = True
    end
  end
  object QImpuestosComp: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from FcCompImpuesto where Id_FcCompCab=:id')
    Left = 376
    Top = 305
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QCompSubDetalle: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'Select * from FcCompSubDetalle where Id_detFac = :id ')
    Left = 272
    Top = 367
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QCompSubDetalleID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCompSubDetalleID_DETFAC: TIntegerField
      FieldName = 'ID_DETFAC'
      Origin = 'ID_DETFAC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QCompSubDetalleID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      Origin = 'ID_CABFAC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QCompSubDetalleTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QCompSubDetalleCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QCompSubDetalleFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object QCompSubDetalleNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QCompSubDetalleCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Size = 8
    end
    object QCompSubDetalleSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 50
    end
    object QCompSubDetalleDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
  end
  object QCompLotes: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'Select * from FCCOMP_LOTES where Id_fc = :id ')
    Left = 472
    Top = 312
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QCompLotesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCompLotesID_DET: TIntegerField
      FieldName = 'ID_DET'
      Origin = 'ID_DET'
    end
    object QCompLotesID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
    end
    object QCompLotesID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      Origin = 'ID_LOTE'
      Required = True
    end
    object QCompLotesCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object QCompLotesLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 15
    end
    object QCompLotesDESPACHO: TStringField
      FieldName = 'DESPACHO'
      Origin = 'DESPACHO'
    end
    object QCompLotesCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QCompLotesDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object QCompLotesTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Size = 2
    end
    object QCompLotesFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QCompLotesFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
  end
  object QCompraTributos: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select Ft.* from fccomptributo ft where Ft.id_fc=:id'
      ''
      ' ')
    Left = 44
    Top = 718
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QCompraTributosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCompraTributosID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
    end
    object QCompraTributosCODTRIBUTO: TIntegerField
      FieldName = 'CODTRIBUTO'
      Origin = 'CODTRIBUTO'
    end
    object QCompraTributosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 50
    end
    object QCompraTributosBASEIMPONIBLE: TFloatField
      FieldName = 'BASEIMPONIBLE'
      Origin = 'BASEIMPONIBLE'
      Required = True
    end
    object QCompraTributosALICUOTA: TFloatField
      FieldName = 'ALICUOTA'
      Origin = 'ALICUOTA'
      Required = True
    end
    object QCompraTributosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      Required = True
    end
  end
  object QCompraGastos: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select Ft.* from fccompgastos ft where Ft.id_fc=:id'
      ''
      ' ')
    Left = 176
    Top = 655
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QCompraGastosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCompraGastosID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
    end
    object QCompraGastosCODGASTO: TIntegerField
      FieldName = 'CODGASTO'
      Origin = 'CODGASTO'
    end
    object QCompraGastosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 60
    end
    object QCompraGastosBASEIMPONIBLE: TFloatField
      FieldName = 'BASEIMPONIBLE'
      Origin = 'BASEIMPONIBLE'
    end
    object QCompraGastosALICUOTA: TFloatField
      FieldName = 'ALICUOTA'
      Origin = 'ALICUOTA'
    end
    object QCompraGastosALICUOTAIVA: TFloatField
      FieldName = 'ALICUOTAIVA'
      Origin = 'ALICUOTAIVA'
    end
    object QCompraGastosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
  end
  object QComp_DET: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select Ft.* from FCCOMPNRODTE ft where Ft.id_fc=:id'
      ''
      ' ')
    Left = 272
    Top = 619
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QComp_DETID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QComp_DETID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
    end
    object QComp_DETNRO_DET: TStringField
      FieldName = 'NRO_DET'
      Origin = 'NRO_DET'
    end
    object QComp_DETNRO_RENSPA: TStringField
      FieldName = 'NRO_RENSPA'
      Origin = 'NRO_RENSPA'
    end
  end
  object QRecibo: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select r.*,'
      '  s.detalle as MuestraSucursal ,'
      '  c.denominacion as MuestraComprobante,'
      '  c.id_comprobante as id_tipocomprobante,'
      '  p.nombre as MuestraVendedor,'
      '  i.detalle as MuestraIva,'
      '  fc.nrocpbte as MuestraNCredito,'
      '  fc.total as MuestaNCImporte,'
      '  cl.cheques as MuestraCheques,'
      '  ob.detalle as MuestraObra,'
      '  m.signo as MuestraSignoMoneda'
      ''
      'from recibos r'
      '  left join clientes cl on cl.codigo=r.codigo'
      '  left join sucursal s on s.codigo=r.sucursal'
      '  left join personal p on p.codigo=r.vendedor'
      '  left join inscripcion i on i.codigo=r.tipoiva'
      
        '  left join fcvtacab fc on fc.id_fc=r.nc_id and fc.tipocpbte=r.n' +
        'c_tipocpbte'
      '  left join comprobantes c on c.clase_comprob=r.ClaseCpbte and'
      '            c.letra=r.LetraRc and'
      '            c.sucursal=r.sucursal and'
      '            c.tipo_comprob=r.tipocpbte and'
      '            c.compra_venta='#39'V'#39
      '  left join obras ob on ob.codigo=r.id_obra'
      '  left join monedas m on m.id=r.moneda_alternativa'
      '  '
      'where r.id_rc=:id')
    Left = 272
    Top = 417
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QReciboID_RC: TIntegerField
      FieldName = 'ID_RC'
      Origin = 'ID_RC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QReciboTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QReciboCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QReciboNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QReciboCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object QReciboLETRARC: TStringField
      FieldName = 'LETRARC'
      Origin = 'LETRARC'
      Size = 1
    end
    object QReciboSUCRC: TStringField
      FieldName = 'SUCRC'
      Origin = 'SUCRC'
      Size = 4
    end
    object QReciboNUMERORC: TStringField
      FieldName = 'NUMERORC'
      Origin = 'NUMERORC'
      Size = 8
    end
    object QReciboNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QReciboRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QReciboDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object QReciboCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QReciboLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object QReciboTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Origin = 'TIPOIVA'
    end
    object QReciboCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QReciboFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QReciboANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      Size = 1
    end
    object QReciboVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 6
    end
    object QReciboSALDO_APLICAR: TFloatField
      FieldName = 'SALDO_APLICAR'
      Origin = 'SALDO_APLICAR'
    end
    object QReciboIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Origin = 'IMPRESO'
      Size = 1
    end
    object QReciboOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Origin = 'OBSERVACION1'
      Size = 60
    end
    object QReciboOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Origin = 'OBSERVACION2'
      Size = 60
    end
    object QReciboSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QReciboZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'ZONA'
    end
    object QReciboTOTAL_NETO: TFloatField
      FieldName = 'TOTAL_NETO'
      Origin = 'TOTAL_NETO'
    end
    object QReciboPORCENTAJE_DSCTO: TFloatField
      FieldName = 'PORCENTAJE_DSCTO'
      Origin = 'PORCENTAJE_DSCTO'
    end
    object QReciboIMPORTE_DSCTO: TFloatField
      FieldName = 'IMPORTE_DSCTO'
      Origin = 'IMPORTE_DSCTO'
    end
    object QReciboTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QReciboUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object QReciboFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object QReciboCPBTE_MANUAL: TStringField
      FieldName = 'CPBTE_MANUAL'
      Origin = 'CPBTE_MANUAL'
      FixedChar = True
      Size = 1
    end
    object QReciboNC_ID: TIntegerField
      FieldName = 'NC_ID'
      Origin = 'NC_ID'
    end
    object QReciboNC_TIPOCPBTE: TStringField
      FieldName = 'NC_TIPOCPBTE'
      Origin = 'NC_TIPOCPBTE'
      Size = 2
    end
    object QReciboNC_CLASECPBTE: TStringField
      FieldName = 'NC_CLASECPBTE'
      Origin = 'NC_CLASECPBTE'
      Size = 2
    end
    object QReciboNC_NROCOMPROB: TStringField
      FieldName = 'NC_NROCOMPROB'
      Origin = 'NC_NROCOMPROB'
      Size = 13
    end
    object QReciboN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
      Origin = 'N_OPERACION2'
    end
    object QReciboNUMERO_OPERACION: TStringField
      FieldName = 'NUMERO_OPERACION'
      Origin = 'NUMERO_OPERACION'
      Size = 8
    end
    object QReciboNRO_RECIBO_INTERMO: TIntegerField
      FieldName = 'NRO_RECIBO_INTERMO'
      Origin = 'NRO_RECIBO_INTERMO'
    end
    object QReciboID_REC_CUPON: TIntegerField
      FieldName = 'ID_REC_CUPON'
      Origin = 'ID_REC_CUPON'
    end
    object QReciboIMPORTE_RECARGO: TFloatField
      FieldName = 'IMPORTE_RECARGO'
      Origin = 'IMPORTE_RECARGO'
    end
    object QReciboLOTE_COBRO_TC: TStringField
      FieldName = 'LOTE_COBRO_TC'
      Origin = 'LOTE_COBRO_TC'
      Size = 8
    end
    object QReciboMUESTRASUCURSAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object QReciboMUESTRACOMPROBANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      Size = 15
    end
    object QReciboID_TIPOCOMPROBANTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_TIPOCOMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
    end
    object QReciboMUESTRAVENDEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAVENDEDOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object QReciboMUESTRAIVA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAIVA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 15
    end
    object QReciboMUESTRANCREDITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANCREDITO'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object QReciboMUESTRACHEQUES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACHEQUES'
      Origin = 'CHEQUES'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object QReciboID_OBRA: TIntegerField
      FieldName = 'ID_OBRA'
      Origin = 'ID_OBRA'
      Required = True
    end
    object QReciboMUESTRAOBRA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAOBRA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 100
    end
    object QReciboMONEDA_ALTERNATIVA: TIntegerField
      FieldName = 'MONEDA_ALTERNATIVA'
      Origin = 'MONEDA_ALTERNATIVA'
      Required = True
    end
    object QReciboCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      Required = True
    end
    object QReciboMUESTRASIGNOMONEDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASIGNOMONEDA'
      Origin = 'SIGNO'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object QReciboMUESTANCIMPORTE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTANCIMPORTE'
      Origin = 'TOTAL'
      ProviderFlags = []
    end
  end
  object QMovAplicaCCVta: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select M.*,'
      '  f.fechavta as MuestraFechaCpbte,'
      '  f.total as MuestraTotalFC'
      'from MovAplicaCCVta M'
      
        'left join fcvtacab f on f.id_fc=m.aplica_id_cpbte and f.tipocpbt' +
        'e=m.aplica_tipocpbte'
      'Where M.id_cpbte=:id and M.tipoCpbte=:Tipo'
      'order by m.id_mov')
    Left = 272
    Top = 316
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'Tipo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QMovCCVta: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select m.*, m.saldo as MuestraAPagar,'
      
        '( select g.MuestraGrupo from mov_ctacte_vta_grupo ( m.id_movccvt' +
        'a ) g ) as MuestraGrupo,'
      
        '            ( select g.MuestraTotal from mov_ctacte_vta_grupo ( ' +
        'm.id_movccvta ) g ) as MuestraTotal ,'
      
        '            ( select g.MuestraTipoVta from mov_ctacte_vta_grupo ' +
        '( m.id_movccvta ) g ) As MuestraTipoVta'
      ''
      'from MovCCVta m where'
      '  ( m.cliente=:codigo) and'
      '  (m.Saldo>0.02) order by m.fechavta, m.nrocpbte')
    Left = 472
    Top = 464
    ParamData = <
      item
        Position = 1
        Name = 'Codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QTRetencion: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from T_retenciones where id_retencion=:id')
    Left = 272
    Top = 468
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QTRetencionID_RETENCION: TIntegerField
      FieldName = 'ID_RETENCION'
      Origin = 'ID_RETENCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTRetencionDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QTRetencionTIPO: TSmallintField
      FieldName = 'TIPO'
      Origin = 'TIPO'
    end
  end
  object QTasaPercepcioIva: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from PercepIVA where codigo=:id')
    Left = 1086
    Top = 300
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QTasaPercepcioIvaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTasaPercepcioIvaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
    end
    object QTasaPercepcioIvaTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object QTasaPercepcioIvaMINIMOAPLICABLE: TFloatField
      FieldName = 'MINIMOAPLICABLE'
      Origin = 'MINIMOAPLICABLE'
    end
    object QTasaPercepcioIvaCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Origin = 'COLUMNA'
    end
    object QTasaPercepcioIvaCODIGOREGIMEN: TIntegerField
      FieldName = 'CODIGOREGIMEN'
      Origin = 'CODIGOREGIMEN'
    end
  end
  object QTasaPercepcioIB: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from PercepIB where codigo=:id')
    Left = 1086
    Top = 348
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QTasaPercepcioIBCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTasaPercepcioIBDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
    end
    object QTasaPercepcioIBTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object QTasaPercepcioIBMINIMOAPLICABLE: TFloatField
      FieldName = 'MINIMOAPLICABLE'
      Origin = 'MINIMOAPLICABLE'
    end
    object QTasaPercepcioIBCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Origin = 'COLUMNA'
    end
    object QTasaPercepcioIBJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
      Origin = 'JURIDICION'
    end
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 376
    Top = 8
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    ScreenCursor = gcrNone
    Left = 184
    Top = 8
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 272
    Top = 8
  end
  object QExistencia: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      
        'select codigo_stk,detalle_stk,fisico,comprometido,fisico-comprom' +
        'etido-en_transito as Saldo,'
      '       deposito_stk,en_transito,acopio,'
      '       deposito_nombre,sec,ubic,fultajuste '
      '  from existencia_stk_unitario (:unidad,:codigo)'
      
        '    where ((fisico - comprometido - en_transito <> :fisico ) or ' +
        '( :fisico = 1 ))'
      
        '          and  existencia_stk_unitario.deposito_stk in (select u' +
        '.deposito from deposito_usuario u where u.id_usuario = :usuario)'
      'order by deposito_stk')
    Left = 24
    Top = 64
    ParamData = <
      item
        Position = 1
        Name = 'unidad'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 2
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'fisico'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'usuario'
        DataType = ftFloat
        ParamType = ptInput
      end>
    object QExistenciaCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      Size = 8
    end
    object QExistenciaDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object QExistenciaFISICO: TFloatField
      FieldName = 'FISICO'
      Origin = 'FISICO'
    end
    object QExistenciaCOMPROMETIDO: TFloatField
      FieldName = 'COMPROMETIDO'
      Origin = 'COMPROMETIDO'
    end
    object QExistenciaSALDO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SALDO'
      Origin = 'SALDO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QExistenciaDEPOSITO_STK: TIntegerField
      FieldName = 'DEPOSITO_STK'
      Origin = 'DEPOSITO_STK'
    end
    object QExistenciaEN_TRANSITO: TFloatField
      FieldName = 'EN_TRANSITO'
      Origin = 'EN_TRANSITO'
    end
    object QExistenciaACOPIO: TFloatField
      FieldName = 'ACOPIO'
      Origin = 'ACOPIO'
    end
    object QExistenciaDEPOSITO_NOMBRE: TStringField
      FieldName = 'DEPOSITO_NOMBRE'
      Origin = 'DEPOSITO_NOMBRE'
      Size = 25
    end
    object QExistenciaSEC: TStringField
      FieldName = 'SEC'
      Origin = 'SEC'
      Size = 2
    end
    object QExistenciaUBIC: TStringField
      FieldName = 'UBIC'
      Origin = 'UBIC'
      Size = 3
    end
    object QExistenciaFULTAJUSTE: TSQLTimeStampField
      FieldName = 'FULTAJUSTE'
      Origin = 'FULTAJUSTE'
    end
  end
  object QMarca: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select m.marca_stk,'
      '       m.descripcion_marca,'
      '       m.observacion_marca '
      'from Marcas M '
      'where M.Marca_Stk = :Codigo')
    Left = 100
    Top = 119
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object QMarcaMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object QMarcaDESCRIPCION_MARCA: TStringField
      FieldName = 'DESCRIPCION_MARCA'
      Size = 25
    end
    object QMarcaOBSERVACION_MARCA: TStringField
      FieldName = 'OBSERVACION_MARCA'
      Size = 40
    end
  end
  object QPresuCab: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select Pr.*,'
      '  Fp.Detalle as MuestraCondVenta,'
      '  De.Nombre as MuestraDeposito,'
      '  Su.Detalle as MuestraSucursal,'
      '  Ldr.Nombre as MuestraLdr,'
      '  ldr.direccion as MuestraLdrDireccion,'
      '  ins.Detalle as MuestraIva,'
      '  cp.denominacion as MuestraComprobante,'
      '  cp.id_comprobante as Id_tipocomprobante,'
      '  v.nombre as MuestraVendedor,'
      '  nv.id as MuestraNotaVenta_id,'
      '  nv.nrocpbte as MuestraNotaVenta_Nro,'
      
        '  m.moneda as MuestraMonedaCpbte, m.signo as Muestrasignomonedac' +
        'pbte,'
      '  f.nrocpbte as MuestraFactura,f.id_fc as Id_Fact,'
      '  r.nrocpbte as MuestraRemito,r.id_rto as Id_Rto,'
      '  fant.nrocpbte as MuestraFacturaAnticipo,'
      '  opr.nrocpbte as MuestraOProduccion,opr.id as Id_OProducc,'
      '  ob.detalle as MuestraObra,'
      '  inc.nombre MuestraContaco,inc.email as MuestraCorreoContacto,'
      '  su.direccion as MuestraDireccionSuc,'
      '  su.telefono1 as MuestraTE1Suc,'
      '  su.telefono2 as MuestraTE2Suc,'
      '  su.Razonsocial as MuestraRazonSSuc,'
      '  su.localidad as MuestraLocalidadSuc,'
      '  u.real_name as MuestraNombreUsuarioReal  from PresCab Pr'
      'left join personal v on v.codigo=pr.vendedor'
      'left join F_Pago Fp on Fp.Codigo=Pr.CondicionVta'
      'left join Depositos De  on De.Id=Pr.Deposito'
      'left join Sucursal Su  on Su.Codigo=Pr.Sucursal'
      'left join inscripcion ins on ins.codigo=Pr.TipoIva'
      'left join NotaVentaCab NV on NV.presupuesto_id=pr.id_pr'
      
        'left join LdrCliente Ldr on ((Ldr.Codigo_Cliente=Pr.Codigo) and ' +
        '(Ldr.Codigo_Ldr=Pr.Ldr))'
      'left join comprobantes cp on cp.clase_comprob=Pr.ClaseCpbte and'
      '          cp.letra=Pr.LetraFac and'
      '          cp.sucursal=Pr.sucursal and'
      '          cp.tipo_comprob=Pr.tipocpbte and'
      '          cp.compra_venta='#39'V'#39
      'left join monedas m on m.id = pr.moneda_cpbte'
      'left join fcvtacab f on f.presupuesto_id=pr.id_pr'
      'left join fcvtacab fant on fant.id_fc=pr.ID_FACTURA_ANTICIPO'
      'left join obras ob on ob.codigo=pr.id_obra'
      'left join rtocab r on r.presupuesto_id=pr.id_pr'
      'left join ordenproduccion_cab opr on opr.id_presupuesto=pr.id_pr'
      'left join pres_incid_contacto inc on inc.id_presupuesto=pr.id_pr'
      'left join ucs_users u on u.user_name=pr.usuario'
      'where  Pr.id_pr=:id and Pr.TipoCpbte='#39'PR'#39)
    Left = 100
    Top = 63
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QPresuCabID_PR: TIntegerField
      FieldName = 'ID_PR'
      Origin = 'ID_PR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPresuCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QPresuCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QPresuCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QPresuCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object QPresuCabLETRAFAC: TStringField
      FieldName = 'LETRAFAC'
      Origin = 'LETRAFAC'
      Size = 1
    end
    object QPresuCabSUCFAC: TStringField
      FieldName = 'SUCFAC'
      Origin = 'SUCFAC'
      Size = 4
    end
    object QPresuCabNUMEROFAC: TStringField
      FieldName = 'NUMEROFAC'
      Origin = 'NUMEROFAC'
      Size = 8
    end
    object QPresuCabSUB_NRO: TStringField
      FieldName = 'SUB_NRO'
      Origin = 'SUB_NRO'
      Required = True
      Size = 2
    end
    object QPresuCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QPresuCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QPresuCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object QPresuCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QPresuCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object QPresuCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Origin = 'TIPOIVA'
    end
    object QPresuCabCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QPresuCabCONDICIONVTA: TIntegerField
      FieldName = 'CONDICIONVTA'
      Origin = 'CONDICIONVTA'
    end
    object QPresuCabANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      Size = 1
    end
    object QPresuCabLISTAPRECIO: TIntegerField
      FieldName = 'LISTAPRECIO'
      Origin = 'LISTAPRECIO'
    end
    object QPresuCabNRORTO: TStringField
      FieldName = 'NRORTO'
      Origin = 'NRORTO'
    end
    object QPresuCabN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
      Origin = 'N_OPERACION2'
    end
    object QPresuCabNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
      Origin = 'NETOGRAV1'
    end
    object QPresuCabNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
      Origin = 'NETOGRAV2'
    end
    object QPresuCabDSTO: TFloatField
      FieldName = 'DSTO'
      Origin = 'DSTO'
    end
    object QPresuCabDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
      Origin = 'DSTOIMPORTE'
    end
    object QPresuCabNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
      Origin = 'NETOEXEN1'
    end
    object QPresuCabNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
      Origin = 'NETOEXEN2'
    end
    object QPresuCabTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QPresuCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Origin = 'IMPRESO'
      Size = 1
    end
    object QPresuCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Origin = 'OBSERVACION1'
      Size = 60
    end
    object QPresuCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Origin = 'OBSERVACION2'
      Size = 60
    end
    object QPresuCabCPTE_MANUAL: TStringField
      FieldName = 'CPTE_MANUAL'
      Origin = 'CPTE_MANUAL'
      Size = 1
    end
    object QPresuCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QPresuCabZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'ZONA'
    end
    object QPresuCabID_FACTURA: TIntegerField
      FieldName = 'ID_FACTURA'
      Origin = 'ID_FACTURA'
      Required = True
    end
    object QPresuCabFACTURANRO: TStringField
      FieldName = 'FACTURANRO'
      Origin = 'FACTURANRO'
      Size = 13
    end
    object QPresuCabLDR: TIntegerField
      FieldName = 'LDR'
      Origin = 'LDR'
    end
    object QPresuCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object QPresuCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object QPresuCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Size = 1
    end
    object QPresuCabDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
    end
    object QPresuCabNROENTREGA: TIntegerField
      FieldName = 'NROENTREGA'
      Origin = 'NROENTREGA'
    end
    object QPresuCabCOMISIONVENDEDOR: TFloatField
      FieldName = 'COMISIONVENDEDOR'
      Origin = 'COMISIONVENDEDOR'
    end
    object QPresuCabVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 6
    end
    object QPresuCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object QPresuCabNOTAS: TMemoField
      FieldName = 'NOTAS'
      Origin = 'NOTAS'
      BlobType = ftMemo
    end
    object QPresuCabDIAS_VIGENCIA_PRESUPESTO: TIntegerField
      FieldName = 'DIAS_VIGENCIA_PRESUPESTO'
      Origin = 'DIAS_VIGENCIA_PRESUPESTO'
      Required = True
    end
    object QPresuCabMONEDA_CPBTE: TIntegerField
      FieldName = 'MONEDA_CPBTE'
      Origin = 'MONEDA_CPBTE'
    end
    object QPresuCabMONEDA_CPBTE_COTIZACION: TFloatField
      FieldName = 'MONEDA_CPBTE_COTIZACION'
      Origin = 'MONEDA_CPBTE_COTIZACION'
    end
    object QPresuCabPERCEPCION_IB_TASA: TFloatField
      FieldName = 'PERCEPCION_IB_TASA'
      Origin = 'PERCEPCION_IB_TASA'
      Required = True
    end
    object QPresuCabPERCECEPION_IB_IMPORTE: TFloatField
      FieldName = 'PERCECEPION_IB_IMPORTE'
      Origin = 'PERCECEPION_IB_IMPORTE'
      Required = True
    end
    object QPresuCabPERCIB_IB: TStringField
      FieldName = 'PERCIB_IB'
      Origin = 'PERCIB_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QPresuCabPERCECPION_IB_BASEIMPONIBLE: TFloatField
      FieldName = 'PERCECPION_IB_BASEIMPONIBLE'
      Origin = 'PERCECPION_IB_BASEIMPONIBLE'
      Required = True
    end
    object QPresuCabID_PRESU_NEXT: TIntegerField
      FieldName = 'ID_PRESU_NEXT'
      Origin = 'ID_PRESU_NEXT'
    end
    object QPresuCabID_PRESU_PREV: TIntegerField
      FieldName = 'ID_PRESU_PREV'
      Origin = 'ID_PRESU_PREV'
    end
    object QPresuCabNRO_PRE_NEXT: TStringField
      FieldName = 'NRO_PRE_NEXT'
      Origin = 'NRO_PRE_NEXT'
      Size = 13
    end
    object QPresuCabNRO_PRE_PREV: TStringField
      FieldName = 'NRO_PRE_PREV'
      Origin = 'NRO_PRE_PREV'
      Size = 13
    end
    object QPresuCabREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 50
    end
    object QPresuCabMUESTRACONDVENTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACONDVENTA'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QPresuCabMUESTRADEPOSITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QPresuCabMUESTRASUCURSAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QPresuCabMUESTRALDR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRALDR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QPresuCabMUESTRAIVA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAIVA'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QPresuCabMUESTRACOMPROBANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QPresuCabID_TIPOCOMPROBANTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_TIPOCOMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QPresuCabMUESTRAVENDEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAVENDEDOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QPresuCabMUESTRANOTAVENTA_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANOTAVENTA_ID'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object QPresuCabMUESTRANOTAVENTA_NRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANOTAVENTA_NRO'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object QPresuCabMUESTRAMONEDACPBTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAMONEDACPBTE'
      Origin = 'MONEDA'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QPresuCabMUESTRASIGNOMONEDACPBTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASIGNOMONEDACPBTE'
      Origin = 'SIGNO'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object QPresuCabMUESTRAFACTURA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAFACTURA'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object QPresuCabMUESTRAREMITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAREMITO'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object QPresuCabPLAZO_ENTREGA: TIntegerField
      FieldName = 'PLAZO_ENTREGA'
      Origin = 'PLAZO_ENTREGA'
      Required = True
    end
    object QPresuCabCUMPLIO_TECNICA: TStringField
      FieldName = 'CUMPLIO_TECNICA'
      Origin = 'CUMPLIO_TECNICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QPresuCabCUMPLIO_FINANCIERA: TStringField
      FieldName = 'CUMPLIO_FINANCIERA'
      Origin = 'CUMPLIO_FINANCIERA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QPresuCabNRO_ORDEN_COMP: TStringField
      FieldName = 'NRO_ORDEN_COMP'
      Origin = 'NRO_ORDEN_COMP'
    end
    object QPresuCabID_OBRA: TIntegerField
      FieldName = 'ID_OBRA'
      Origin = 'ID_OBRA'
    end
    object QPresuCabMUESTRAOPRODUCCION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAOPRODUCCION'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object QPresuCabID_OPRODUCC: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_OPRODUCC'
      Origin = 'ID'
      ProviderFlags = []
    end
    object QPresuCabID_FACT: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_FACT'
      Origin = 'ID_FC'
      ProviderFlags = []
      ReadOnly = True
    end
    object QPresuCabID_RTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_RTO'
      Origin = 'ID_RTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QPresuCabFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object QPresuCabFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
    object QPresuCabFECHAVTO_PRESUPUESTO: TSQLTimeStampField
      FieldName = 'FECHAVTO_PRESUPUESTO'
      Origin = 'FECHAVTO_PRESUPUESTO'
    end
    object QPresuCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object QPresuCabFECHA_TECNICA: TSQLTimeStampField
      FieldName = 'FECHA_TECNICA'
      Origin = 'FECHA_TECNICA'
    end
    object QPresuCabFECHA_FINANCIERA: TSQLTimeStampField
      FieldName = 'FECHA_FINANCIERA'
      Origin = 'FECHA_FINANCIERA'
    end
    object QPresuCabFECHA_ENTREGA: TSQLTimeStampField
      FieldName = 'FECHA_ENTREGA'
      Origin = 'FECHA_ENTREGA'
    end
    object QPresuCabFECHA_OC: TSQLTimeStampField
      FieldName = 'FECHA_OC'
      Origin = 'FECHA_OC'
    end
    object QPresuCabFECHA_REVISION: TSQLTimeStampField
      FieldName = 'FECHA_REVISION'
      Origin = 'FECHA_REVISION'
    end
    object QPresuCabID_OBRA_SECTOR: TIntegerField
      FieldName = 'ID_OBRA_SECTOR'
      Origin = 'ID_OBRA_SECTOR'
    end
    object QPresuCabNROCPBTE2: TStringField
      FieldName = 'NROCPBTE2'
      Origin = 'NROCPBTE2'
      Required = True
      Size = 15
    end
    object QPresuCabTIPO_OBRA: TIntegerField
      FieldName = 'TIPO_OBRA'
      Origin = 'TIPO_OBRA'
      Required = True
    end
    object QPresuCabFECHA_ENTREGA_2: TSQLTimeStampField
      FieldName = 'FECHA_ENTREGA_2'
      Origin = 'FECHA_ENTREGA_2'
    end
    object QPresuCabTIENE_PLANO: TStringField
      FieldName = 'TIENE_PLANO'
      Origin = 'TIENE_PLANO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QPresuCabID_FACTURA_ANTICIPO: TIntegerField
      FieldName = 'ID_FACTURA_ANTICIPO'
      Origin = 'ID_FACTURA_ANTICIPO'
      Required = True
    end
    object QPresuCabMUESTRAFACTURAANTICIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAFACTURAANTICIPO'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object QPresuCabMUESTRAOBRA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAOBRA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 100
    end
    object QPresuCabMUESTRACONTACO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACONTACO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 150
    end
    object QPresuCabMUESTRACORREOCONTACTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACORREOCONTACTO'
      Origin = 'EMAIL'
      ProviderFlags = []
      Size = 100
    end
    object QPresuCabPARA_ACOPIO: TStringField
      FieldName = 'PARA_ACOPIO'
      Origin = 'PARA_ACOPIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QPresuCabMUESTRADIRECCIONSUC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADIRECCIONSUC'
      Origin = 'DIRECCION'
      ProviderFlags = []
    end
    object QPresuCabMUESTRATE1SUC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATE1SUC'
      Origin = 'TELEFONO1'
      ProviderFlags = []
      Size = 15
    end
    object QPresuCabMUESTRATE2SUC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATE2SUC'
      Origin = 'TELEFONO2'
      ProviderFlags = []
      Size = 15
    end
    object QPresuCabMUESTRARAZONSSUC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRARAZONSSUC'
      Origin = 'RAZONSOCIAL'
      ProviderFlags = []
      Size = 35
    end
    object QPresuCabMUESTRALOCALIDADSUC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRALOCALIDADSUC'
      Origin = 'LOCALIDAD'
      ProviderFlags = []
    end
    object QPresuCabNETO_ACUMULADO: TFloatField
      FieldName = 'NETO_ACUMULADO'
      Origin = 'NETO_ACUMULADO'
      Required = True
    end
    object QPresuCabMARGEN_GENERAL: TFloatField
      FieldName = 'MARGEN_GENERAL'
      Origin = 'MARGEN_GENERAL'
      Required = True
    end
    object QPresuCabMUESTRALDRDIRECCION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRALDRDIRECCION'
      Origin = 'DIRECCION'
      ProviderFlags = []
      Size = 35
    end
    object QPresuCabMUESTRANOMBREUSUARIOREAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANOMBREUSUARIOREAL'
      Origin = 'REAL_NAME'
      ProviderFlags = []
      Size = 40
    end
    object QPresuCabPERCIBE_IVA: TStringField
      FieldName = 'PERCIBE_IVA'
      Origin = 'PERCIBE_IVA'
      FixedChar = True
      Size = 1
    end
    object QPresuCabA_COBRAR: TStringField
      FieldName = 'A_COBRAR'
      Origin = 'A_COBRAR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QPresuCabMINIMO_PERC_IVA: TFloatField
      FieldName = 'MINIMO_PERC_IVA'
      Origin = 'MINIMO_PERC_IVA'
      Required = True
    end
  end
  object QPresuSubDet: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select sd.* from presubdet sd'
      'where sd.id_cab = :id'
      'order by sd.item_nro')
    Left = 272
    Top = 64
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QPresuSubDetITEM_NRO: TIntegerField
      FieldName = 'ITEM_NRO'
      Origin = 'ITEM_NRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPresuSubDetID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPresuSubDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QPresuSubDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QPresuSubDetTOTAL_GRAVADO: TFloatField
      FieldName = 'TOTAL_GRAVADO'
      Origin = 'TOTAL_GRAVADO'
    end
    object QPresuSubDetTOTAL_EXENTO: TFloatField
      FieldName = 'TOTAL_EXENTO'
      Origin = 'TOTAL_EXENTO'
    end
    object QPresuSubDetTOTAL_IVA: TFloatField
      FieldName = 'TOTAL_IVA'
      Origin = 'TOTAL_IVA'
    end
    object QPresuSubDetTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
  end
  object QPresuDet: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'Select d.*,m.signo as MuestraSigno,'
      '  s.REEMPLAZO_STK as MuestraCodAlternativo,'
      '  s.deproduccion as MuestraDeProducc,'
      '   (sd.cantidad) as ItemCantidad,'
      '   (sd.total_iva) as ItemIva,'
      '   (sd.total_gravado) as ItemGravado,'
      '   (sd.total_exento) as ItemExento,'
      '   (sd.total) as ItemTotal,'
      '  sd.detalle as ItmeDetalle,'
      '  (d.cantidad * sd.cantidad) as CantidadTotal,'
      
        '  coalesce( op.cant_entregada,0) as MuestraProducidos   from Pre' +
        'sDet d'
      'left join stock s on s.codigo_stk=d.codigoarticulo'
      'left join monedas m on m.id=d.id_moneda'
      
        'left join presubdet sd on sd.id_cab= :id and sd.item_nro=d.item_' +
        'nro'
      'left join ordenproduccion_det op on op.id_presu_det=d.id'
      '  where d.Id_cabPres = :id')
    Left = 176
    Top = 76
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QPresuDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPresuDetID_CABPRES: TIntegerField
      FieldName = 'ID_CABPRES'
      Origin = 'ID_CABPRES'
    end
    object QPresuDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QPresuDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QPresuDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QPresuDetRENGLON: TFloatField
      FieldName = 'RENGLON'
      Origin = 'RENGLON'
    end
    object QPresuDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Size = 8
    end
    object QPresuDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QPresuDetDETALLE_ADICIONAL: TStringField
      FieldName = 'DETALLE_ADICIONAL'
      Origin = 'DETALLE_ADICIONAL'
      Size = 300
    end
    object QPresuDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object QPresuDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Size = 1
    end
    object QPresuDetDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
    end
    object QPresuDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QPresuDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
    end
    object QPresuDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
    end
    object QPresuDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
    end
    object QPresuDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
      Origin = 'UNITARIO_GRAVADO'
    end
    object QPresuDetIVA_UNITARIO: TFloatField
      FieldName = 'IVA_UNITARIO'
      Origin = 'IVA_UNITARIO'
      Required = True
    end
    object QPresuDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
      Origin = 'UNITARIO_EXENTO'
    end
    object QPresuDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
    end
    object QPresuDetTOTAL_EXENTO: TFloatField
      FieldName = 'TOTAL_EXENTO'
      Origin = 'TOTAL_EXENTO'
      Required = True
    end
    object QPresuDetTOTAL_GRAVADO: TFloatField
      FieldName = 'TOTAL_GRAVADO'
      Origin = 'TOTAL_GRAVADO'
      Required = True
    end
    object QPresuDetIVA_TOTAL: TFloatField
      FieldName = 'IVA_TOTAL'
      Origin = 'IVA_TOTAL'
      Required = True
    end
    object QPresuDetTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QPresuDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
    end
    object QPresuDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Origin = 'TIPOIVA_TASA'
    end
    object QPresuDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
      Origin = 'IVA_SOBRETASA'
    end
    object QPresuDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Origin = 'TIPOIVA_SOBRETASA'
    end
    object QPresuDetSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QPresuDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object QPresuDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object QPresuDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      Size = 1
    end
    object QPresuDetMARGEN: TFloatField
      FieldName = 'MARGEN'
      Origin = 'MARGEN'
    end
    object QPresuDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Size = 1
    end
    object QPresuDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Origin = 'ID_MONEDA'
      Required = True
    end
    object QPresuDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      Required = True
    end
    object QPresuDetACEPTADO: TStringField
      FieldName = 'ACEPTADO'
      Origin = 'ACEPTADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QPresuDetNOTAS: TStringField
      FieldName = 'NOTAS'
      Origin = 'NOTAS'
      Size = 100
    end
    object QPresuDetCPBTESALIDA_ID: TIntegerField
      FieldName = 'CPBTESALIDA_ID'
      Origin = 'CPBTESALIDA_ID'
    end
    object QPresuDetCPBTESALIDA_TIPO: TStringField
      FieldName = 'CPBTESALIDA_TIPO'
      Origin = 'CPBTESALIDA_TIPO'
      Size = 2
    end
    object QPresuDetCPBTESALIDA_CLASE: TStringField
      FieldName = 'CPBTESALIDA_CLASE'
      Origin = 'CPBTESALIDA_CLASE'
      Size = 2
    end
    object QPresuDetCPBTESALIDA_NROCPBTE: TStringField
      FieldName = 'CPBTESALIDA_NROCPBTE'
      Origin = 'CPBTESALIDA_NROCPBTE'
      Size = 13
    end
    object QPresuDetTIPOIB_TASA: TIntegerField
      FieldName = 'TIPOIB_TASA'
      Origin = 'TIPOIB_TASA'
      Required = True
    end
    object QPresuDetIB_TASA: TFloatField
      FieldName = 'IB_TASA'
      Origin = 'IB_TASA'
      Required = True
    end
    object QPresuDetGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      Origin = 'GRAVADO_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QPresuDetITEM_NRO: TIntegerField
      FieldName = 'ITEM_NRO'
      Origin = 'ITEM_NRO'
      Required = True
    end
    object QPresuDetMUESTRASIGNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASIGNO'
      Origin = 'SIGNO'
      ProviderFlags = []
      Size = 5
    end
    object QPresuDetMUESTRACODALTERNATIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACODALTERNATIVO'
      Origin = 'REEMPLAZO_STK'
      ProviderFlags = []
    end
    object QPresuDetMUESTRADEPRODUCC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADEPRODUCC'
      Origin = 'DEPRODUCCION'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object QPresuDetITEMCANTIDAD: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMCANTIDAD'
      Origin = 'ITEMCANTIDAD'
      ProviderFlags = []
    end
    object QPresuDetITEMGRAVADO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMGRAVADO'
      Origin = 'ITEMGRAVADO'
      ProviderFlags = []
    end
    object QPresuDetITEMEXENTO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMEXENTO'
      Origin = 'ITEMEXENTO'
      ProviderFlags = []
    end
    object QPresuDetITEMIVA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMIVA'
      Origin = 'ITEMIVA'
      ProviderFlags = []
    end
    object QPresuDetITEMTOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'ITEMTOTAL'
      Origin = 'ITEMTOTAL'
      ProviderFlags = []
    end
    object QPresuDetITMEDETALLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ITMEDETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 45
    end
    object QPresuDetCANTIDADTOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'CANTIDADTOTAL'
      Origin = 'CANTIDADTOTAL'
      ProviderFlags = []
    end
    object QPresuDetESPECIFICACION: TStringField
      FieldName = 'ESPECIFICACION'
      Origin = 'ESPECIFICACION'
      Size = 45
    end
    object QPresuDetFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object QPresuDetPERCIBE_IVA: TStringField
      FieldName = 'PERCIBE_IVA'
      Origin = 'PERCIBE_IVA'
      FixedChar = True
      Size = 1
    end
    object QPresuDetTASA_PERCEP_IVA: TFloatField
      FieldName = 'TASA_PERCEP_IVA'
      Origin = 'TASA_PERCEP_IVA'
      Required = True
    end
    object QPresuDetID_TASA_PERCEPCION_IVA: TIntegerField
      FieldName = 'ID_TASA_PERCEPCION_IVA'
      Origin = 'ID_TASA_PERCEPCION_IVA'
    end
    object QPresuDetPERCEPCION_IVA_DIFERENCIAL: TStringField
      FieldName = 'PERCEPCION_IVA_DIFERENCIAL'
      Origin = 'PERCEPCION_IVA_DIFERENCIAL'
      FixedChar = True
      Size = 1
    end
    object QPresuDetMUESTRAPRODUCIDOS: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAPRODUCIDOS'
      Origin = 'CANT_ENTREGADA'
      ProviderFlags = []
    end
  end
  object QImpuestoPresu: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'Select * from PresImpuesto Where Id_PresCab= :id')
    Left = 376
    Top = 64
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QImpuestoPresuID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      Origin = 'ID_IMPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QImpuestoPresuID_PRESCAB: TIntegerField
      FieldName = 'ID_PRESCAB'
      Origin = 'ID_PRESCAB'
    end
    object QImpuestoPresuCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
      Origin = 'CODIGO_GRAVAMEN'
    end
    object QImpuestoPresuDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QImpuestoPresuNETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
    end
    object QImpuestoPresuTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object QImpuestoPresuIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
  end
  object QBuscaFcFD: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      
        'select f.id_fc,f.codigo,f.nombre,f.fechavta,f.total from fcvtaca' +
        'b f'
      'where f.letrafac    =:Letra and'
      '      f.sucfac      =:sucfac and'
      '      f.numerofac   =:numfac and'
      '      f.sucursal    =:sucursal and'
      '      ( f.tipocpbte =:tipo ) and'
      '      ( f.clasecpbte=:clase )')
    Left = 24
    Top = 122
    ParamData = <
      item
        Name = 'LETRA'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
        Value = Null
      end
      item
        Name = 'SUCFAC'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end
      item
        Name = 'NUMFAC'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Name = 'CLASE'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end>
    object QBuscaFcFDID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaFcFDCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object QBuscaFcFDNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QBuscaFcFDFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
      Required = True
    end
    object QBuscaFcFDTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
    end
  end
  object QFPago_TC: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      
        'select Max(f.id_fpago) as FPago from Formapago f where f.id_tpag' +
        'o=4')
    Left = 472
    Top = 69
    object QFPago_TCFPAGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FPAGO'
      Origin = 'FPAGO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QStock: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select S.*, Ru.Detalle_Rubro as MuestraRubro,'
      '      Sub.Detalle_SubRubro as MuestraSubRubro,'
      '      M.Descripcion_Marca as MuestraMarca,'
      '      Ta.Descripcion as MuestraTasa,'
      '      ta.tasa as MuestraTasaPorcentaje,'
      '      STa.Descripcion as MuestraSobreTasa,'
      '      sta.tasa as MuestraSobreTasaProcentaje,'
      '      ib.tasa as MuestraTasaIB,'
      '      tpc.detalle as MuestraTablaPrecioDetalle,'
      '      tpd.precio1 as MuestraTablaPrecio1,'
      '      tpd.precio1 as MuestraTablaPrecio2,'
      '      gcta.detalle as MuestraCtaGasto,'
      '      grub.detalle as MuestraRubroGasto'
      '    from stock s'
      
        '      left join tabla_precioscab tpc on tpc.id = s.id_tablapreci' +
        'os'
      
        '      left join tabla_preciosdet tpd on tpd.id = s.id_tablapreci' +
        'osdetalle'
      '      left join rubros ru on s.rubro_stk = ru.Codigo_rubro'
      
        '      left join subrubros sub on s.subrubro_stk = sub.Codigo_sub' +
        'rubro'
      '      left join marcas m on s.marca_stk = m.marca_stk'
      '      left join gravamen ta on s.tasa_iva = ta.codigo'
      '      left join gravamen Sta on s.Sobretasa_iva = Sta.codigo'
      '      left join percepib ib on s.tasa_ib = ib.codigo'
      
        '      left join gastos_cuentas gcta on gcta.codigo=s.rubro_cta_g' +
        'asto'
      '      left join gastos_rubros grub on grub.codigo=s.rubro_gasto'
      ''
      'where S.Codigo_Stk = :codigo')
    Left = 24
    Top = 314
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QStockDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object QStockDETALLE_STK_ADICIONAL: TStringField
      FieldName = 'DETALLE_STK_ADICIONAL'
      Origin = 'DETALLE_STK_ADICIONAL'
      Size = 300
    end
    object QStockCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'CODIGO_BARRAS'
      Size = 25
    end
    object QStockRUBRO_STK: TStringField
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      Required = True
      Size = 3
    end
    object QStockSUBRUBRO_STK: TStringField
      FieldName = 'SUBRUBRO_STK'
      Origin = 'SUBRUBRO_STK'
      Required = True
      Size = 5
    end
    object QStockMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Origin = 'MARCA_STK'
      Size = 4
    end
    object QStockTASA_IVA: TIntegerField
      FieldName = 'TASA_IVA'
      Origin = 'TASA_IVA'
      Required = True
    end
    object QStockSOBRETASA_IVA: TIntegerField
      FieldName = 'SOBRETASA_IVA'
      Origin = 'SOBRETASA_IVA'
    end
    object QStockCOSTO_GRAVADO_STK: TFloatField
      FieldName = 'COSTO_GRAVADO_STK'
      Origin = 'COSTO_GRAVADO_STK'
      Required = True
    end
    object QStockCOSTO_IVA: TFloatField
      FieldName = 'COSTO_IVA'
      Origin = 'COSTO_IVA'
      Required = True
    end
    object QStockCOSTO_FINAL: TFloatField
      FieldName = 'COSTO_FINAL'
      Origin = 'COSTO_FINAL'
      Required = True
    end
    object QStockCOSTO_EXENTO_STK: TFloatField
      FieldName = 'COSTO_EXENTO_STK'
      Origin = 'COSTO_EXENTO_STK'
      Required = True
    end
    object QStockCOSTO_TOTAL_STK: TFloatField
      FieldName = 'COSTO_TOTAL_STK'
      Origin = 'COSTO_TOTAL_STK'
      Required = True
    end
    object QStockREEMPLAZO_STK: TStringField
      FieldName = 'REEMPLAZO_STK'
      Origin = 'REEMPLAZO_STK'
      Required = True
    end
    object QStockFIJACION_PRECIO_GRAVADO: TFloatField
      FieldName = 'FIJACION_PRECIO_GRAVADO'
      Origin = 'FIJACION_PRECIO_GRAVADO'
      Required = True
    end
    object QStockFIJACION_PRECIO_IVA: TFloatField
      FieldName = 'FIJACION_PRECIO_IVA'
      Origin = 'FIJACION_PRECIO_IVA'
      Required = True
    end
    object QStockFIJACION_PRECIO_FINAL: TFloatField
      FieldName = 'FIJACION_PRECIO_FINAL'
      Origin = 'FIJACION_PRECIO_FINAL'
      Required = True
    end
    object QStockFIJACION_PRECIO_EXENTO: TFloatField
      FieldName = 'FIJACION_PRECIO_EXENTO'
      Origin = 'FIJACION_PRECIO_EXENTO'
      Required = True
    end
    object QStockFIJACION_PRECIO_TOTAL: TFloatField
      FieldName = 'FIJACION_PRECIO_TOTAL'
      Origin = 'FIJACION_PRECIO_TOTAL'
      Required = True
    end
    object QStockUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object QStockCONTROLASTOCK: TStringField
      FieldName = 'CONTROLASTOCK'
      Origin = 'CONTROLASTOCK'
      Required = True
      Size = 1
    end
    object QStockCODIGO_PROVEEDOR: TStringField
      FieldName = 'CODIGO_PROVEEDOR'
      Origin = 'CODIGO_PROVEEDOR'
      Size = 10
    end
    object QStockCLASE_ARTICULO: TIntegerField
      FieldName = 'CLASE_ARTICULO'
      Origin = 'CLASE_ARTICULO'
    end
    object QStockMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      Size = 1
    end
    object QStockCON_IMP_INT: TStringField
      FieldName = 'CON_IMP_INT'
      Origin = 'CON_IMP_INT'
      Size = 1
    end
    object QStockIMPUESTO_INTERNOS: TFloatField
      FieldName = 'IMPUESTO_INTERNOS'
      Origin = 'IMPUESTO_INTERNOS'
    end
    object QStockGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      Origin = 'GRAVADO_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockTASA_IB: TIntegerField
      FieldName = 'TASA_IB'
      Origin = 'TASA_IB'
      Required = True
    end
    object QStockACTUALIZACOSTO: TStringField
      FieldName = 'ACTUALIZACOSTO'
      Origin = 'ACTUALIZACOSTO'
      FixedChar = True
      Size = 1
    end
    object QStockDEPRODUCCION: TStringField
      FieldName = 'DEPRODUCCION'
      Origin = 'DEPRODUCCION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockPRODUCCIONDIRECTA: TStringField
      FieldName = 'PRODUCCIONDIRECTA'
      Origin = 'PRODUCCIONDIRECTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockUNIDAD_COMPRA: TStringField
      FieldName = 'UNIDAD_COMPRA'
      Origin = 'UNIDAD_COMPRA'
      Size = 3
    end
    object QStockCONTENIDO_COMPRA: TFloatField
      FieldName = 'CONTENIDO_COMPRA'
      Origin = 'CONTENIDO_COMPRA'
      Required = True
    end
    object QStockCONTROL_SERIE: TStringField
      FieldName = 'CONTROL_SERIE'
      Origin = 'CONTROL_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockUSA_CODIGOBARRA: TStringField
      FieldName = 'USA_CODIGOBARRA'
      Origin = 'USA_CODIGOBARRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockUNIDAD_ULTIMAUSADA: TStringField
      FieldName = 'UNIDAD_ULTIMAUSADA'
      Origin = 'UNIDAD_ULTIMAUSADA'
      Size = 3
    end
    object QStockID_TABLAPRECIOS: TIntegerField
      FieldName = 'ID_TABLAPRECIOS'
      Origin = 'ID_TABLAPRECIOS'
    end
    object QStockID_TABLAPRECIOSDETALLE: TIntegerField
      FieldName = 'ID_TABLAPRECIOSDETALLE'
      Origin = 'ID_TABLAPRECIOSDETALLE'
    end
    object QStockCODIGO_PRECIO: TIntegerField
      FieldName = 'CODIGO_PRECIO'
      Origin = 'CODIGO_PRECIO'
    end
    object QStockCOSTO_GRAVADO_SOMBRA: TFloatField
      FieldName = 'COSTO_GRAVADO_SOMBRA'
      Origin = 'COSTO_GRAVADO_SOMBRA'
      Required = True
    end
    object QStockCOSTO_EXENTO_SOMBRA: TFloatField
      FieldName = 'COSTO_EXENTO_SOMBRA'
      Origin = 'COSTO_EXENTO_SOMBRA'
      Required = True
    end
    object QStockMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object QStockCOSTO_GRAVADO_P: TFloatField
      FieldName = 'COSTO_GRAVADO_P'
      Origin = 'COSTO_GRAVADO_P'
      Required = True
    end
    object QStockCOSTO_EXENTO_P: TFloatField
      FieldName = 'COSTO_EXENTO_P'
      Origin = 'COSTO_EXENTO_P'
      Required = True
    end
    object QStockCOSTO_TOTAL_P: TFloatField
      FieldName = 'COSTO_TOTAL_P'
      Origin = 'COSTO_TOTAL_P'
      Required = True
    end
    object QStockPOSICION: TStringField
      FieldName = 'POSICION'
      Origin = 'POSICION'
      Size = 10
    end
    object QStockPRESENTACION_UNIDAD: TStringField
      FieldName = 'PRESENTACION_UNIDAD'
      Origin = 'PRESENTACION_UNIDAD'
      Size = 3
    end
    object QStockPRESENTACION_CANTIDAD: TFloatField
      FieldName = 'PRESENTACION_CANTIDAD'
      Origin = 'PRESENTACION_CANTIDAD'
      Required = True
    end
    object QStockEDITAPRECIO: TStringField
      FieldName = 'EDITAPRECIO'
      Origin = 'EDITAPRECIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockEDITADETALLE: TStringField
      FieldName = 'EDITADETALLE'
      Origin = 'EDITADETALLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockURL: TStringField
      FieldName = 'URL'
      Origin = 'URL'
      Size = 250
    end
    object QStockCOMANDA: TStringField
      FieldName = 'COMANDA'
      Origin = 'COMANDA'
      FixedChar = True
      Size = 1
    end
    object QStockPORCENTAJE_SOBRECOSTO: TFloatField
      FieldName = 'PORCENTAJE_SOBRECOSTO'
      Origin = 'PORCENTAJE_SOBRECOSTO'
    end
    object QStockRUBRO_GASTO: TStringField
      FieldName = 'RUBRO_GASTO'
      Origin = 'RUBRO_GASTO'
      Required = True
      Size = 3
    end
    object QStockRUBRO_CTA_GASTO: TStringField
      FieldName = 'RUBRO_CTA_GASTO'
      Origin = 'RUBRO_CTA_GASTO'
      Required = True
      Size = 6
    end
    object QStockPUBLICAR_WEB: TStringField
      FieldName = 'PUBLICAR_WEB'
      Origin = 'PUBLICAR_WEB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockGTIA_MESES: TIntegerField
      FieldName = 'GTIA_MESES'
      Origin = 'GTIA_MESES'
      Required = True
    end
    object QStockGARANTIAOFICIAL: TStringField
      FieldName = 'GARANTIAOFICIAL'
      Origin = 'GARANTIAOFICIAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockADICIONAL_SOBRECOSTO: TFloatField
      FieldName = 'ADICIONAL_SOBRECOSTO'
      Origin = 'ADICIONAL_SOBRECOSTO'
      Required = True
    end
    object QStockIMPRIMIR_LSTPRECIOS: TStringField
      FieldName = 'IMPRIMIR_LSTPRECIOS'
      Origin = 'IMPRIMIR_LSTPRECIOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockCONTROL_TRAZABILIDAD: TStringField
      FieldName = 'CONTROL_TRAZABILIDAD'
      Origin = 'CONTROL_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockIVA_MODIFICADO: TStringField
      FieldName = 'IVA_MODIFICADO'
      Origin = 'IVA_MODIFICADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockSIGLAS: TStringField
      FieldName = 'SIGLAS'
      Origin = 'SIGLAS'
      Size = 2
    end
    object QStockPRESENTACION_2_CANT: TFloatField
      FieldName = 'PRESENTACION_2_CANT'
      Origin = 'PRESENTACION_2_CANT'
      Required = True
    end
    object QStockTASA_MANUFACTURA: TStringField
      FieldName = 'TASA_MANUFACTURA'
      Origin = 'TASA_MANUFACTURA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockPLU: TStringField
      FieldName = 'PLU'
      Origin = 'PLU'
      Size = 5
    end
    object QStockACOPIABLE: TStringField
      FieldName = 'ACOPIABLE'
      Origin = 'ACOPIABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockCIKO_TIPO: TIntegerField
      FieldName = 'CIKO_TIPO'
      Origin = 'CIKO_TIPO'
      Required = True
    end
    object QStockTIPOADICIONAL: TStringField
      FieldName = 'TIPOADICIONAL'
      Origin = 'TIPOADICIONAL'
      Size = 10
    end
    object QStockLARGO_1: TFloatField
      FieldName = 'LARGO_1'
      Origin = 'LARGO_1'
      Required = True
    end
    object QStockLARGO_2: TFloatField
      FieldName = 'LARGO_2'
      Origin = 'LARGO_2'
      Required = True
    end
    object QStockLARGO_3: TFloatField
      FieldName = 'LARGO_3'
      Origin = 'LARGO_3'
      Required = True
    end
    object QStockROTURA_1: TFloatField
      FieldName = 'ROTURA_1'
      Origin = 'ROTURA_1'
      Required = True
    end
    object QStockROTURA_2: TFloatField
      FieldName = 'ROTURA_2'
      Origin = 'ROTURA_2'
      Required = True
    end
    object QStockCIMA: TFloatField
      FieldName = 'CIMA'
      Origin = 'CIMA'
      Required = True
    end
    object QStockBASE: TFloatField
      FieldName = 'BASE'
      Origin = 'BASE'
      Required = True
    end
    object QStockVOLUMEN: TFloatField
      FieldName = 'VOLUMEN'
      Origin = 'VOLUMEN'
      Required = True
    end
    object QStockPESO_CALCULADO: TFloatField
      FieldName = 'PESO_CALCULADO'
      Origin = 'PESO_CALCULADO'
      Required = True
    end
    object QStockPESO: TFloatField
      FieldName = 'PESO'
      Origin = 'PESO'
      Required = True
    end
    object QStockDIAMETRO_OLLA: TFloatField
      FieldName = 'DIAMETRO_OLLA'
      Origin = 'DIAMETRO_OLLA'
      Required = True
    end
    object QStockALTO_ACC: TFloatField
      FieldName = 'ALTO_ACC'
      Origin = 'ALTO_ACC'
      Required = True
    end
    object QStockMODO_IVA: TStringField
      FieldName = 'MODO_IVA'
      Origin = 'MODO_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockMUESTRARUBRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRARUBRO'
      Origin = 'DETALLE_RUBRO'
      ProviderFlags = []
      Size = 35
    end
    object QStockMUESTRASUBRUBRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      ProviderFlags = []
      Size = 45
    end
    object QStockMUESTRAMARCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAMARCA'
      Origin = 'DESCRIPCION_MARCA'
      ProviderFlags = []
      Size = 25
    end
    object QStockMUESTRATASA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATASA'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 15
    end
    object QStockMUESTRATASAPORCENTAJE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATASAPORCENTAJE'
      Origin = 'TASA'
      ProviderFlags = []
    end
    object QStockMUESTRASOBRETASA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASOBRETASA'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 15
    end
    object QStockMUESTRASOBRETASAPROCENTAJE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASOBRETASAPROCENTAJE'
      Origin = 'TASA'
      ProviderFlags = []
    end
    object QStockMUESTRATASAIB: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATASAIB'
      Origin = 'TASA'
      ProviderFlags = []
    end
    object QStockMUESTRATABLAPRECIODETALLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATABLAPRECIODETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 40
    end
    object QStockMUESTRATABLAPRECIO1: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATABLAPRECIO1'
      Origin = 'PRECIO1'
      ProviderFlags = []
    end
    object QStockMUESTRATABLAPRECIO2: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATABLAPRECIO2'
      Origin = 'PRECIO1'
      ProviderFlags = []
    end
    object QStockFUAP: TSQLTimeStampField
      FieldName = 'FUAP'
      Origin = 'FUAP'
    end
    object QStockFECHA_ALTA: TSQLTimeStampField
      FieldName = 'FECHA_ALTA'
      Origin = 'FECHA_ALTA'
    end
    object QStockFECHA_ACT_SOMBRA: TSQLTimeStampField
      FieldName = 'FECHA_ACT_SOMBRA'
      Origin = 'FECHA_ACT_SOMBRA'
    end
    object QStockFECHA_ULTIMAVTA: TSQLTimeStampField
      FieldName = 'FECHA_ULTIMAVTA'
      Origin = 'FECHA_ULTIMAVTA'
    end
    object QStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField
      FieldName = 'FECHA_ULTIMA_COMPRA'
      Origin = 'FECHA_ULTIMA_COMPRA'
    end
    object QStockMUESTRACTAGASTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACTAGASTO'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 50
    end
    object QStockMUESTRARUBROGASTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRARUBROGASTO'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 50
    end
    object QStockPERCIBE_IVA: TStringField
      FieldName = 'PERCIBE_IVA'
      Origin = 'PERCIBE_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockID_TASA_PERCEP_IVA: TIntegerField
      FieldName = 'ID_TASA_PERCEP_IVA'
      Origin = 'ID_TASA_PERCEP_IVA'
      Required = True
    end
    object QStockAPLICA_TASA_DIF: TStringField
      FieldName = 'APLICA_TASA_DIF'
      Origin = 'APLICA_TASA_DIF'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockDISPONIBLE: TStringField
      FieldName = 'DISPONIBLE'
      Origin = 'DISPONIBLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockPLU_SECCION: TStringField
      FieldName = 'PLU_SECCION'
      Origin = 'PLU_SECCION'
      Size = 50
    end
    object QStockPRESENTACION_TOLERANCIA: TFloatField
      FieldName = 'PRESENTACION_TOLERANCIA'
      Origin = 'PRESENTACION_TOLERANCIA'
      Required = True
    end
    object QStockDESCRIPCION_CORTA: TMemoField
      FieldName = 'DESCRIPCION_CORTA'
      Origin = 'DESCRIPCION_CORTA'
      BlobType = ftMemo
    end
    object QStockDESCRIPCION_LARGA: TMemoField
      FieldName = 'DESCRIPCION_LARGA'
      Origin = 'DESCRIPCION_LARGA'
      BlobType = ftMemo
    end
    object QStockCATEGORIAS_WEB: TStringField
      FieldName = 'CATEGORIAS_WEB'
      Origin = 'CATEGORIAS_WEB'
      Size = 100
    end
    object QStockPLU_2: TStringField
      FieldName = 'PLU_2'
      Origin = 'PLU_2'
      Size = 5
    end
    object QStockDETALLE_CORTO: TStringField
      FieldName = 'DETALLE_CORTO'
      Origin = 'DETALLE_CORTO'
      Size = 18
    end
    object QStockARTICULO_VARIABLE: TStringField
      FieldName = 'ARTICULO_VARIABLE'
      Origin = 'ARTICULO_VARIABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockFOB: TSingleField
      FieldName = 'FOB'
      Origin = 'FOB'
    end
    object QStockCODIGO_ART_VARIABLE: TStringField
      FieldName = 'CODIGO_ART_VARIABLE'
      Origin = 'CODIGO_ART_VARIABLE'
      Size = 8
    end
    object QStockDIAS_VENCIMIENTO: TIntegerField
      FieldName = 'DIAS_VENCIMIENTO'
      Origin = 'DIAS_VENCIMIENTO'
    end
    object QStockFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
  end
  object QDepositoStk: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select ds.*,'
      '  d.nombre as MuestraDeposito'
      'from DepositoStk ds'
      '  left join Depositos d on d.id=ds.codigo_deposito'
      'where ds.Codigo_stk = :Codigo'
      'order by ds.codigo_deposito')
    Left = 24
    Top = 222
    ParamData = <
      item
        Position = 1
        Name = 'Codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QDepositoStkID_DEPOSITO: TIntegerField
      FieldName = 'ID_DEPOSITO'
      Origin = 'ID_DEPOSITO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDepositoStkCODIGO_DEPOSITO: TIntegerField
      FieldName = 'CODIGO_DEPOSITO'
      Origin = 'CODIGO_DEPOSITO'
      Required = True
    end
    object QDepositoStkCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object QDepositoStkSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QDepositoStkINICIAL: TFloatField
      FieldName = 'INICIAL'
      Origin = 'INICIAL'
    end
    object QDepositoStkMINIMO: TFloatField
      FieldName = 'MINIMO'
      Origin = 'MINIMO'
    end
    object QDepositoStkMEDIO: TFloatField
      FieldName = 'MEDIO'
      Origin = 'MEDIO'
    end
    object QDepositoStkFISICO: TFloatField
      FieldName = 'FISICO'
      Origin = 'FISICO'
    end
    object QDepositoStkRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
      Required = True
    end
    object QDepositoStkSECTOR: TStringField
      FieldName = 'SECTOR'
      Origin = 'SECTOR'
      Size = 2
    end
    object QDepositoStkUBICACION: TStringField
      FieldName = 'UBICACION'
      Origin = 'UBICACION'
      Size = 3
    end
    object QDepositoStkUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
      Required = True
    end
    object QDepositoStkAVISO_MINIMOSTOCK: TStringField
      FieldName = 'AVISO_MINIMOSTOCK'
      Origin = 'AVISO_MINIMOSTOCK'
      FixedChar = True
      Size = 1
    end
    object QDepositoStkMUESTRADEPOSITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QDepositoStkFUAPRECIOS: TSQLTimeStampField
      FieldName = 'FUAPRECIOS'
      Origin = 'FUAPRECIOS'
    end
    object QDepositoStkFULTAJUSTE: TSQLTimeStampField
      FieldName = 'FULTAJUSTE'
      Origin = 'FULTAJUSTE'
    end
  end
  object QMailing: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from TABLA_TEXTO_mailing')
    Left = 24
    Top = 272
    object QMailingID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMailingTEXTO: TMemoField
      FieldName = 'TEXTO'
      Origin = 'TEXTO'
      BlobType = ftMemo
    end
  end
  object DSPMailing: TDataSetProvider
    DataSet = QMailing
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 100
    Top = 271
  end
  object CDSMailing: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMailing'
    Left = 176
    Top = 266
    object CDSMailingID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSMailingTEXTO: TMemoField
      FieldName = 'TEXTO'
      BlobType = ftMemo
    end
  end
  object QHayVencimientos: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      
        'select v.id, v.asunto, v.importe, v.fecha_incio, v.fecha_finaliz' +
        'acion from  vencimientos v'
      'where ( v.avisa_inicio between :desde-5 and :desde+5)'
      '           and v.finalizado<>'#39'S'#39)
    Left = 824
    Top = 213
    ParamData = <
      item
        Position = 1
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object QHayFiltros: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      
        'select (count(*) + (select count(*) from tabla_cpbte_cccomp_cab)' +
        ') as Cant from tabla_cpbte_ccvta_cab')
    Left = 664
    Top = 360
  end
  object QComprobantePorDefectoPorUsuario: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select cpbte.id_comprobante from comprobantes_usuarios c'
      
        'left join comprobantes cpbte on cpbte.id_comprobante=c.id_compro' +
        'bante  where'
      'cpbte.tipo_comprob=:tipo and'
      'cpbte.compra_venta=:compraventa and '
      'cpbte.Sucursal=:sucursal and '
      'cpbte.desgloza_iva=:DesglozaIva and c.id_usuario=:usuario and'
      'cpbte.defecto='#39'S'#39)
    Left = 664
    Top = 264
    ParamData = <
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
        Value = Null
      end
      item
        Name = 'COMPRAVENTA'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DESGLOZAIVA'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Name = 'USUARIO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QComprobantePorDefectoPorUsuarioID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
    end
  end
  object QHayChequesAlCobro: TFDQuery
    Connection = fdcGestion
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
      end
      item
        SourceDataType = dtFmtBCD
        TargetDataType = dtDouble
      end>
    SQL.Strings = (
      'select ch.origen,ch.numero, ch.importe from cheque_tercero ch'
      
        'where ch.disponible='#39'S'#39' and ch.fecha_cobro between :desde and :h' +
        'asta')
    Left = 824
    Top = 260
    ParamData = <
      item
        Position = 1
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 2
        Name = 'hasta'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  object QHayVtosTransporte: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select v.motivo,t.descripcion from transp_propio_venci v'
      'left join transp_propio t on t.id=v.id_transporte'
      'where v.estado='#39'N'#39' and v.fechavto between :desde and :hasta')
    Left = 792
    Top = 315
    ParamData = <
      item
        Position = 1
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object QBuscarCAE: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select c.id_fc from fcvtacab c where c.cae = :nrocae')
    Left = 792
    Top = 370
    ParamData = <
      item
        Name = 'NROCAE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
        Value = Null
      end>
    object QBuscarCAEID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object RemoteDBDatabase: TRemoteDBDatabase
    Connected = False
    ServerUri = 'http://elcondor-mdp.ddns.net:2001/tms/remotedb'
    UserName = 'remotedb'
    Password = 'business'
    Left = 840
    Top = 32
  end
  object XQRubros: TXDataset
    Database = RemoteDBDatabase
    SQL.Strings = (
      'select * from  rubros')
    Params = <>
    Left = 1008
    Top = 8
  end
  object XQSubRubros: TXDataset
    Database = RemoteDBDatabase
    SQL.Strings = (
      'select * from  Subrubros')
    Params = <>
    Left = 944
    Top = 64
  end
  object XQArticulos: TXDataset
    Database = RemoteDBDatabase
    SQL.Strings = (
      'select * from  Stock')
    Params = <>
    Left = 1008
    Top = 64
  end
  object XQListaPrecio: TXDataset
    Database = RemoteDBDatabase
    SQL.Strings = (
      'select * from Listaprecioespecialart')
    Params = <>
    Left = 1080
    Top = 8
  end
  object XQCodigoBarra: TXDataset
    Database = RemoteDBDatabase
    SQL.Strings = (
      'select cb.* from  codigobarra cb ')
    Params = <>
    Left = 1080
    Top = 64
  end
  object XQMarcas: TXDataset
    Database = RemoteDBDatabase
    SQL.Strings = (
      'select * from  Marcas')
    Params = <>
    Left = 944
    Top = 8
  end
  object QGravarNroRto_Factura: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      
        'update fcvtacab f set f.idremito = :id_rto , f.nrorto = :numero ' +
        'where f.id_fc = :id_fc')
    Left = 792
    Top = 448
    ParamData = <
      item
        Name = 'ID_RTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Name = 'ID_FC'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QStockPrecio: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from PRECIO_VENTA(:codigo,:lista,:deposito,:sucursal)')
    Left = 376
    Top = 401
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end
      item
        Name = 'LISTA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DEPOSITO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QStockPrecioDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
    end
    object QStockPrecioCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
    end
    object QStockPrecioPRECIO: TFloatField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
    end
    object QStockPrecioCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
    end
    object QStockPrecioCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
    end
  end
  object QPercepcionIva: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from FcCompPercepcionIVA where Id_FcCompCab=:id')
    Left = 1086
    Top = 399
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QPercepcionIvaID_PERCEPCION: TIntegerField
      FieldName = 'ID_PERCEPCION'
      Origin = 'ID_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPercepcionIvaCODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      Origin = 'CODIGO_PERCEPCION'
      Required = True
    end
    object QPercepcionIvaDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QPercepcionIvaID_FCCOMPCAB: TIntegerField
      FieldName = 'ID_FCCOMPCAB'
      Origin = 'ID_FCCOMPCAB'
      Required = True
    end
    object QPercepcionIvaNETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
    end
    object QPercepcionIvaTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object QPercepcionIvaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QPercepcionIvaCODIGOREGIMEN: TIntegerField
      FieldName = 'CODIGOREGIMEN'
      Origin = 'CODIGOREGIMEN'
    end
  end
  object QPercepcionIB: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from FcCompPercepcionIB where Id_FcCompCab=:id')
    Left = 1086
    Top = 447
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QPercepcionIBID_PERCEPCION: TIntegerField
      FieldName = 'ID_PERCEPCION'
      Origin = 'ID_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPercepcionIBCODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      Origin = 'CODIGO_PERCEPCION'
      Required = True
    end
    object QPercepcionIBDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QPercepcionIBID_FCCOMPCAB: TIntegerField
      FieldName = 'ID_FCCOMPCAB'
      Origin = 'ID_FCCOMPCAB'
      Required = True
    end
    object QPercepcionIBNETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
    end
    object QPercepcionIBTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object QPercepcionIBIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QPercepcionIBJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
      Origin = 'JURIDICION'
    end
  end
  object QPersonal: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      
        'select p.cargo,p.categoria,p.ctacontable,p.domicilio,p.estado_ci' +
        'vil,p.autorizaoc,p.sectordecompra,'
      
        '       p.fecha_ingreso,p.fecha_nacimiento,p.codigo,p.localidad,p' +
        '.nombre,p.telefono_1,p.mododependencia,'
      
        '       p.telefono_2,c.detalle as MuestraCargo, ct.detalle as Mue' +
        'straCategoria,'
      
        '       cp.Detalle_Postal as MuestraLocalidad,p.ValorHora,p.corre' +
        'o,p.vendedor,p.cobrador,'
      
        '       cp.codigo_postal as MuestraCPostal,p.comision,p.politicac' +
        'omision,p.activo,p.sucursal,p.cuil,dv.id_deposito as MuestraDepo' +
        'sito,'
      
        '       p.codigo_reloj,p.legajo,p.afiliado,p.deposito,p.sector_pr' +
        'oduccion from personal p'
      'left join cargo c on c.id=p.cargo'
      'left join personal_categoria ct on ct.id=p.categoria'
      'left join c_postal cp on cp.id_Postal=p.localidad'
      'left join deposito_vendedor dv on dv.vendedor=p.codigo'
      ''
      'where p.codigo=:codigo'
      ' ')
    Left = 557
    Top = 305
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QPersonalCARGO: TIntegerField
      FieldName = 'CARGO'
      Origin = 'CARGO'
    end
    object QPersonalCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
    end
    object QPersonalCTACONTABLE: TIntegerField
      FieldName = 'CTACONTABLE'
      Origin = 'CTACONTABLE'
    end
    object QPersonalDOMICILIO: TStringField
      FieldName = 'DOMICILIO'
      Origin = 'DOMICILIO'
      Size = 50
    end
    object QPersonalESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      Origin = 'ESTADO_CIVIL'
      FixedChar = True
      Size = 1
    end
    object QPersonalAUTORIZAOC: TStringField
      FieldName = 'AUTORIZAOC'
      Origin = 'AUTORIZAOC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QPersonalSECTORDECOMPRA: TStringField
      FieldName = 'SECTORDECOMPRA'
      Origin = 'SECTORDECOMPRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QPersonalFECHA_INGRESO: TSQLTimeStampField
      FieldName = 'FECHA_INGRESO'
      Origin = 'FECHA_INGRESO'
    end
    object QPersonalFECHA_NACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHA_NACIMIENTO'
      Origin = 'FECHA_NACIMIENTO'
    end
    object QPersonalCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QPersonalLOCALIDAD: TIntegerField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
    end
    object QPersonalNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
    object QPersonalTELEFONO_1: TStringField
      FieldName = 'TELEFONO_1'
      Origin = 'TELEFONO_1'
      Size = 15
    end
    object QPersonalMODODEPENDENCIA: TStringField
      FieldName = 'MODODEPENDENCIA'
      Origin = 'MODODEPENDENCIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QPersonalTELEFONO_2: TStringField
      FieldName = 'TELEFONO_2'
      Origin = 'TELEFONO_2'
      Size = 15
    end
    object QPersonalMUESTRACARGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACARGO'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 30
    end
    object QPersonalMUESTRACATEGORIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACATEGORIA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 30
    end
    object QPersonalMUESTRALOCALIDAD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRALOCALIDAD'
      Origin = 'DETALLE_POSTAL'
      ProviderFlags = []
      Size = 25
    end
    object QPersonalVALORHORA: TFloatField
      FieldName = 'VALORHORA'
      Origin = 'VALORHORA'
    end
    object QPersonalCORREO: TStringField
      FieldName = 'CORREO'
      Origin = 'CORREO'
      Size = 100
    end
    object QPersonalVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QPersonalCOBRADOR: TStringField
      FieldName = 'COBRADOR'
      Origin = 'COBRADOR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QPersonalMUESTRACPOSTAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACPOSTAL'
      Origin = 'CODIGO_POSTAL'
      ProviderFlags = []
      Size = 8
    end
    object QPersonalCOMISION: TFloatField
      FieldName = 'COMISION'
      Origin = 'COMISION'
      Required = True
    end
    object QPersonalPOLITICACOMISION: TIntegerField
      FieldName = 'POLITICACOMISION'
      Origin = 'POLITICACOMISION'
    end
    object QPersonalACTIVO: TStringField
      FieldName = 'ACTIVO'
      Origin = 'ACTIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QPersonalSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QPersonalCUIL: TStringField
      FieldName = 'CUIL'
      Origin = 'CUIL'
      Required = True
      Size = 13
    end
    object QPersonalMUESTRADEPOSITO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'ID_DEPOSITO'
      ProviderFlags = []
    end
    object QPersonalCODIGO_RELOJ: TStringField
      FieldName = 'CODIGO_RELOJ'
      Origin = 'CODIGO_RELOJ'
      Size = 10
    end
    object QPersonalLEGAJO: TStringField
      FieldName = 'LEGAJO'
      Origin = 'LEGAJO'
      Size = 15
    end
    object QPersonalAFILIADO: TStringField
      FieldName = 'AFILIADO'
      Origin = 'AFILIADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QPersonalDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QPersonalSECTOR_PRODUCCION: TIntegerField
      FieldName = 'SECTOR_PRODUCCION'
      Origin = 'SECTOR_PRODUCCION'
      Required = True
    end
  end
  object QCtaGasto: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from Gastos_Cuentas'
      'where codigo=:codigo and ( codigo_rubro=:rubro or :rubro='#39'***'#39')')
    Left = 24
    Top = 456
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 2
        Name = 'RUBRO'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end>
    object QCtaGastoCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QCtaGastoCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object QCtaGastoDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
    object QCtaGastoEXCLUYE: TStringField
      FieldName = 'EXCLUYE'
      Origin = 'EXCLUYE'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPCtaGasto: TDataSetProvider
    DataSet = QCtaGasto
    Left = 100
    Top = 472
  end
  object CDSCtaGasto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 6
      end
      item
        DataType = ftString
        Name = 'RUBRO'
        ParamType = ptInput
        Size = 3
      end>
    ProviderName = 'DSPCtaGasto'
    Left = 176
    Top = 512
    object CDSCtaGastoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSCtaGastoCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Required = True
      Size = 3
    end
    object CDSCtaGastoDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 50
    end
    object CDSCtaGastoEXCLUYE: TStringField
      FieldName = 'EXCLUYE'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QRubroGasto: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from gastos_rubros where codigo=:codigo')
    Left = 24
    Top = 506
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end>
    object QRubroGastoCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object QRubroGastoDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
  end
  object DSPRubroGasto: TDataSetProvider
    DataSet = QRubroGasto
    Left = 100
    Top = 520
  end
  object CDSRubroGasto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 6
      end>
    ProviderName = 'DSPRubroGasto'
    Left = 176
    Top = 560
    object CDSRubroGastoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 3
    end
    object CDSRubroGastoDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 50
    end
  end
  object QOrdenTrabajoCab: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select OT.*,'
      '  Fp.Detalle as MuestraCondVenta,'
      '  De.Nombre as MuestraDeposito,'
      '  Su.Detalle as MuestraSucursal,'
      '  Ldr.Nombre as MuestraLdr, ins.Detalle as MuestraIva,'
      '  cp.denominacion as MuestraComprobante,'
      '  cp.id_comprobante as Id_TipoComprobante,'
      '  v.nombre as MuestraResponsableOT,'
      '  v2.nombre as MuestraResponsableTurno,'
      '  cpfc.denominacion as MuestraTipoFactura,'
      '  cli.telefono_comercial_1 as MuestraTelefono1,'
      '  cli.telefono_comercial_2 as MuestraTelefono2,'
      '  cli.telefono_celular as MuestraCelular,'
      '  cli.nrodocumento as MuestraNroDoc,'
      '  rm.nrocpbte as MuestraNroAjuste,'
      '  pr.descripcion as MuestraProducto,'
      '  mr.descripcion_marca as MuestraMarcaProducto,'
      '  pr.modelo as MuestraModeloProducto,'
      '  ctp.detalle as MuestraCategoriaProducto'
      'from OrdenTrabajoCab Ot'
      '  left join clientes      cli on cli.codigo=ot.codigo'
      
        '  left join comprobantes cpfc on cpfc.id_comprobante=ot.factura_' +
        'id_comprobante'
      '  left join F_Pago         Fp on Fp.Codigo=Ot.CondicionVta'
      '  left join personal        v on v.codigo=Ot.responsable_ot'
      '  left join personal       v2 on v2.codigo=Ot.responsable_turno'
      '  left join Depositos      De on De.Id=Ot.Deposito'
      '  left join Sucursal       Su on Su.Codigo=Ot.Sucursal'
      '  left join inscripcion   ins on ins.codigo=Ot.TipoIva'
      
        '  left join LdrCliente    Ldr on ((Ldr.Codigo_Cliente=Ot.Codigo)' +
        ' and (Ldr.Codigo_Ldr=Ot.Ldr))'
      '  left join rtomercacab    rm on rm.id_rto=ot.id_ajuste_stock'
      '  left join productos      pr on pr.id=ot.producto'
      '  left join marcas         mr on mr.marca_stk=pr.marca'
      '  left join categoria_productos ctp on ctp.id =pr.id_categoria'
      
        '  left join comprobantes   cp on cp.clase_comprob=Ot.ClaseCpbte ' +
        'and'
      '            cp.letra=Ot.LetraOt and'
      '            cp.sucursal=Ot.sucursal and'
      '            cp.tipo_comprob=Ot.tipocpbte and'
      '            cp.Compra_venta='#39'V'#39
      'where Ot.TipoCpbte= :TipoCpbte and Ot.id_Ot=:id')
    Left = 176
    Top = 131
    ParamData = <
      item
        Position = 1
        Name = 'TipoCpbte'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 2
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QOrdenTrabajoCabID_OT: TIntegerField
      FieldName = 'ID_OT'
      Origin = 'ID_OT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOrdenTrabajoCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QOrdenTrabajoCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QOrdenTrabajoCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QOrdenTrabajoCabDESCRIPCION: TMemoField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      BlobType = ftMemo
    end
    object QOrdenTrabajoCabPRODUCTO: TIntegerField
      FieldName = 'PRODUCTO'
      Origin = 'PRODUCTO'
    end
    object QOrdenTrabajoCabLETRAOT: TStringField
      FieldName = 'LETRAOT'
      Origin = 'LETRAOT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOrdenTrabajoCabSUCOT: TStringField
      FieldName = 'SUCOT'
      Origin = 'SUCOT'
      Size = 4
    end
    object QOrdenTrabajoCabNUMEROOT: TStringField
      FieldName = 'NUMEROOT'
      Origin = 'NUMEROOT'
      Size = 8
    end
    object QOrdenTrabajoCabFECHAINICIO: TSQLTimeStampField
      FieldName = 'FECHAINICIO'
      Origin = 'FECHAINICIO'
      Required = True
    end
    object QOrdenTrabajoCabFECHAESTIMADA: TSQLTimeStampField
      FieldName = 'FECHAESTIMADA'
      Origin = 'FECHAESTIMADA'
    end
    object QOrdenTrabajoCabFECHAESTIMADAFIN: TSQLTimeStampField
      FieldName = 'FECHAESTIMADAFIN'
      Origin = 'FECHAESTIMADAFIN'
    end
    object QOrdenTrabajoCabFECHAFINAL: TSQLTimeStampField
      FieldName = 'FECHAFINAL'
      Origin = 'FECHAFINAL'
    end
    object QOrdenTrabajoCabCONDICIONVTA: TIntegerField
      FieldName = 'CONDICIONVTA'
      Origin = 'CONDICIONVTA'
    end
    object QOrdenTrabajoCabANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOrdenTrabajoCabNRORTO: TStringField
      FieldName = 'NRORTO'
      Origin = 'NRORTO'
    end
    object QOrdenTrabajoCabNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
      Origin = 'NETOGRAV1'
    end
    object QOrdenTrabajoCabNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
      Origin = 'NETOGRAV2'
    end
    object QOrdenTrabajoCabDSTO: TFloatField
      FieldName = 'DSTO'
      Origin = 'DSTO'
    end
    object QOrdenTrabajoCabDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
      Origin = 'DSTOIMPORTE'
    end
    object QOrdenTrabajoCabNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
      Origin = 'NETOEXEN1'
    end
    object QOrdenTrabajoCabNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
      Origin = 'NETOEXEN2'
    end
    object QOrdenTrabajoCabTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QOrdenTrabajoCabDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
    end
    object QOrdenTrabajoCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Origin = 'IMPRESO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOrdenTrabajoCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QOrdenTrabajoCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object QOrdenTrabajoCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      FixedChar = True
      Size = 1
    end
    object QOrdenTrabajoCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      FixedChar = True
      Size = 1
    end
    object QOrdenTrabajoCabRESPONSABLE_OT: TStringField
      FieldName = 'RESPONSABLE_OT'
      Origin = 'RESPONSABLE_OT'
      Size = 6
    end
    object QOrdenTrabajoCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object QOrdenTrabajoCabESTADO: TIntegerField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
    end
    object QOrdenTrabajoCabPRIORIDAD_INICIAL: TSmallintField
      FieldName = 'PRIORIDAD_INICIAL'
      Origin = 'PRIORIDAD_INICIAL'
    end
    object QOrdenTrabajoCabDELTA_PRIORIDAD: TSmallintField
      FieldName = 'DELTA_PRIORIDAD'
      Origin = 'DELTA_PRIORIDAD'
    end
    object QOrdenTrabajoCabPRIORIDAD: TSmallintField
      FieldName = 'PRIORIDAD'
      Origin = 'PRIORIDAD'
    end
    object QOrdenTrabajoCabENTREGADO: TStringField
      FieldName = 'ENTREGADO'
      Origin = 'ENTREGADO'
      FixedChar = True
      Size = 1
    end
    object QOrdenTrabajoCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object QOrdenTrabajoCabLDR: TIntegerField
      FieldName = 'LDR'
      Origin = 'LDR'
    end
    object QOrdenTrabajoCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QOrdenTrabajoCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QOrdenTrabajoCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object QOrdenTrabajoCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Origin = 'TIPOIVA'
    end
    object QOrdenTrabajoCabCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QOrdenTrabajoCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QOrdenTrabajoCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object QOrdenTrabajoCabZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'ZONA'
    end
    object QOrdenTrabajoCabFACTURA_ID_COMPROBANTE: TIntegerField
      FieldName = 'FACTURA_ID_COMPROBANTE'
      Origin = 'FACTURA_ID_COMPROBANTE'
    end
    object QOrdenTrabajoCabFACTURANRO: TStringField
      FieldName = 'FACTURANRO'
      Origin = 'FACTURANRO'
      Size = 13
    end
    object QOrdenTrabajoCabFACTURA_ID: TIntegerField
      FieldName = 'FACTURA_ID'
      Origin = 'FACTURA_ID'
    end
    object QOrdenTrabajoCabFACTURA_TIPO: TStringField
      FieldName = 'FACTURA_TIPO'
      Origin = 'FACTURA_TIPO'
      Size = 2
    end
    object QOrdenTrabajoCabFACTURA_CLASE: TStringField
      FieldName = 'FACTURA_CLASE'
      Origin = 'FACTURA_CLASE'
      Size = 2
    end
    object QOrdenTrabajoCabFECHAFACTURA: TSQLTimeStampField
      FieldName = 'FECHAFACTURA'
      Origin = 'FECHAFACTURA'
    end
    object QOrdenTrabajoCabRESPONSABLE_TURNO: TStringField
      FieldName = 'RESPONSABLE_TURNO'
      Origin = 'RESPONSABLE_TURNO'
      Size = 6
    end
    object QOrdenTrabajoCabARCHIVADA: TStringField
      FieldName = 'ARCHIVADA'
      Origin = 'ARCHIVADA'
      FixedChar = True
      Size = 1
    end
    object QOrdenTrabajoCabRECLAMADA: TStringField
      FieldName = 'RECLAMADA'
      Origin = 'RECLAMADA'
      FixedChar = True
      Size = 1
    end
    object QOrdenTrabajoCabTOTALHORAS: TSQLTimeStampField
      FieldName = 'TOTALHORAS'
      Origin = 'TOTALHORAS'
    end
    object QOrdenTrabajoCabPUNTOS: TFloatField
      FieldName = 'PUNTOS'
      Origin = 'PUNTOS'
    end
    object QOrdenTrabajoCabOBSERVACION1: TMemoField
      FieldName = 'OBSERVACION1'
      Origin = 'OBSERVACION1'
      BlobType = ftMemo
    end
    object QOrdenTrabajoCabLISTAPRECIO: TIntegerField
      FieldName = 'LISTAPRECIO'
      Origin = 'LISTAPRECIO'
    end
    object QOrdenTrabajoCabMAILENVIADO: TStringField
      FieldName = 'MAILENVIADO'
      Origin = 'MAILENVIADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOrdenTrabajoCabSENIA: TFloatField
      FieldName = 'SENIA'
      Origin = 'SENIA'
      Required = True
    end
    object QOrdenTrabajoCabOT_ANTERIOR_ID: TIntegerField
      FieldName = 'OT_ANTERIOR_ID'
      Origin = 'OT_ANTERIOR_ID'
      Required = True
    end
    object QOrdenTrabajoCabOT_ANTERIOR_NROCPBTE: TStringField
      FieldName = 'OT_ANTERIOR_NROCPBTE'
      Origin = 'OT_ANTERIOR_NROCPBTE'
      Size = 13
    end
    object QOrdenTrabajoCabTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Origin = 'TELEFONO1'
      Size = 10
    end
    object QOrdenTrabajoCabTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Origin = 'TELEFONO2'
      Size = 10
    end
    object QOrdenTrabajoCabCORREOELECTRONICO: TStringField
      FieldName = 'CORREOELECTRONICO'
      Origin = 'CORREOELECTRONICO'
      Size = 100
    end
    object QOrdenTrabajoCabDESCRIPCIONPRODUCTO: TStringField
      FieldName = 'DESCRIPCIONPRODUCTO'
      Origin = 'DESCRIPCIONPRODUCTO'
      Required = True
      Size = 100
    end
    object QOrdenTrabajoCabIDENTIFICADORPRODUCTO: TStringField
      FieldName = 'IDENTIFICADORPRODUCTO'
      Origin = 'IDENTIFICADORPRODUCTO'
      Required = True
      Size = 50
    end
    object QOrdenTrabajoCabMOTIVO_OTRABAJO: TIntegerField
      FieldName = 'MOTIVO_OTRABAJO'
      Origin = 'MOTIVO_OTRABAJO'
      Required = True
    end
    object QOrdenTrabajoCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object QOrdenTrabajoCabTELEFONO_CELULAR: TStringField
      FieldName = 'TELEFONO_CELULAR'
      Origin = 'TELEFONO_CELULAR'
      Size = 11
    end
    object QOrdenTrabajoCabID_AJUSTE_STOCK: TIntegerField
      FieldName = 'ID_AJUSTE_STOCK'
      Origin = 'ID_AJUSTE_STOCK'
      Required = True
    end
    object QOrdenTrabajoCabOBSERVACION2: TMemoField
      FieldName = 'OBSERVACION2'
      Origin = 'OBSERVACION2'
      BlobType = ftMemo
    end
    object QOrdenTrabajoCabPROBLEMA: TMemoField
      FieldName = 'PROBLEMA'
      Origin = 'PROBLEMA'
      BlobType = ftMemo
    end
    object QOrdenTrabajoCabPASSWORD: TStringField
      FieldName = 'PASSWORD'
      Origin = 'PASSWORD'
      Size = 50
    end
    object QOrdenTrabajoCabPATRON: TStringField
      FieldName = 'PATRON'
      Origin = 'PATRON'
      Size = 30
    end
    object QOrdenTrabajoCabMUESTRACONDVENTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACONDVENTA'
      Origin = 'DETALLE'
      ProviderFlags = []
    end
    object QOrdenTrabajoCabMUESTRADEPOSITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object QOrdenTrabajoCabMUESTRASUCURSAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object QOrdenTrabajoCabMUESTRALDR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRALDR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object QOrdenTrabajoCabMUESTRAIVA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAIVA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 15
    end
    object QOrdenTrabajoCabMUESTRACOMPROBANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      Size = 15
    end
    object QOrdenTrabajoCabID_TIPOCOMPROBANTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_TIPOCOMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
    end
    object QOrdenTrabajoCabMUESTRARESPONSABLEOT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRARESPONSABLEOT'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object QOrdenTrabajoCabMUESTRARESPONSABLETURNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRARESPONSABLETURNO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object QOrdenTrabajoCabMUESTRATIPOFACTURA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATIPOFACTURA'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      Size = 15
    end
    object QOrdenTrabajoCabMUESTRATELEFONO1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATELEFONO1'
      Origin = 'TELEFONO_COMERCIAL_1'
      ProviderFlags = []
      Size = 10
    end
    object QOrdenTrabajoCabMUESTRATELEFONO2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATELEFONO2'
      Origin = 'TELEFONO_COMERCIAL_2'
      ProviderFlags = []
      Size = 10
    end
    object QOrdenTrabajoCabMUESTRACELULAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACELULAR'
      Origin = 'TELEFONO_CELULAR'
      ProviderFlags = []
      Size = 11
    end
    object QOrdenTrabajoCabMUESTRANRODOC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANRODOC'
      Origin = 'NRODOCUMENTO'
      ProviderFlags = []
      Size = 15
    end
    object QOrdenTrabajoCabMUESTRANROAJUSTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANROAJUSTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object QOrdenTrabajoCabMUESTRAPRODUCTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAPRODUCTO'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 100
    end
    object QOrdenTrabajoCabMUESTRAMODELOPRODUCTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAMODELOPRODUCTO'
      Origin = 'MODELO'
      ProviderFlags = []
      Size = 50
    end
    object QOrdenTrabajoCabMUESTRACATEGORIAPRODUCTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACATEGORIAPRODUCTO'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 50
    end
    object QOrdenTrabajoCabMUESTRAMARCAPRODUCTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAMARCAPRODUCTO'
      Origin = 'DESCRIPCION_MARCA'
      ProviderFlags = []
      Size = 25
    end
  end
  object QOrdenTrabajoDet: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'Select * from ordentrabajoDet where Id_CabOt= :id ')
    Left = 272
    Top = 165
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QOrdenTrabajoDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOrdenTrabajoDetID_CABOT: TIntegerField
      FieldName = 'ID_CABOT'
      Origin = 'ID_CABOT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOrdenTrabajoDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QOrdenTrabajoDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QOrdenTrabajoDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QOrdenTrabajoDetRENGLON: TFloatField
      FieldName = 'RENGLON'
      Origin = 'RENGLON'
    end
    object QOrdenTrabajoDetFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
      Required = True
    end
    object QOrdenTrabajoDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object QOrdenTrabajoDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QOrdenTrabajoDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object QOrdenTrabajoDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QOrdenTrabajoDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
    end
    object QOrdenTrabajoDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
      Origin = 'UNITARIO_GRAVADO'
    end
    object QOrdenTrabajoDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
      Origin = 'UNITARIO_EXENTO'
    end
    object QOrdenTrabajoDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOrdenTrabajoDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOrdenTrabajoDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
    end
    object QOrdenTrabajoDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Origin = 'TIPOIVA_TASA'
      Required = True
    end
    object QOrdenTrabajoDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
      Origin = 'IVA_SOBRETASA'
    end
    object QOrdenTrabajoDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Origin = 'TIPOIVA_SOBRETASA'
      Required = True
    end
    object QOrdenTrabajoDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
    end
    object QOrdenTrabajoDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
    end
    object QOrdenTrabajoDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
    end
    object QOrdenTrabajoDetDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
    end
    object QOrdenTrabajoDetTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QOrdenTrabajoDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QOrdenTrabajoDetMARGEN: TFloatField
      FieldName = 'MARGEN'
      Origin = 'MARGEN'
    end
    object QOrdenTrabajoDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOrdenTrabajoDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      FixedChar = True
      Size = 1
    end
    object QOrdenTrabajoDetGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      Origin = 'GRAVADO_IB'
      FixedChar = True
      Size = 1
    end
    object QOrdenTrabajoDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      Required = True
    end
    object QOrdenTrabajoDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Origin = 'ID_MONEDA'
      Required = True
    end
    object QOrdenTrabajoDetCON_NROSERIE: TStringField
      FieldName = 'CON_NROSERIE'
      Origin = 'CON_NROSERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QImpuestoOrdenTrabajo: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'Select * from ordentrabajoImpuesto Where Id_OtCab=:id')
    Left = 376
    Top = 112
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QImpuestoOrdenTrabajoID_OTCAB: TIntegerField
      FieldName = 'ID_OTCAB'
      Origin = 'ID_OTCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QImpuestoOrdenTrabajoID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      Origin = 'ID_IMPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QImpuestoOrdenTrabajoCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
      Origin = 'CODIGO_GRAVAMEN'
      Required = True
    end
    object QImpuestoOrdenTrabajoDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QImpuestoOrdenTrabajoNETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
    end
    object QImpuestoOrdenTrabajoTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object QImpuestoOrdenTrabajoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
  end
  object QOrdenTrabajoMovimientos: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from ordentrabajomov where Id_otCab=:id')
    Left = 557
    Top = 170
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QOrdenTrabajoMovimientosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOrdenTrabajoMovimientosID_OTCAB: TIntegerField
      FieldName = 'ID_OTCAB'
      Origin = 'ID_OTCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOrdenTrabajoMovimientosFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QOrdenTrabajoMovimientosDETALLE: TMemoField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      BlobType = ftMemo
    end
    object QOrdenTrabajoMovimientosHORAINICIO: TSQLTimeStampField
      FieldName = 'HORAINICIO'
      Origin = 'HORAINICIO'
    end
    object QOrdenTrabajoMovimientosHORAFINAL: TSQLTimeStampField
      FieldName = 'HORAFINAL'
      Origin = 'HORAFINAL'
    end
    object QOrdenTrabajoMovimientosPRUDUCTO: TIntegerField
      FieldName = 'PRUDUCTO'
      Origin = 'PRUDUCTO'
    end
    object QOrdenTrabajoMovimientosTOTALTIEMPO: TSQLTimeStampField
      FieldName = 'TOTALTIEMPO'
      Origin = 'TOTALTIEMPO'
    end
    object QOrdenTrabajoMovimientosCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 6
    end
    object QOrdenTrabajoMovimientosOPERARIO: TStringField
      FieldName = 'OPERARIO'
      Origin = 'OPERARIO'
      Size = 6
    end
    object QOrdenTrabajoMovimientosMAILENVIADO: TStringField
      FieldName = 'MAILENVIADO'
      Origin = 'MAILENVIADO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QCondVenta: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select CV.*,'
      '  FP.Detalle,'
      '  FP.Dias,'
      '  FP.Descuento as Descuento_FPago'
      'from CondVenta CV'
      '  inner join F_Pago FP on FP.Codigo=CV.CodigoPago'
      'where CV.CodigoCliente= :Codigo  and CV.codigopago=:codigopago')
    Left = 472
    Top = 163
    ParamData = <
      item
        Position = 1
        Name = 'Codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'CodigoPago'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QCondPago: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from condicionespago where id_fc=:id')
    Left = 376
    Top = 160
    ParamData = <
      item
        Position = 1
        Name = 'Codigo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QCondCompra: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select CC.*,'
      'FP.Detalle,'
      'FP.Dias,'
      'FP.Descuento as Descuento_FPago from CondCompra CC'
      'left  join F_Pago FP on FP.Codigo=CC.CodigoPago'
      'where  CC.CodigoProvee = :Codigo'
      'and CC.codigopago=:codigopago')
    Left = 472
    Top = 210
    ParamData = <
      item
        Name = 'Codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'codigopago'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QClientes: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'SELECT C.* ,'
      '  p.telediscado as MuestraTelediscado,'
      '  v.nombre as MuestraVendedor,'
      '  vc.nombre as MuestraCobrador,'
      '  cl.nombre as MuestraCtaCoorporativa,'
      '  g.id as MuestraIDGarante'
      'FROM Clientes C'
      '  left join personal v on v.codigo=c.vendedor'
      '  left join personal vc on vc.codigo=c.cobrador'
      '  left join c_postal p on c.id_cod_postal=p.id_postal'
      '  left join clientes cl on cl.codigo=c.codigo_coorporativo'
      
        '  left join clientes_garantes g on g.codigocliente=c.codigo and ' +
        'g.por_defecto='#39'S'#39
      'where (c.codigo=:codigo)')
    Left = 100
    Top = 223
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
    object QClientesNOMBRE_COMPLETO: TStringField
      FieldName = 'NOMBRE_COMPLETO'
      Origin = 'NOMBRE_COMPLETO'
      Size = 100
    end
    object QClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
    object QClientesDIRECCION_PARTICULAR: TStringField
      FieldName = 'DIRECCION_PARTICULAR'
      Origin = 'DIRECCION_PARTICULAR'
      Size = 35
    end
    object QClientesDIRECCION_COMERCIAL: TStringField
      FieldName = 'DIRECCION_COMERCIAL'
      Origin = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object QClientesTELEFONO_PARTICULAR: TStringField
      FieldName = 'TELEFONO_PARTICULAR'
      Origin = 'TELEFONO_PARTICULAR'
      Size = 10
    end
    object QClientesTELEFONO_COMERCIAL_1: TStringField
      FieldName = 'TELEFONO_COMERCIAL_1'
      Origin = 'TELEFONO_COMERCIAL_1'
      Size = 10
    end
    object QClientesTELEFONO_COMERCIAL_2: TStringField
      FieldName = 'TELEFONO_COMERCIAL_2'
      Origin = 'TELEFONO_COMERCIAL_2'
      Size = 10
    end
    object QClientesTELEFONO_CELULAR: TStringField
      FieldName = 'TELEFONO_CELULAR'
      Origin = 'TELEFONO_CELULAR'
      Size = 11
    end
    object QClientesID_COD_POSTAL: TIntegerField
      FieldName = 'ID_COD_POSTAL'
      Origin = 'ID_COD_POSTAL'
    end
    object QClientesCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QClientesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object QClientesCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Origin = 'CONDICION_IVA'
      Required = True
    end
    object QClientesEMITE_REMITO: TStringField
      FieldName = 'EMITE_REMITO'
      Origin = 'EMITE_REMITO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesEMITE_FACTURA: TStringField
      FieldName = 'EMITE_FACTURA'
      Origin = 'EMITE_FACTURA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesNRO_DE_CUIT: TStringField
      FieldName = 'NRO_DE_CUIT'
      Origin = 'NRO_DE_CUIT'
      Size = 13
    end
    object QClientesACTIVO: TStringField
      FieldName = 'ACTIVO'
      Origin = 'ACTIVO'
      FixedChar = True
      Size = 1
    end
    object QClientesLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
      Origin = 'LIMITE_CREDITO'
    end
    object QClientesSALDOINICIAL: TFloatField
      FieldName = 'SALDOINICIAL'
      Origin = 'SALDOINICIAL'
    end
    object QClientesOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      BlobType = ftMemo
    end
    object QClientesFECHAULTIMACOMPRA: TSQLTimeStampField
      FieldName = 'FECHAULTIMACOMPRA'
      Origin = 'FECHAULTIMACOMPRA'
    end
    object QClientesFECHAALTA: TSQLTimeStampField
      FieldName = 'FECHAALTA'
      Origin = 'FECHAALTA'
    end
    object QClientesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QClientesZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'ZONA'
    end
    object QClientesVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 6
    end
    object QClientesULTIMOPAGO: TSQLTimeStampField
      FieldName = 'ULTIMOPAGO'
      Origin = 'ULTIMOPAGO'
    end
    object QClientesLISTAPRECIOS: TIntegerField
      FieldName = 'LISTAPRECIOS'
      Origin = 'LISTAPRECIOS'
    end
    object QClientesFECHANACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHANACIMIENTO'
      Origin = 'FECHANACIMIENTO'
    end
    object QClientesTIPODOCUMENTO: TSmallintField
      FieldName = 'TIPODOCUMENTO'
      Origin = 'TIPODOCUMENTO'
    end
    object QClientesNRODOCUMENTO: TStringField
      FieldName = 'NRODOCUMENTO'
      Origin = 'NRODOCUMENTO'
      Size = 15
    end
    object QClientesCORREOELECTRONICO: TStringField
      FieldName = 'CORREOELECTRONICO'
      Origin = 'CORREOELECTRONICO'
      Size = 100
    end
    object QClientesCORREOELECTRONICO_2: TStringField
      FieldName = 'CORREOELECTRONICO_2'
      Origin = 'CORREOELECTRONICO_2'
      Size = 100
    end
    object QClientesID_FACTURAPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURAPORDEFECTO'
      Origin = 'ID_FACTURAPORDEFECTO'
    end
    object QClientesID_FACTURACONTADOPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURACONTADOPORDEFECTO'
      Origin = 'ID_FACTURACONTADOPORDEFECTO'
    end
    object QClientesID_NOTADEBITOPORDEFECTO: TIntegerField
      FieldName = 'ID_NOTADEBITOPORDEFECTO'
      Origin = 'ID_NOTADEBITOPORDEFECTO'
    end
    object QClientesID_NOTACREDITOPORDEFECTO: TIntegerField
      FieldName = 'ID_NOTACREDITOPORDEFECTO'
      Origin = 'ID_NOTACREDITOPORDEFECTO'
    end
    object QClientesID_TIKETPORDEFECTO: TIntegerField
      FieldName = 'ID_TIKETPORDEFECTO'
      Origin = 'ID_TIKETPORDEFECTO'
    end
    object QClientesID_RECIBOPORDEFECTO: TIntegerField
      FieldName = 'ID_RECIBOPORDEFECTO'
      Origin = 'ID_RECIBOPORDEFECTO'
    end
    object QClientesTIPOABONO: TStringField
      FieldName = 'TIPOABONO'
      Origin = 'TIPOABONO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesID_PLANTILLA: TIntegerField
      FieldName = 'ID_PLANTILLA'
      Origin = 'ID_PLANTILLA'
      Required = True
    end
    object QClientesPERCIBIR_IB: TStringField
      FieldName = 'PERCIBIR_IB'
      Origin = 'PERCIBIR_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesINSCRIPTO_MULTICONVENIO: TStringField
      FieldName = 'INSCRIPTO_MULTICONVENIO'
      Origin = 'INSCRIPTO_MULTICONVENIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField
      FieldName = 'FECHA_VENCIMI_DDJJ_MULTI'
      Origin = 'FECHA_VENCIMI_DDJJ_MULTI'
    end
    object QClientesCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Origin = 'CONTACTO'
      Size = 50
    end
    object QClientesTELEFONO_CONTACTO: TStringField
      FieldName = 'TELEFONO_CONTACTO'
      Origin = 'TELEFONO_CONTACTO'
      Size = 50
    end
    object QClientesCOBRADOR: TStringField
      FieldName = 'COBRADOR'
      Origin = 'COBRADOR'
      Size = 6
    end
    object QClientesCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
    end
    object QClientesLONGITUD: TStringField
      FieldName = 'LONGITUD'
      Origin = 'LONGITUD'
      Size = 25
    end
    object QClientesLATITUD: TStringField
      FieldName = 'LATITUD'
      Origin = 'LATITUD'
      Size = 25
    end
    object QClientesDIRECCION_CALLE: TStringField
      FieldName = 'DIRECCION_CALLE'
      Origin = 'DIRECCION_CALLE'
      Size = 40
    end
    object QClientesDIRECCION_NUMERO: TStringField
      FieldName = 'DIRECCION_NUMERO'
      Origin = 'DIRECCION_NUMERO'
      Size = 10
    end
    object QClientesDIRECCION_PISO: TStringField
      FieldName = 'DIRECCION_PISO'
      Origin = 'DIRECCION_PISO'
      Size = 10
    end
    object QClientesDIRECCION_DEPTO: TStringField
      FieldName = 'DIRECCION_DEPTO'
      Origin = 'DIRECCION_DEPTO'
      Size = 10
    end
    object QClientesDEUDAMAYOR30: TStringField
      FieldName = 'DEUDAMAYOR30'
      Origin = 'DEUDAMAYOR30'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesDIAS_MAYOR_30: TIntegerField
      FieldName = 'DIAS_MAYOR_30'
      Origin = 'DIAS_MAYOR_30'
    end
    object QClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField
      FieldName = 'FECHA_INCIO_FC_ABONO'
      Origin = 'FECHA_INCIO_FC_ABONO'
    end
    object QClientesMES_ABONOANUAL: TIntegerField
      FieldName = 'MES_ABONOANUAL'
      Origin = 'MES_ABONOANUAL'
    end
    object QClientesFRANQUICIA: TStringField
      FieldName = 'FRANQUICIA'
      Origin = 'FRANQUICIA'
      FixedChar = True
      Size = 1
    end
    object QClientesID_DEPOSITO_FRANQUICIA: TIntegerField
      FieldName = 'ID_DEPOSITO_FRANQUICIA'
      Origin = 'ID_DEPOSITO_FRANQUICIA'
    end
    object QClientesID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
      Origin = 'ID_TRANSPORTE'
    end
    object QClientesIMPRIME_SALDOFACTURA: TStringField
      FieldName = 'IMPRIME_SALDOFACTURA'
      Origin = 'IMPRIME_SALDOFACTURA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCORTAR_SERVICIO: TStringField
      FieldName = 'CORTAR_SERVICIO'
      Origin = 'CORTAR_SERVICIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCON_PLANPAGO: TStringField
      FieldName = 'CON_PLANPAGO'
      Origin = 'CON_PLANPAGO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesDIRECCION_POSTAL: TStringField
      FieldName = 'DIRECCION_POSTAL'
      Origin = 'DIRECCION_POSTAL'
      Size = 35
    end
    object QClientesCALLE_1: TStringField
      FieldName = 'CALLE_1'
      Origin = 'CALLE_1'
      Size = 35
    end
    object QClientesCALLE_2: TStringField
      FieldName = 'CALLE_2'
      Origin = 'CALLE_2'
      Size = 35
    end
    object QClientesVENDER_DE_CTDO: TStringField
      FieldName = 'VENDER_DE_CTDO'
      Origin = 'VENDER_DE_CTDO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesPRESENTO_F8001: TStringField
      FieldName = 'PRESENTO_F8001'
      Origin = 'PRESENTO_F8001'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesDESDE_F8001: TSQLTimeStampField
      FieldName = 'DESDE_F8001'
      Origin = 'DESDE_F8001'
    end
    object QClientesHASTA_F8001: TSQLTimeStampField
      FieldName = 'HASTA_F8001'
      Origin = 'HASTA_F8001'
    end
    object QClientesID_TARJETACREDITO: TIntegerField
      FieldName = 'ID_TARJETACREDITO'
      Origin = 'ID_TARJETACREDITO'
      Required = True
    end
    object QClientesNRO_TARJETA_C: TStringField
      FieldName = 'NRO_TARJETA_C'
      Origin = 'NRO_TARJETA_C'
    end
    object QClientesNRO_SEG_TC: TStringField
      FieldName = 'NRO_SEG_TC'
      Origin = 'NRO_SEG_TC'
      FixedChar = True
      Size = 4
    end
    object QClientesID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
      Required = True
    end
    object QClientesNRO_CTA_BCO: TStringField
      FieldName = 'NRO_CTA_BCO'
      Origin = 'NRO_CTA_BCO'
      Size = 22
    end
    object QClientesCODIGO_COORPORATIVO: TStringField
      FieldName = 'CODIGO_COORPORATIVO'
      Origin = 'CODIGO_COORPORATIVO'
      Size = 6
    end
    object QClientesCUENTA_OPERATIVA: TStringField
      FieldName = 'CUENTA_OPERATIVA'
      Origin = 'CUENTA_OPERATIVA'
      Size = 10
    end
    object QClientesTARJETA_CLIENTE: TStringField
      FieldName = 'TARJETA_CLIENTE'
      Origin = 'TARJETA_CLIENTE'
    end
    object QClientesVENCIMIENTO_TC: TSQLTimeStampField
      FieldName = 'VENCIMIENTO_TC'
      Origin = 'VENCIMIENTO_TC'
    end
    object QClientesFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object QClientesCON_MONITOREO: TStringField
      FieldName = 'CON_MONITOREO'
      Origin = 'CON_MONITOREO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCON_GPRS: TStringField
      FieldName = 'CON_GPRS'
      Origin = 'CON_GPRS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCON_HOSTING: TStringField
      FieldName = 'CON_HOSTING'
      Origin = 'CON_HOSTING'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCOMUNITARIO: TStringField
      FieldName = 'COMUNITARIO'
      Origin = 'COMUNITARIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesID_PRESTADOR: TIntegerField
      FieldName = 'ID_PRESTADOR'
      Origin = 'ID_PRESTADOR'
    end
    object QClientesMES_ADICIONAL: TIntegerField
      FieldName = 'MES_ADICIONAL'
      Origin = 'MES_ADICIONAL'
    end
    object QClientesMES_SEMESTRAL: TIntegerField
      FieldName = 'MES_SEMESTRAL'
      Origin = 'MES_SEMESTRAL'
    end
    object QClientesMOROSO: TStringField
      FieldName = 'MOROSO'
      Origin = 'MOROSO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesPLANTILLA_CIVA: TStringField
      FieldName = 'PLANTILLA_CIVA'
      Origin = 'PLANTILLA_CIVA'
      FixedChar = True
      Size = 1
    end
    object QClientesOBSERVACIONES1: TStringField
      FieldName = 'OBSERVACIONES1'
      Origin = 'OBSERVACIONES1'
      Size = 60
    end
    object QClientesOBSERVACIONES2: TStringField
      FieldName = 'OBSERVACIONES2'
      Origin = 'OBSERVACIONES2'
      Size = 60
    end
    object QClientesAVISO: TStringField
      FieldName = 'AVISO'
      Origin = 'AVISO'
      Size = 250
    end
    object QClientesRUBRO: TIntegerField
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
    end
    object QClientesENVIAR_CPTE_MAIL: TStringField
      FieldName = 'ENVIAR_CPTE_MAIL'
      Origin = 'ENVIAR_CPTE_MAIL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesNRO_IP: TStringField
      FieldName = 'NRO_IP'
      Origin = 'NRO_IP'
      Size = 15
    end
    object QClientesCHEQUES: TStringField
      FieldName = 'CHEQUES'
      Origin = 'CHEQUES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesID_ADMINISTRACION: TIntegerField
      FieldName = 'ID_ADMINISTRACION'
      Origin = 'ID_ADMINISTRACION'
      Required = True
    end
    object QClientesOBRA_SOCIAL: TIntegerField
      FieldName = 'OBRA_SOCIAL'
      Origin = 'OBRA_SOCIAL'
    end
    object QClientesNRO_AFILIADO: TStringField
      FieldName = 'NRO_AFILIADO'
      Origin = 'NRO_AFILIADO'
    end
    object QClientesNICKNAME_MERCADOPAGO: TStringField
      FieldName = 'NICKNAME_MERCADOPAGO'
      Origin = 'NICKNAME_MERCADOPAGO'
      Size = 50
    end
    object QClientesBUSCADOR: TStringField
      FieldName = 'BUSCADOR'
      Origin = 'BUSCADOR'
      Size = 159
    end
    object QClientesMUESTRATELEDISCADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATELEDISCADO'
      Origin = 'TELEDISCADO'
      ProviderFlags = []
      Size = 6
    end
    object QClientesMUESTRAVENDEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAVENDEDOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object QClientesMUESTRACOBRADOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACOBRADOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object QClientesMUESTRACTACOORPORATIVA: TStringField
      FieldName = 'MUESTRACTACOORPORATIVA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object QClientesMUESTRAIDGARANTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAIDGARANTE'
      Origin = 'ID'
      ProviderFlags = []
    end
    object QClientesFECHA_INACTIVO: TSQLTimeStampField
      FieldName = 'FECHA_INACTIVO'
      Origin = 'FECHA_INACTIVO'
    end
    object QClientesPERCIBE_IVA: TStringField
      FieldName = 'PERCIBE_IVA'
      Origin = 'PERCIBE_IVA'
      FixedChar = True
      Size = 1
    end
    object QClientesESQUEMALISTA: TIntegerField
      FieldName = 'ESQUEMALISTA'
      Origin = 'ESQUEMALISTA'
      Required = True
    end
  end
  object QProductos: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select p.*,'
      '  cp.detalle as MuestraCategoria,'
      '  c.nombre as MuestraPropietario,'
      '  m.descripcion_marca as MuestraMarca'
      'from productos p'
      'left join categoria_productos cp on cp.id=p.id_categoria'
      'left join clientes c on c.codigo=p.propietario'
      'left join marcas m on m.marca_stk=p.marca'
      'where p.id=:id')
    Left = 557
    Top = 252
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QProductosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QProductosID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = 'ID_CATEGORIA'
    end
    object QProductosIDENTIFICADOR: TStringField
      FieldName = 'IDENTIFICADOR'
      Origin = 'IDENTIFICADOR'
      Size = 50
    end
    object QProductosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 100
    end
    object QProductosPROPIETARIO: TStringField
      FieldName = 'PROPIETARIO'
      Origin = 'PROPIETARIO'
      Size = 6
    end
    object QProductosOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 200
    end
    object QProductosMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 5
    end
    object QProductosMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 50
    end
    object QProductosMUESTRACATEGORIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACATEGORIA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 50
    end
    object QProductosMUESTRAPROPIETARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAPROPIETARIO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object QProductosMUESTRAMARCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAMARCA'
      Origin = 'DESCRIPCION_MARCA'
      ProviderFlags = []
      Size = 25
    end
  end
  object QProveedores: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'SELECT P.* ,'
      'c.Telediscado,'
      'PerIva.Descripcion as DesPerIva,'
      'PerIB.Descripcion as DesPerIB,'
      'PerIB2.Descripcion as DesPerIB2,'
      'retib.detalle as MuestraDetalleRetIIBB,'
      'retib.tasa as MuestraTasaRetIIBB,'
      
        'retib.minimo_imponible as MuestraMinImponiRetIIBB FROM Poveedor ' +
        'P'
      'left join c_postal c on p.id_cod_postal=c.id_postal'
      'left join PercepIva PerIva on PerIva.Codigo=p.Id_Perc_Iva'
      'left join PercepIB PerIB on PerIB.Codigo=p.Id_Perc_IBB'
      'left join PercepIB PerIB2 on PerIB2.Codigo=p.Id_Perc_IBB_2'
      ''
      
        'left join tasas_ret_ibrutos retIB on RetIB.id=p.id_tasa_retencio' +
        'n_ib'
      'where P.Codigo=:Codigo')
    Left = 565
    Top = 64
    ParamData = <
      item
        Position = 1
        Name = 'Codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QProveedoresCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QProveedoresNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
    object QProveedoresRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
    object QProveedoresN_DE_CUENTA: TStringField
      FieldName = 'N_DE_CUENTA'
      Origin = 'N_DE_CUENTA'
      Size = 14
    end
    object QProveedoresID_COD_POSTAL: TIntegerField
      FieldName = 'ID_COD_POSTAL'
      Origin = 'ID_COD_POSTAL'
    end
    object QProveedoresCOD_POSTAL: TStringField
      FieldName = 'COD_POSTAL'
      Origin = 'COD_POSTAL'
      Size = 8
    end
    object QProveedoresLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object QProveedoresDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object QProveedoresTELEFONO_1: TStringField
      FieldName = 'TELEFONO_1'
      Origin = 'TELEFONO_1'
      Size = 10
    end
    object QProveedoresTELEFONO_2: TStringField
      FieldName = 'TELEFONO_2'
      Origin = 'TELEFONO_2'
      Size = 10
    end
    object QProveedoresCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Origin = 'CONDICION_IVA'
      Required = True
    end
    object QProveedoresN_DE_CUIT: TStringField
      FieldName = 'N_DE_CUIT'
      Origin = 'N_DE_CUIT'
      Size = 13
    end
    object QProveedoresACTIVO: TStringField
      FieldName = 'ACTIVO'
      Origin = 'ACTIVO'
      Size = 1
    end
    object QProveedoresRETIENE_IVA: TStringField
      FieldName = 'RETIENE_IVA'
      Origin = 'RETIENE_IVA'
      Size = 1
    end
    object QProveedoresRETIENE_IB: TStringField
      FieldName = 'RETIENE_IB'
      Origin = 'RETIENE_IB'
      Size = 1
    end
    object QProveedoresRETIENE_GANANCIAS: TStringField
      FieldName = 'RETIENE_GANANCIAS'
      Origin = 'RETIENE_GANANCIAS'
      Size = 1
    end
    object QProveedoresIVA_SERVICIOS: TStringField
      FieldName = 'IVA_SERVICIOS'
      Origin = 'IVA_SERVICIOS'
      Size = 1
    end
    object QProveedoresPRECIOS_CON_IVA: TStringField
      FieldName = 'PRECIOS_CON_IVA'
      Origin = 'PRECIOS_CON_IVA'
      Size = 1
    end
    object QProveedoresOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      BlobType = ftMemo
    end
    object QProveedoresNOMBRE_REPRESENTANTE: TStringField
      FieldName = 'NOMBRE_REPRESENTANTE'
      Origin = 'NOMBRE_REPRESENTANTE'
      Size = 35
    end
    object QProveedoresDIRECCION_REPRESENTANTE: TStringField
      FieldName = 'DIRECCION_REPRESENTANTE'
      Origin = 'DIRECCION_REPRESENTANTE'
      Size = 35
    end
    object QProveedoresTELEFONO_REPRESENTANTE: TStringField
      FieldName = 'TELEFONO_REPRESENTANTE'
      Origin = 'TELEFONO_REPRESENTANTE'
      Size = 25
    end
    object QProveedoresTIPO_PROVEEDOR: TStringField
      FieldName = 'TIPO_PROVEEDOR'
      Origin = 'TIPO_PROVEEDOR'
      Required = True
      Size = 1
    end
    object QProveedoresFECHAULTIMACOMPRA: TSQLTimeStampField
      FieldName = 'FECHAULTIMACOMPRA'
      Origin = 'FECHAULTIMACOMPRA'
    end
    object QProveedoresFECHAALTA: TSQLTimeStampField
      FieldName = 'FECHAALTA'
      Origin = 'FECHAALTA'
    end
    object QProveedoresSALDO_INICIAL: TFloatField
      FieldName = 'SALDO_INICIAL'
      Origin = 'SALDO_INICIAL'
    end
    object QProveedoresID_PERC_IVA: TIntegerField
      FieldName = 'ID_PERC_IVA'
      Origin = 'ID_PERC_IVA'
    end
    object QProveedoresID_PERC_IBB: TIntegerField
      FieldName = 'ID_PERC_IBB'
      Origin = 'ID_PERC_IBB'
    end
    object QProveedoresID_PERC_IBB_2: TIntegerField
      FieldName = 'ID_PERC_IBB_2'
      Origin = 'ID_PERC_IBB_2'
    end
    object QProveedoresID_PERC_IBB_3: TIntegerField
      FieldName = 'ID_PERC_IBB_3'
      Origin = 'ID_PERC_IBB_3'
    end
    object QProveedoresRUBRO: TIntegerField
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
    end
    object QProveedoresID_FACTURAPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURAPORDEFECTO'
      Origin = 'ID_FACTURAPORDEFECTO'
    end
    object QProveedoresID_FACTURACTDODEFECTO: TIntegerField
      FieldName = 'ID_FACTURACTDODEFECTO'
      Origin = 'ID_FACTURACTDODEFECTO'
    end
    object QProveedoresEXENTO_GANACIA: TStringField
      FieldName = 'EXENTO_GANACIA'
      Origin = 'EXENTO_GANACIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QProveedoresCODIGO_REGIMEN_RET_GANACIA: TIntegerField
      FieldName = 'CODIGO_REGIMEN_RET_GANACIA'
      Origin = 'CODIGO_REGIMEN_RET_GANACIA'
      Required = True
    end
    object QProveedoresEXENTO_RETENCION_IB: TStringField
      FieldName = 'EXENTO_RETENCION_IB'
      Origin = 'EXENTO_RETENCION_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QProveedoresID_TASA_RETENCION_IB: TIntegerField
      FieldName = 'ID_TASA_RETENCION_IB'
      Origin = 'ID_TASA_RETENCION_IB'
      Required = True
    end
    object QProveedoresNRO_IIBB: TStringField
      FieldName = 'NRO_IIBB'
      Origin = 'NRO_IIBB'
      Size = 15
    end
    object QProveedoresCORREO: TStringField
      FieldName = 'CORREO'
      Origin = 'CORREO'
      Size = 100
    end
    object QProveedoresCONV_MULTI: TStringField
      FieldName = 'CONV_MULTI'
      Origin = 'CONV_MULTI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QProveedoresMONEDA_PRECIOS: TIntegerField
      FieldName = 'MONEDA_PRECIOS'
      Origin = 'MONEDA_PRECIOS'
    end
    object QProveedoresRUBRO_GASTO: TStringField
      FieldName = 'RUBRO_GASTO'
      Origin = 'RUBRO_GASTO'
      Required = True
      Size = 3
    end
    object QProveedoresSUB_RUB_GASTOS: TStringField
      FieldName = 'SUB_RUB_GASTOS'
      Origin = 'SUB_RUB_GASTOS'
      Required = True
      Size = 6
    end
    object QProveedoresCON_OCOMPRA: TStringField
      FieldName = 'CON_OCOMPRA'
      Origin = 'CON_OCOMPRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QProveedoresAUTORIZADO_NOMBRE: TStringField
      FieldName = 'AUTORIZADO_NOMBRE'
      Origin = 'AUTORIZADO_NOMBRE'
      Size = 25
    end
    object QProveedoresAUTORIZADO_TIPODOC: TStringField
      FieldName = 'AUTORIZADO_TIPODOC'
      Origin = 'AUTORIZADO_TIPODOC'
      Size = 3
    end
    object QProveedoresAUTORIZADO_NRODOC: TStringField
      FieldName = 'AUTORIZADO_NRODOC'
      Origin = 'AUTORIZADO_NRODOC'
      Size = 8
    end
    object QProveedoresRETENCION_IVA: TStringField
      FieldName = 'RETENCION_IVA'
      Origin = 'RETENCION_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QProveedoresCODIGO_RET_IVA: TIntegerField
      FieldName = 'CODIGO_RET_IVA'
      Origin = 'CODIGO_RET_IVA'
      Required = True
    end
    object QProveedoresPORCENTAJE_RET_IVA: TSingleField
      FieldName = 'PORCENTAJE_RET_IVA'
      Origin = 'PORCENTAJE_RET_IVA'
      Required = True
    end
    object QProveedoresTELEDISCADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEDISCADO'
      Origin = 'TELEDISCADO'
      ProviderFlags = []
      Size = 6
    end
    object QProveedoresDESPERIVA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESPERIVA'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
    end
    object QProveedoresDESPERIB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESPERIB'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
    end
    object QProveedoresDESPERIB2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESPERIB2'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
    end
    object QProveedoresMUESTRADETALLERETIIBB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADETALLERETIIBB'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 25
    end
    object QProveedoresMUESTRATASARETIIBB: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATASARETIIBB'
      Origin = 'TASA'
      ProviderFlags = []
    end
    object QProveedoresMUESTRAMINIMPONIRETIIBB: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAMINIMPONIRETIIBB'
      Origin = 'MINIMO_IMPONIBLE'
      ProviderFlags = []
    end
    object QProveedoresCBU: TStringField
      FieldName = 'CBU'
      Origin = 'CBU'
      Size = 22
    end
  end
  object QRubroFD: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'Select * from Rubros where codigo_rubro=:rubro')
    Left = 24
    Top = 356
    ParamData = <
      item
        Position = 1
        Name = 'CodigoRubro'
        DataType = ftString
        ParamType = ptInput
      end>
    object QRubroFDCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object QRubroFDDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      Required = True
      Size = 35
    end
    object QRubroFDCONTROL_RUBRO: TStringField
      FieldName = 'CONTROL_RUBRO'
      Origin = 'CONTROL_RUBRO'
      Size = 1
    end
    object QRubroFDFUERA_PROMO: TStringField
      FieldName = 'FUERA_PROMO'
      Origin = 'FUERA_PROMO'
      FixedChar = True
      Size = 1
    end
    object QRubroFDORDEN: TIntegerField
      FieldName = 'ORDEN'
      Origin = 'ORDEN'
      Required = True
    end
  end
  object QSubRubroFD: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      
        'select codigo_subrubro,detalle_subrubro,codigo_rubro from subrub' +
        'ros'
      'where ( codigo_subrubro = :Subrubro ) ')
    Left = 24
    Top = 406
    ParamData = <
      item
        Position = 1
        Name = 'rubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'rubro'
        DataType = ftString
        ParamType = ptInput
      end>
    object QSubRubroFDCODIGO_SUBRUBRO: TStringField
      FieldName = 'CODIGO_SUBRUBRO'
      Origin = 'CODIGO_SUBRUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object QSubRubroFDDETALLE_SUBRUBRO: TStringField
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      Required = True
      Size = 45
    end
    object QSubRubroFDCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      Required = True
      Size = 3
    end
  end
  object CDSRubroFD: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'RUBRO'
        ParamType = ptInput
        Size = 3
      end>
    ProviderName = 'DSPRubroFD'
    Left = 176
    Top = 417
    object CDSRubroFDCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Required = True
      Size = 3
    end
    object CDSRubroFDDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Required = True
      Size = 35
    end
    object CDSRubroFDCONTROL_RUBRO: TStringField
      FieldName = 'CONTROL_RUBRO'
      Size = 1
    end
    object CDSRubroFDFUERA_PROMO: TStringField
      FieldName = 'FUERA_PROMO'
      FixedChar = True
      Size = 1
    end
    object CDSRubroFDORDEN: TIntegerField
      FieldName = 'ORDEN'
      Required = True
    end
  end
  object DSPRubroFD: TDataSetProvider
    DataSet = QRubroFD
    Left = 100
    Top = 368
  end
  object CDSSubRubroFD: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'SUBRUBRO'
        ParamType = ptInput
        Size = 5
      end>
    ProviderName = 'DSPSubRubroFD'
    Left = 176
    Top = 464
    object CDSSubRubroFDCODIGO_SUBRUBRO: TStringField
      FieldName = 'CODIGO_SUBRUBRO'
      Origin = 'CODIGO_SUBRUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object CDSSubRubroFDDETALLE_SUBRUBRO: TStringField
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      Required = True
      Size = 45
    end
    object CDSSubRubroFDCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      Required = True
      Size = 3
    end
  end
  object DSPSubRubroFD: TDataSetProvider
    DataSet = QSubRubroFD
    Left = 100
    Top = 416
  end
  object spHacerNC_FD: TFDStoredProc
    Connection = fdcGestion
    StoredProcName = 'GENERAR_NC_VTA'
    Left = 1216
    Top = 328
    ParamData = <
      item
        Position = 1
        Name = 'ID_CPBTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ID_COMPROBANTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'FECHA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'ID_CTA_CAJA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'ID_NC_GENERADA'
        DataType = ftInteger
        ParamType = ptOutput
      end>
  end
  object QEmpresa: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      
        'select e.*, c.id_postal as id_cpostal,p.codigo_cot from Empresa ' +
        'e'
      'left join c_postal c on c.codigo_postal = e.cpostal'
      'left join provincia p on p.id_pro=e.provincia'
      '')
    Left = 100
    Top = 167
    object QEmpresaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object QEmpresaACTIVIDAD: TStringField
      FieldName = 'ACTIVIDAD'
      Origin = 'ACTIVIDAD'
      Size = 30
    end
    object QEmpresaDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 30
    end
    object QEmpresaLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 30
    end
    object QEmpresaCORREO: TStringField
      FieldName = 'CORREO'
      Origin = 'CORREO'
      Size = 30
    end
    object QEmpresaTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Origin = 'TELEFONO1'
      Size = 10
    end
    object QEmpresaTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Origin = 'TELEFONO2'
      Size = 10
    end
    object QEmpresaCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QEmpresaCONDICIONIVA: TStringField
      FieldName = 'CONDICIONIVA'
      Origin = 'CONDICIONIVA'
      Size = 15
    end
    object QEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField
      FieldName = 'NRO_AGTE_RET_INGBRUTOS'
      Origin = 'NRO_AGTE_RET_INGBRUTOS'
      Size = 15
    end
    object QEmpresaLOGO: TBlobField
      FieldName = 'LOGO'
      Origin = 'LOGO'
    end
    object QEmpresaCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QEmpresaNRO_AGTE_RET_GANANCIA: TStringField
      FieldName = 'NRO_AGTE_RET_GANANCIA'
      Origin = 'NRO_AGTE_RET_GANANCIA'
      Size = 15
    end
    object QEmpresaAG_RET_GANANCIA: TStringField
      FieldName = 'AG_RET_GANANCIA'
      Origin = 'AG_RET_GANANCIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QEmpresaAG_RET_ING_BRUTOS: TStringField
      FieldName = 'AG_RET_ING_BRUTOS'
      Origin = 'AG_RET_ING_BRUTOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField
      FieldName = 'AG_PERCEPCION_ING_BRUTOS'
      Origin = 'AG_PERCEPCION_ING_BRUTOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QEmpresaTASA_PERCEPCION_IB: TFloatField
      FieldName = 'TASA_PERCEPCION_IB'
      Origin = 'TASA_PERCEPCION_IB'
    end
    object QEmpresaMINO_IMP_PERCEP_IB: TFloatField
      FieldName = 'MINO_IMP_PERCEP_IB'
      Origin = 'MINO_IMP_PERCEP_IB'
    end
    object QEmpresaPROVINCIA: TIntegerField
      FieldName = 'PROVINCIA'
      Origin = 'PROVINCIA'
    end
    object QEmpresaTASA_RET_IIBB: TFloatField
      FieldName = 'TASA_RET_IIBB'
      Origin = 'TASA_RET_IIBB'
      Required = True
    end
    object QEmpresaMINIMO_IMP_RET_IIBB: TFloatField
      FieldName = 'MINIMO_IMP_RET_IIBB'
      Origin = 'MINIMO_IMP_RET_IIBB'
      Required = True
    end
    object QEmpresaPUNITORIOS: TFloatField
      FieldName = 'PUNITORIOS'
      Origin = 'PUNITORIOS'
      Required = True
    end
    object QEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField
      FieldName = 'FECHA_INICIO_ACTI'
      Origin = 'FECHA_INICIO_ACTI'
    end
    object QEmpresaNRO_RENSPA: TStringField
      FieldName = 'NRO_RENSPA'
      Origin = 'NRO_RENSPA'
    end
    object QEmpresaNRO_RUCA: TIntegerField
      FieldName = 'NRO_RUCA'
      Origin = 'NRO_RUCA'
    end
    object QEmpresaCUIT_AUTORIZADO: TStringField
      FieldName = 'CUIT_AUTORIZADO'
      Origin = 'CUIT_AUTORIZADO'
      Size = 13
    end
    object QEmpresaNOMBRE_AUTORIZADO: TStringField
      FieldName = 'NOMBRE_AUTORIZADO'
      Origin = 'NOMBRE_AUTORIZADO'
      Size = 50
    end
    object QEmpresaCBU: TStringField
      FieldName = 'CBU'
      Origin = 'CBU'
      Size = 22
    end
    object QEmpresaID_CPOSTAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CPOSTAL'
      Origin = 'ID_POSTAL'
      ProviderFlags = []
    end
    object QEmpresaCOD_ACTIVIDAD: TStringField
      FieldName = 'COD_ACTIVIDAD'
      Origin = 'COD_ACTIVIDAD'
      Size = 10
    end
    object QEmpresaNOMBRE_FANTASIA: TStringField
      FieldName = 'NOMBRE_FANTASIA'
      Origin = 'NOMBRE_FANTASIA'
      Size = 50
    end
    object QEmpresaCODIGO_COT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_COT'
      Origin = 'CODIGO_COT'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object QEmpresaDIRECCION_NRO: TStringField
      FieldName = 'DIRECCION_NRO'
      Origin = 'DIRECCION_NRO'
      Size = 10
    end
    object QEmpresaAG_PERCEPCION_IVA: TStringField
      FieldName = 'AG_PERCEPCION_IVA'
      Origin = 'AG_PERCEPCION_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QEmpresaMIN_IMP_PERCEPCION_IVA: TFloatField
      FieldName = 'MIN_IMP_PERCEPCION_IVA'
      Origin = 'MIN_IMP_PERCEPCION_IVA'
      Required = True
    end
    object QEmpresaTASA_LEY15311: TFloatField
      FieldName = 'TASA_LEY15311'
      Origin = 'TASA_LEY15311'
      Required = True
    end
    object QEmpresaDIRECCION_OPERACION: TStringField
      FieldName = 'DIRECCION_OPERACION'
      Origin = 'DIRECCION_OPERACION'
      Size = 150
    end
  end
  object QComprobantePorDefecto: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select id_comprobante from comprobantes where'
      'tipo_comprob=:tipo and '
      'compra_venta=:compraventa and '
      'Sucursal=:sucursal and '
      'desgloza_iva=:DesglozaIva and'
      '((:letra is null) or (:letra='#39#39') or ( letra=:letra)) and'
      'defecto='#39'S'#39' and en_uso='#39'S'#39)
    Left = 664
    Top = 312
    ParamData = <
      item
        Position = 1
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 2
        Name = 'COMPRAVENTA'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 3
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'DESGLOZAIVA'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 5
        Name = 'LETRA'
        DataType = ftFixedChar
        ParamType = ptInput
      end>
  end
  object QOpciones: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select valor from opciones where opcion = :opcion')
    Left = 920
    Top = 440
    ParamData = <
      item
        Name = 'OPCION'
        DataType = ftString
        ParamType = ptInput
        Size = 13
        Value = Null
      end>
    object QOpcionesVALOR: TStringField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Size = 100
    end
  end
  object QUltimoCodigoCli: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select Max(c.Codigo) as Codigo from Clientes c'
      'where c.sucursal = :sucursal or :sucursal = -1')
    Left = 928
    Top = 330
    ParamData = <
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QUltimoCodigoCliCODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInKey]
      ReadOnly = True
      Size = 6
    end
  end
  object QPostal: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select cp.*, p.nombre as MuestraProvincia from c_postal cp'
      '  left join provincia p on cp.provincia=p.id_pro'
      'where cp.id_postal=:id')
    Left = 557
    Top = 358
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QPostalID_POSTAL: TIntegerField
      FieldName = 'ID_POSTAL'
      Origin = 'ID_POSTAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPostalCODIGO_POSTAL: TStringField
      FieldName = 'CODIGO_POSTAL'
      Origin = 'CODIGO_POSTAL'
      Required = True
      Size = 8
    end
    object QPostalDETALLE_POSTAL: TStringField
      FieldName = 'DETALLE_POSTAL'
      Origin = 'DETALLE_POSTAL'
      Required = True
      Size = 25
    end
    object QPostalTELEDISCADO: TStringField
      FieldName = 'TELEDISCADO'
      Origin = 'TELEDISCADO'
      Size = 6
    end
    object QPostalPROVINCIA: TIntegerField
      FieldName = 'PROVINCIA'
      Origin = 'PROVINCIA'
    end
    object QPostalMUESTRAPROVINCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAPROVINCIA'
      Origin = 'NOMBRE'
      ProviderFlags = []
    end
  end
  object QDeposito: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select *  from depositos where id = :id')
    Left = 24
    Top = 172
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QDepositoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDepositoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object QDepositoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QDepositoCENTRALIZA_STOCK: TStringField
      FieldName = 'CENTRALIZA_STOCK'
      Origin = 'CENTRALIZA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QVentaCab: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      
        'select Fc.*, Fp.Detalle as MuestraCondVenta, De.Nombre as Muestr' +
        'aDeposito,'
      '  Su.Detalle as MuestraSucursal, '
      '  Su.Aplica_ley15311 as MuestraAplicaLey15311,'
      '  Ldr.Nombre as MuestraLdr, '
      '  Ldr.Direccion as MuestraDireccionLdr,'
      
        '  ins.Detalle as MuestraIva,cp.denominacion as MuestraComprobant' +
        'e,'
      
        '  cp.id_comprobante as Id_TipoComprobante,v.nombre as MuestraVen' +
        'dedor,prov.nombre as MuestraProveedor,'
      
        '  m.moneda as MuestraMonedaCpbte, m.signo as Muestrasignomonedac' +
        'pbte,'
      '  cli.franquicia as MuestraEsFranquicia,'
      
        '  cli.codigo_coorporativo as MuestraCoorporativo,cp.Codigo_Afip ' +
        'as MuestraCodigoAfip,'
      '  z.detalle as MuestraZona,'
      '  cli.observaciones1 as MuestraObsCliente1,'
      '  cli.observaciones2 as MuestraObsCliente2,'
      
        '  mac.id as MuestraAcopio,cli.nombre_completo as MuestraNombreCo' +
        'mpleto,'
      '  ca.id as MuestraIDAbono,ca.numero as MuestraNroAbono,'
      '  cli.enviar_cpte_mail,cli.cheques as MuestraUsaChe,'
      '  cli.direccion_calle as MuestraDireccion_Calle,'
      '  cli.direccion_numero as MuestraDireccion_Nro,'
      '  cli.direccion_piso as MuestraDireccion_Piso,'
      '  cli.direccion_depto as MuestraDireccion_Depto,'
      '  cli.telefono_comercial_1 as MuestraTelefono_1,'
      '  cli.telefono_comercial_2 as MuestraTelefono_2,'
      '  cli.telefono_celular as MuestraTelefonoMovil,'
      '  tr.nombre as MuestraTransporte,'
      '  cho.nombre as MuestraChofer,'
      '  cho.tipo_doc as MuestraTpDocChofer,'
      '  cho.numero_doc as MuestraNrDocChofer,'
      '  utr.dominio as MuestraDominioUnidadTr,'
      '  utr.descripcion as Muestra_uni_transporte,'
      '  uau.descripcion as MuestraAuxiliarTr,'
      '  tr.direccion as MuestraDirTransporte,'
      '  tr.telefono as MuestraTeTransporte,'
      '  tr.localidad as MuestraLocaliTransporte,'
      '  tr.nombre as MuestraNombreTransporte,'
      '  tr.cuit as MuestraCuitTransporte,'
      '  pr.codigo_cot as LetraCOT,'
      '  tpins.detalle as MuestraCondIVATransporte,'
      
        '  nc.id_fc as MuestraID_Nc, nc.nrocpbte as MuestraNroNC,nc.tipoc' +
        'pbte as MuestraTipoNC,nc.clasecpbte as MuestraClaseNC,'
      '  u.real_name as MuestraNombreUsuarioReal,'
      '  ob.detalle as MuestraObra'
      ' from FcVtaCab Fc'
      'left join personal v on v.codigo=fc.vendedor'
      'left join F_Pago Fp on Fp.Codigo=Fc.CondicionVta'
      'left join Depositos De  on De.Id=Fc.Deposito'
      'left join Sucursal Su  on Su.Codigo=Fc.Sucursal'
      'left join inscripcion ins on ins.codigo=Fc.TipoIva'
      
        'left join LdrCliente Ldr on ((Ldr.Codigo_Cliente=Fc.Codigo) and ' +
        '(Ldr.Codigo_Ldr=Fc.Ldr))'
      'left join poveedor prov on prov.codigo=fc.proveedor'
      'left join clientes cli on cli.codigo=fc.codigo'
      'left join comprobantes cp on cp.clase_comprob=Fc.ClaseCpbte and'
      '          cp.letra=fc.LetraFac and'
      '          cp.sucursal=fc.sucursal and'
      '          cp.tipo_comprob=fc.tipocpbte and'
      '          cp.compra_venta='#39'V'#39
      'left join monedas m on m.id = fc.moneda_cpbte'
      'left join zona z on z.id_zona=cli.zona'
      'left Join merca_enacopio_cab mac on mac.id_factura=fc.id_fc'
      'left join cupon_abonos ca on ca.factura_id=fc.id_fc'
      'left join c_postal cpos on cpos.id_postal=cli.id_cod_postal'
      ''
      'left join transportes tr on tr.id=fc.id_transporte'
      
        'left join transporte_choferes cho on cho.id=fc.id_chofer and cho' +
        '.id_transporte=fc.id_transporte'
      'left join inscripcion Tpins on Tpins.codigo=tr.condicion_iva'
      ''
      'left join unidades_tr utr on utr.id=fc.transporte_unidad'
      'left join unid_aux_tr uau on uau.id=fc.transporte_adicional'
      ''
      'left join fcvtacab NC on nc.asociado_id_cpbte=fc.id_fc'
      'left join provincia pr on pr.id_pro=cpos.provincia'
      'left join ucs_users u on u.user_name=fc.usuario'
      'left join obras ob on ob.codigo=fc.id_obra'
      'where Fc.TipoCpbte= :TipoCpbte'
      'and Fc.id_fc=:id')
    Left = 24
    Top = 556
    ParamData = <
      item
        Position = 1
        Name = 'TipoCpbte'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QVentaCabID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QVentaCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QVentaCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QVentaCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object QVentaCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QVentaCabLETRAFAC: TStringField
      FieldName = 'LETRAFAC'
      Origin = 'LETRAFAC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVentaCabSUCFAC: TStringField
      FieldName = 'SUCFAC'
      Origin = 'SUCFAC'
      Size = 4
    end
    object QVentaCabNUMEROFAC: TStringField
      FieldName = 'NUMEROFAC'
      Origin = 'NUMEROFAC'
      Size = 8
    end
    object QVentaCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QVentaCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QVentaCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object QVentaCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QVentaCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object QVentaCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Origin = 'TIPOIVA'
      Required = True
    end
    object QVentaCabCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QVentaCabLISTAPRECIO: TIntegerField
      FieldName = 'LISTAPRECIO'
      Origin = 'LISTAPRECIO'
    end
    object QVentaCabFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
      Required = True
    end
    object QVentaCabFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
    object QVentaCabFECHA_FISCAL: TSQLTimeStampField
      FieldName = 'FECHA_FISCAL'
      Origin = 'FECHA_FISCAL'
    end
    object QVentaCabCONDICIONVTA: TIntegerField
      FieldName = 'CONDICIONVTA'
      Origin = 'CONDICIONVTA'
      Required = True
    end
    object QVentaCabANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVentaCabNRORTO: TStringField
      FieldName = 'NRORTO'
      Origin = 'NRORTO'
      Size = 100
    end
    object QVentaCabN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
      Origin = 'N_OPERACION2'
    end
    object QVentaCabNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
      Origin = 'NETOGRAV1'
      Required = True
    end
    object QVentaCabNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
      Origin = 'NETOGRAV2'
      Required = True
    end
    object QVentaCabNETONOGRAV1: TFloatField
      FieldName = 'NETONOGRAV1'
      Origin = 'NETONOGRAV1'
      Required = True
    end
    object QVentaCabNETONOGRAV2: TFloatField
      FieldName = 'NETONOGRAV2'
      Origin = 'NETONOGRAV2'
      Required = True
    end
    object QVentaCabDSTO: TFloatField
      FieldName = 'DSTO'
      Origin = 'DSTO'
      Required = True
    end
    object QVentaCabDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
      Origin = 'DSTOIMPORTE'
      Required = True
    end
    object QVentaCabNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
      Origin = 'NETOEXEN1'
      Required = True
    end
    object QVentaCabNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
      Origin = 'NETOEXEN2'
      Required = True
    end
    object QVentaCabTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
    end
    object QVentaCabDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
      Required = True
    end
    object QVentaCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Origin = 'IMPRESO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVentaCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Origin = 'OBSERVACION1'
      Size = 60
    end
    object QVentaCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Origin = 'OBSERVACION2'
      Size = 60
    end
    object QVentaCabCPTE_MANUAL: TStringField
      FieldName = 'CPTE_MANUAL'
      Origin = 'CPTE_MANUAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVentaCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QVentaCabFACTURANRO: TStringField
      FieldName = 'FACTURANRO'
      Origin = 'FACTURANRO'
      Size = 13
    end
    object QVentaCabZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'ZONA'
    end
    object QVentaCabLDR: TIntegerField
      FieldName = 'LDR'
      Origin = 'LDR'
      Required = True
    end
    object QVentaCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QVentaCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVentaCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVentaCabNROENTREGA: TIntegerField
      FieldName = 'NROENTREGA'
      Origin = 'NROENTREGA'
    end
    object QVentaCabINGRESA_A_CTACTE: TStringField
      FieldName = 'INGRESA_A_CTACTE'
      Origin = 'INGRESA_A_CTACTE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVentaCabINGRESA_LIBRO_IVA: TStringField
      FieldName = 'INGRESA_LIBRO_IVA'
      Origin = 'INGRESA_LIBRO_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVentaCabTIPO_REMITO: TStringField
      FieldName = 'TIPO_REMITO'
      Origin = 'TIPO_REMITO'
      Size = 2
    end
    object QVentaCabIDREMITO: TIntegerField
      FieldName = 'IDREMITO'
      Origin = 'IDREMITO'
    end
    object QVentaCabREDUCIDA: TStringField
      FieldName = 'REDUCIDA'
      Origin = 'REDUCIDA'
      FixedChar = True
      Size = 1
    end
    object QVentaCabCOMSIONVENDEDOR: TFloatField
      FieldName = 'COMSIONVENDEDOR'
      Origin = 'COMSIONVENDEDOR'
      Required = True
    end
    object QVentaCabLIQUIDADA: TStringField
      FieldName = 'LIQUIDADA'
      Origin = 'LIQUIDADA'
      FixedChar = True
      Size = 1
    end
    object QVentaCabFECHA_LIQUIDACION: TSQLTimeStampField
      FieldName = 'FECHA_LIQUIDACION'
      Origin = 'FECHA_LIQUIDACION'
    end
    object QVentaCabVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 6
    end
    object QVentaCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object QVentaCabNC_CONTADO: TStringField
      FieldName = 'NC_CONTADO'
      Origin = 'NC_CONTADO'
      FixedChar = True
      Size = 1
    end
    object QVentaCabCAJA_POR_DEFECTO: TIntegerField
      FieldName = 'CAJA_POR_DEFECTO'
      Origin = 'CAJA_POR_DEFECTO'
    end
    object QVentaCabNRO_Z: TIntegerField
      FieldName = 'NRO_Z'
      Origin = 'NRO_Z'
    end
    object QVentaCabVALORES_RECIBIDOS: TFloatField
      FieldName = 'VALORES_RECIBIDOS'
      Origin = 'VALORES_RECIBIDOS'
      Required = True
    end
    object QVentaCabPERCEPCION_IB_TASA: TFloatField
      FieldName = 'PERCEPCION_IB_TASA'
      Origin = 'PERCEPCION_IB_TASA'
      Required = True
    end
    object QVentaCabPERCEPCION_IB_IMPORTE: TFloatField
      FieldName = 'PERCEPCION_IB_IMPORTE'
      Origin = 'PERCEPCION_IB_IMPORTE'
      Required = True
    end
    object QVentaCabPERCIBE_IB: TStringField
      FieldName = 'PERCIBE_IB'
      Origin = 'PERCIBE_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVentaCabPERCEPCION_IB_BASEIMPONIBLE: TFloatField
      FieldName = 'PERCEPCION_IB_BASEIMPONIBLE'
      Origin = 'PERCEPCION_IB_BASEIMPONIBLE'
      Required = True
    end
    object QVentaCabRENGLONES: TSmallintField
      FieldName = 'RENGLONES'
      Origin = 'RENGLONES'
      Required = True
    end
    object QVentaCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object QVentaCabNOTAPEDIDO_ID: TIntegerField
      FieldName = 'NOTAPEDIDO_ID'
      Origin = 'NOTAPEDIDO_ID'
    end
    object QVentaCabNOTAPEDIDO_NROCPBTE: TStringField
      FieldName = 'NOTAPEDIDO_NROCPBTE'
      Origin = 'NOTAPEDIDO_NROCPBTE'
      Size = 13
    end
    object QVentaCabID_FC_CLON: TIntegerField
      FieldName = 'ID_FC_CLON'
      Origin = 'ID_FC_CLON'
    end
    object QVentaCabPRESUPUESTO_ID: TIntegerField
      FieldName = 'PRESUPUESTO_ID'
      Origin = 'PRESUPUESTO_ID'
    end
    object QVentaCabPRESUPUESTO_NROCPBTE: TStringField
      FieldName = 'PRESUPUESTO_NROCPBTE'
      Origin = 'PRESUPUESTO_NROCPBTE'
      Size = 13
    end
    object QVentaCabMONEDA_CPBTE: TIntegerField
      FieldName = 'MONEDA_CPBTE'
      Origin = 'MONEDA_CPBTE'
    end
    object QVentaCabMONEDA_CPBTE_COTIZACION: TFloatField
      FieldName = 'MONEDA_CPBTE_COTIZACION'
      Origin = 'MONEDA_CPBTE_COTIZACION'
    end
    object QVentaCabPOR_CTA_Y_ORDEN: TStringField
      FieldName = 'POR_CTA_Y_ORDEN'
      Origin = 'POR_CTA_Y_ORDEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVentaCabPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Origin = 'PROVEEDOR'
      Size = 6
    end
    object QVentaCabTIPO_VTA: TStringField
      FieldName = 'TIPO_VTA'
      Origin = 'TIPO_VTA'
      FixedChar = True
      Size = 1
    end
    object QVentaCabID_RECEPCION_GTIA: TIntegerField
      FieldName = 'ID_RECEPCION_GTIA'
      Origin = 'ID_RECEPCION_GTIA'
    end
    object QVentaCabJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
      Origin = 'JURIDICION'
    end
    object QVentaCabJURIDICION_LOCALIDAD: TIntegerField
      FieldName = 'JURIDICION_LOCALIDAD'
      Origin = 'JURIDICION_LOCALIDAD'
    end
    object QVentaCabCON_GTIA_EXTENDIDA: TStringField
      FieldName = 'CON_GTIA_EXTENDIDA'
      Origin = 'CON_GTIA_EXTENDIDA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVentaCabMESES_DE_GARANTIA: TIntegerField
      FieldName = 'MESES_DE_GARANTIA'
      Origin = 'MESES_DE_GARANTIA'
      Required = True
    end
    object QVentaCabPOLIZA: TStringField
      FieldName = 'POLIZA'
      Origin = 'POLIZA'
    end
    object QVentaCabVALOR_ASEGURADO: TFloatField
      FieldName = 'VALOR_ASEGURADO'
      Origin = 'VALOR_ASEGURADO'
    end
    object QVentaCabABONO_PERIODO: TStringField
      FieldName = 'ABONO_PERIODO'
      Origin = 'ABONO_PERIODO'
      Size = 6
    end
    object QVentaCabNUMERO_OPERACION: TStringField
      FieldName = 'NUMERO_OPERACION'
      Origin = 'NUMERO_OPERACION'
      Size = 8
    end
    object QVentaCabSALDO_ACTUAL_CC: TFloatField
      FieldName = 'SALDO_ACTUAL_CC'
      Origin = 'SALDO_ACTUAL_CC'
    end
    object QVentaCabID_NOTA_CAMBIO: TIntegerField
      FieldName = 'ID_NOTA_CAMBIO'
      Origin = 'ID_NOTA_CAMBIO'
    end
    object QVentaCabCAE: TStringField
      FieldName = 'CAE'
      Origin = 'CAE'
      Required = True
      Size = 50
    end
    object QVentaCabCAE_VENCIMIENTO: TSQLTimeStampField
      FieldName = 'CAE_VENCIMIENTO'
      Origin = 'CAE_VENCIMIENTO'
    end
    object QVentaCabFACTURA_ELECTRONICA: TStringField
      FieldName = 'FACTURA_ELECTRONICA'
      Origin = 'FACTURA_ELECTRONICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVentaCabCANT_BULTOS: TIntegerField
      FieldName = 'CANT_BULTOS'
      Origin = 'CANT_BULTOS'
      Required = True
    end
    object QVentaCabCUOTAS_CC: TIntegerField
      FieldName = 'CUOTAS_CC'
      Origin = 'CUOTAS_CC'
      Required = True
    end
    object QVentaCabINTERVALO_CUOTA: TIntegerField
      FieldName = 'INTERVALO_CUOTA'
      Origin = 'INTERVALO_CUOTA'
      Required = True
    end
    object QVentaCabID_GARANTE: TIntegerField
      FieldName = 'ID_GARANTE'
      Origin = 'ID_GARANTE'
    end
    object QVentaCabPAGO_A_CTA: TFloatField
      FieldName = 'PAGO_A_CTA'
      Origin = 'PAGO_A_CTA'
      Required = True
    end
    object QVentaCabID_FC_CON_ADEL: TIntegerField
      FieldName = 'ID_FC_CON_ADEL'
      Origin = 'ID_FC_CON_ADEL'
      Required = True
    end
    object QVentaCabPRIMER_VTO: TSQLTimeStampField
      FieldName = 'PRIMER_VTO'
      Origin = 'PRIMER_VTO'
    end
    object QVentaCabANTICIPO_VTO: TSQLTimeStampField
      FieldName = 'ANTICIPO_VTO'
      Origin = 'ANTICIPO_VTO'
    end
    object QVentaCabCENTRO_COSTO: TIntegerField
      FieldName = 'CENTRO_COSTO'
      Origin = 'CENTRO_COSTO'
      Required = True
    end
    object QVentaCabID_PEDIDO_MORPHI: TIntegerField
      FieldName = 'ID_PEDIDO_MORPHI'
      Origin = 'ID_PEDIDO_MORPHI'
    end
    object QVentaCabID_PAIS: TSmallintField
      FieldName = 'ID_PAIS'
      Origin = 'ID_PAIS'
    end
    object QVentaCabCUIT_PAIS: TStringField
      FieldName = 'CUIT_PAIS'
      Origin = 'CUIT_PAIS'
      Size = 13
    end
    object QVentaCabDOC_ADUANERO: TStringField
      FieldName = 'DOC_ADUANERO'
      Origin = 'DOC_ADUANERO'
      Size = 15
    end
    object QVentaCabFECHA_CARGA: TSQLTimeStampField
      FieldName = 'FECHA_CARGA'
      Origin = 'FECHA_CARGA'
    end
    object QVentaCabNRO_INTERNO: TStringField
      FieldName = 'NRO_INTERNO'
      Origin = 'NRO_INTERNO'
    end
    object QVentaCabFOB_TOTAL: TFloatField
      FieldName = 'FOB_TOTAL'
      Origin = 'FOB_TOTAL'
      Required = True
    end
    object QVentaCabNOTAS: TStringField
      FieldName = 'NOTAS'
      Origin = 'NOTAS'
      Size = 300
    end
    object QVentaCabDESTINO_DOCUMENTO: TStringField
      FieldName = 'DESTINO_DOCUMENTO'
      Origin = 'DESTINO_DOCUMENTO'
      Size = 5
    end
    object QVentaCabPERMISO_EMBARQUE: TStringField
      FieldName = 'PERMISO_EMBARQUE'
      Origin = 'PERMISO_EMBARQUE'
      Size = 100
    end
    object QVentaCabINCOTERMS: TStringField
      FieldName = 'INCOTERMS'
      Origin = 'INCOTERMS'
      Size = 5
    end
    object QVentaCabCBU: TStringField
      FieldName = 'CBU'
      Origin = 'CBU'
      Size = 22
    end
    object QVentaCabASOCIADO_ID_CPBTE: TIntegerField
      FieldName = 'ASOCIADO_ID_CPBTE'
      Origin = 'ASOCIADO_ID_CPBTE'
      Required = True
    end
    object QVentaCabASOCIADO_TIPO: TIntegerField
      FieldName = 'ASOCIADO_TIPO'
      Origin = 'ASOCIADO_TIPO'
    end
    object QVentaCabASOCIADO_PTOVTA: TIntegerField
      FieldName = 'ASOCIADO_PTOVTA'
      Origin = 'ASOCIADO_PTOVTA'
    end
    object QVentaCabASOCIADO_NRO: TFloatField
      FieldName = 'ASOCIADO_NRO'
      Origin = 'ASOCIADO_NRO'
      Required = True
    end
    object QVentaCabASOCIADO_CPTEFCH: TStringField
      FieldName = 'ASOCIADO_CPTEFCH'
      Origin = 'ASOCIADO_CPTEFCH'
      Size = 8
    end
    object QVentaCabINF_X: TStringField
      FieldName = 'INF_X'
      Origin = 'INF_X'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVentaCabTIPO_OPERACION_EXPO: TStringField
      FieldName = 'TIPO_OPERACION_EXPO'
      Origin = 'TIPO_OPERACION_EXPO'
      FixedChar = True
      Size = 1
    end
    object QVentaCabMEDIO_TRANSPORTE_EXPO: TStringField
      FieldName = 'MEDIO_TRANSPORTE_EXPO'
      Origin = 'MEDIO_TRANSPORTE_EXPO'
    end
    object QVentaCabID_ADUANA: TIntegerField
      FieldName = 'ID_ADUANA'
      Origin = 'ID_ADUANA'
    end
    object QVentaCabREFERENCIA_EXPO: TStringField
      FieldName = 'REFERENCIA_EXPO'
      Origin = 'REFERENCIA_EXPO'
      Size = 30
    end
    object QVentaCabCAMBIO_EXPO: TFloatField
      FieldName = 'CAMBIO_EXPO'
      Origin = 'CAMBIO_EXPO'
    end
    object QVentaCabVUELTO: TFloatField
      FieldName = 'VUELTO'
      Origin = 'VUELTO'
      Required = True
    end
    object QVentaCabID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
      Origin = 'ID_TRANSPORTE'
    end
    object QVentaCabID_DESTINO: TIntegerField
      FieldName = 'ID_DESTINO'
      Origin = 'ID_DESTINO'
    end
    object QVentaCabHONORARIOS: TFloatField
      FieldName = 'HONORARIOS'
      Origin = 'HONORARIOS'
      Required = True
    end
    object QVentaCabHONORARIOS_PROCENTAJ: TFloatField
      FieldName = 'HONORARIOS_PROCENTAJ'
      Origin = 'HONORARIOS_PROCENTAJ'
      Required = True
    end
    object QVentaCabDEDUCE_GASTOS: TStringField
      FieldName = 'DEDUCE_GASTOS'
      Origin = 'DEDUCE_GASTOS'
      FixedChar = True
      Size = 1
    end
    object QVentaCabCON_CAEA: TStringField
      FieldName = 'CON_CAEA'
      Origin = 'CON_CAEA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVentaCabCAEA_INFORMADO: TStringField
      FieldName = 'CAEA_INFORMADO'
      Origin = 'CAEA_INFORMADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVentaCabFACTURA_DE_ANTICIPO: TStringField
      FieldName = 'FACTURA_DE_ANTICIPO'
      Origin = 'FACTURA_DE_ANTICIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVentaCabQRIMAGE: TBlobField
      FieldName = 'QRIMAGE'
      Origin = 'QRIMAGE'
    end
    object QVentaCabCONDICIONPEDIDO: TIntegerField
      FieldName = 'CONDICIONPEDIDO'
      Origin = 'CONDICIONPEDIDO'
      Required = True
    end
    object QVentaCabTRANSPORTE_UNIDAD: TIntegerField
      FieldName = 'TRANSPORTE_UNIDAD'
      Origin = 'TRANSPORTE_UNIDAD'
    end
    object QVentaCabTRANSPORTE_ADICIONAL: TIntegerField
      FieldName = 'TRANSPORTE_ADICIONAL'
      Origin = 'TRANSPORTE_ADICIONAL'
    end
    object QVentaCabLOTEAFIP: TStringField
      FieldName = 'LOTEAFIP'
      Origin = 'LOTEAFIP'
      ProviderFlags = []
      Size = 8
    end
    object QVentaCabCODIGO_ACTIVIDAD: TStringField
      FieldName = 'CODIGO_ACTIVIDAD'
      Origin = 'CODIGO_ACTIVIDAD'
      Required = True
      Size = 10
    end
    object QVentaCabID_CHOFER: TIntegerField
      FieldName = 'ID_CHOFER'
      Origin = 'ID_CHOFER'
    end
    object QVentaCabENVIAR_CPTE_MAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENVIAR_CPTE_MAIL'
      Origin = 'ENVIAR_CPTE_MAIL'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object QVentaCabKEY_PLANER: TStringField
      FieldName = 'KEY_PLANER'
      Origin = 'KEY_PLANER'
      Size = 40
    end
    object QVentaCabMUESTRACONDVENTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACONDVENTA'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QVentaCabMUESTRADEPOSITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QVentaCabMUESTRASUCURSAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QVentaCabMUESTRALDR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRALDR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QVentaCabMUESTRADIRECCIONLDR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADIRECCIONLDR'
      Origin = 'DIRECCION'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QVentaCabMUESTRAIVA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAIVA'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QVentaCabMUESTRACOMPROBANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QVentaCabID_TIPOCOMPROBANTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_TIPOCOMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QVentaCabMUESTRAVENDEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAVENDEDOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QVentaCabMUESTRAPROVEEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAPROVEEDOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QVentaCabMUESTRAMONEDACPBTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAMONEDACPBTE'
      Origin = 'MONEDA'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QVentaCabMUESTRASIGNOMONEDACPBTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASIGNOMONEDACPBTE'
      Origin = 'SIGNO'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object QVentaCabMUESTRAESFRANQUICIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAESFRANQUICIA'
      Origin = 'FRANQUICIA'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object QVentaCabMUESTRACOORPORATIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACOORPORATIVO'
      Origin = 'CODIGO_COORPORATIVO'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object QVentaCabMUESTRACODIGOAFIP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACODIGOAFIP'
      Origin = 'CODIGO_AFIP'
      ProviderFlags = []
      ReadOnly = True
      Size = 3
    end
    object QVentaCabMUESTRAZONA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAZONA'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QVentaCabMUESTRAOBSCLIENTE1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAOBSCLIENTE1'
      Origin = 'OBSERVACIONES1'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QVentaCabMUESTRAOBSCLIENTE2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAOBSCLIENTE2'
      Origin = 'OBSERVACIONES2'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object QVentaCabMUESTRAACOPIO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAACOPIO'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object QVentaCabMUESTRANOMBRECOMPLETO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANOMBRECOMPLETO'
      Origin = 'NOMBRE_COMPLETO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QVentaCabMUESTRAIDABONO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAIDABONO'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object QVentaCabMUESTRANROABONO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANROABONO'
      Origin = 'NUMERO'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object QVentaCabMUESTRAUSACHE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAUSACHE'
      Origin = 'CHEQUES'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object QVentaCabMUESTRAID_NC: TIntegerField
      FieldName = 'MUESTRAID_NC'
      Origin = 'ID_FC'
      ProviderFlags = []
    end
    object QVentaCabMUESTRANRONC: TStringField
      FieldName = 'MUESTRANRONC'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object QVentaCabMUESTRATIPONC: TStringField
      FieldName = 'MUESTRATIPONC'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      Size = 2
    end
    object QVentaCabMUESTRACLASENC: TStringField
      FieldName = 'MUESTRACLASENC'
      Origin = 'CLASECPBTE'
      ProviderFlags = []
      Size = 2
    end
    object QVentaCabMUESTRAAUXILIARTR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAAUXILIARTR'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 25
    end
    object QVentaCabMUESTRALOCALITRANSPORTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRALOCALITRANSPORTE'
      Origin = 'LOCALIDAD'
      ProviderFlags = []
      Size = 50
    end
    object QVentaCabPERCIBE_IVA: TStringField
      FieldName = 'PERCIBE_IVA'
      Origin = 'PERCIBE_IVA'
      FixedChar = True
      Size = 1
    end
    object QVentaCabMINIMO_PERCI_IVA: TFloatField
      FieldName = 'MINIMO_PERCI_IVA'
      Origin = 'MINIMO_PERCI_IVA'
    end
    object QVentaCabMUESTRATRANSPORTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATRANSPORTE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QVentaCabMUESTRA_UNI_TRANSPORTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRA_UNI_TRANSPORTE'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 25
    end
    object QVentaCabMUESTRANRDOCCHOFER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANRDOCCHOFER'
      Origin = 'NUMERO_DOC'
      ProviderFlags = []
    end
    object QVentaCabMUESTRACHOFER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACHOFER'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 45
    end
    object QVentaCabMUESTRATPDOCCHOFER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATPDOCCHOFER'
      Origin = 'TIPO_DOC'
      ProviderFlags = []
      Size = 3
    end
    object QVentaCabMUESTRADOMINIOUNIDADTR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADOMINIOUNIDADTR'
      Origin = 'DOMINIO'
      ProviderFlags = []
      Size = 12
    end
    object QVentaCabMUESTRATETRANSPORTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATETRANSPORTE'
      Origin = 'TELEFONO'
      ProviderFlags = []
      Size = 30
    end
    object QVentaCabMUESTRADIRTRANSPORTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADIRTRANSPORTE'
      Origin = 'DIRECCION'
      ProviderFlags = []
      Size = 50
    end
    object QVentaCabMUESTRANOMBRETRANSPORTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANOMBRETRANSPORTE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object QVentaCabMUESTRACONDIVATRANSPORTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACONDIVATRANSPORTE'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 15
    end
    object QVentaCabMUESTRACUITTRANSPORTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACUITTRANSPORTE'
      Origin = 'CUIT'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object QVentaCabCOT: TStringField
      FieldName = 'COT'
      Origin = '"COT"'
      Size = 25
    end
    object QVentaCabMUESTRADIRECCION_CALLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADIRECCION_CALLE'
      Origin = 'DIRECCION_CALLE'
      ProviderFlags = []
      Size = 40
    end
    object QVentaCabMUESTRADIRECCION_NRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADIRECCION_NRO'
      Origin = 'DIRECCION_NUMERO'
      ProviderFlags = []
      Size = 10
    end
    object QVentaCabMUESTRADIRECCION_PISO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADIRECCION_PISO'
      Origin = 'DIRECCION_PISO'
      ProviderFlags = []
      Size = 10
    end
    object QVentaCabMUESTRADIRECCION_DEPTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADIRECCION_DEPTO'
      Origin = 'DIRECCION_DEPTO'
      ProviderFlags = []
      Size = 10
    end
    object QVentaCabLETRACOT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LETRACOT'
      Origin = 'CODIGO_COT'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object QVentaCabMUESTRANOMBREUSUARIOREAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANOMBREUSUARIOREAL'
      Origin = 'REAL_NAME'
      ProviderFlags = []
      Size = 40
    end
    object QVentaCabMUESTRAAPLICALEY15311: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAAPLICALEY15311'
      Origin = 'APLICA_LEY15311'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object QVentaCabID_OBRA: TIntegerField
      FieldName = 'ID_OBRA'
      Origin = 'ID_OBRA'
      Required = True
    end
    object QVentaCabMUESTRAOBRA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAOBRA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 100
    end
    object QVentaCabPROCESADA: TStringField
      FieldName = 'PROCESADA'
      Origin = 'PROCESADA'
      FixedChar = True
      Size = 1
    end
    object QVentaCabIMPORTE_PERCEPCION_IVA: TFloatField
      FieldName = 'IMPORTE_PERCEPCION_IVA'
      Origin = 'IMPORTE_PERCEPCION_IVA'
    end
    object QVentaCabMUESTRATELEFONO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATELEFONO_1'
      Origin = 'TELEFONO_COMERCIAL_1'
      ProviderFlags = []
      Size = 10
    end
    object QVentaCabMUESTRATELEFONO_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATELEFONO_2'
      Origin = 'TELEFONO_COMERCIAL_2'
      ProviderFlags = []
      Size = 10
    end
    object QVentaCabMUESTRATELEFONOMOVIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATELEFONOMOVIL'
      Origin = 'TELEFONO_CELULAR'
      ProviderFlags = []
      Size = 11
    end
    object QVentaCabNC_POR_DIFERENCIA: TStringField
      FieldName = 'NC_POR_DIFERENCIA'
      Origin = 'NC_POR_DIFERENCIA'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QVentaDet: TFDQuery
    CachedUpdates = True
    Connection = fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtFmtBCD
        TargetDataType = dtDouble
      end
      item
        SourceDataType = dtBCD
        TargetDataType = dtDouble
      end>
    SQL.Strings = (
      'Select fd.*,s.CONTENIDO_COMPRA as MuestraContenido,'
      '  m.signo as MuestraMoneda,'
      '  s.REEMPLAZO_STK as MuestraCodAlternativo,'
      '  s.garantiaoficial as MuestraGtiaOficial,s.acopiable,'
      '  s.iva_modificado as MuestraIVAModificado,'
      '  s.rubro_stk, s.subrubro_stk,'
      '  (e.cantidad-e.cantidad_recibida) as MuestaDiferenciaEntrega,'
      '  coalesce( op.id,-1) as MuestraOrdenProduccion'
      '  '
      'from FcVtaDet fd'
      'left join stock s on s.codigo_stk=fd.codigoarticulo'
      'left join monedas m on m.id=fd.id_moneda'
      'left join fcvtadet_entregas e on e.id_det=fd.id'
      'left join ordenproduccion_cab op on op.id_fcvta=fd.id_cabfac'
      'where fd.Id_CabFac= :id'
      'order by fd.renglon')
    Left = 100
    Top = 577
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QVentaDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QVentaDetID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      Origin = 'ID_CABFAC'
      Required = True
    end
    object QVentaDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QVentaDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QVentaDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QVentaDetRENGLON: TFloatField
      FieldName = 'RENGLON'
      Origin = 'RENGLON'
    end
    object QVentaDetFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
      Required = True
    end
    object QVentaDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object QVentaDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QVentaDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object QVentaDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVentaDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QVentaDetUNIDADES_GRAVADO: TFloatField
      FieldName = 'UNIDADES_GRAVADO'
      Origin = 'UNIDADES_GRAVADO'
    end
    object QVentaDetUNIDADES_EXENTO: TFloatField
      FieldName = 'UNIDADES_EXENTO'
      Origin = 'UNIDADES_EXENTO'
    end
    object QVentaDetUNIDADES_TOTAL: TFloatField
      FieldName = 'UNIDADES_TOTAL'
      Origin = 'UNIDADES_TOTAL'
    end
    object QVentaDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
    end
    object QVentaDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
    end
    object QVentaDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
    end
    object QVentaDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
      Origin = 'UNITARIO_GRAVADO'
    end
    object QVentaDetIVA_UNITARIO: TFloatField
      FieldName = 'IVA_UNITARIO'
      Origin = 'IVA_UNITARIO'
      Required = True
    end
    object QVentaDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
      Origin = 'UNITARIO_EXENTO'
    end
    object QVentaDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
    end
    object QVentaDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVentaDetTOTAL_EXENTO: TFloatField
      FieldName = 'TOTAL_EXENTO'
      Origin = 'TOTAL_EXENTO'
      Required = True
    end
    object QVentaDetTOTAL_GRAVADO: TFloatField
      FieldName = 'TOTAL_GRAVADO'
      Origin = 'TOTAL_GRAVADO'
      Required = True
    end
    object QVentaDetIVA_TOTAL: TFloatField
      FieldName = 'IVA_TOTAL'
      Origin = 'IVA_TOTAL'
      Required = True
    end
    object QVentaDetTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QVentaDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Origin = 'TIPOIVA_TASA'
      Required = True
    end
    object QVentaDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Origin = 'TIPOIVA_SOBRETASA'
      Required = True
    end
    object QVentaDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
    end
    object QVentaDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
      Origin = 'IVA_SOBRETASA'
    end
    object QVentaDetDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      Required = True
    end
    object QVentaDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QVentaDetMARGEN: TFloatField
      FieldName = 'MARGEN'
      Origin = 'MARGEN'
    end
    object QVentaDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVentaDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVentaDetGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      Origin = 'GRAVADO_IB'
      FixedChar = True
      Size = 1
    end
    object QVentaDetCON_NRO_SERIE: TStringField
      FieldName = 'CON_NRO_SERIE'
      Origin = 'CON_NRO_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVentaDetCON_CODIGO_BARRA: TStringField
      FieldName = 'CON_CODIGO_BARRA'
      Origin = 'CON_CODIGO_BARRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVentaDetIB_TASA: TFloatField
      FieldName = 'IB_TASA'
      Origin = 'IB_TASA'
      Required = True
    end
    object QVentaDetTIPOIB_TASA: TIntegerField
      FieldName = 'TIPOIB_TASA'
      Origin = 'TIPOIB_TASA'
      Required = True
    end
    object QVentaDetLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object QVentaDetPRECIO_EDITABLE: TStringField
      FieldName = 'PRECIO_EDITABLE'
      Origin = 'PRECIO_EDITABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVentaDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Origin = 'ID_MONEDA'
      Required = True
    end
    object QVentaDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      Required = True
    end
    object QVentaDetDETALLE_ADICIONAL: TStringField
      FieldName = 'DETALLE_ADICIONAL'
      Origin = 'DETALLE_ADICIONAL'
      Size = 300
    end
    object QVentaDetGRUPO_DETALLE: TIntegerField
      FieldName = 'GRUPO_DETALLE'
      Origin = 'GRUPO_DETALLE'
    end
    object QVentaDetCTA_ORDEN_ID_RECEPCION: TIntegerField
      FieldName = 'CTA_ORDEN_ID_RECEPCION'
      Origin = 'CTA_ORDEN_ID_RECEPCION'
    end
    object QVentaDetCTA_ORDEN_NROCPBTE: TStringField
      FieldName = 'CTA_ORDEN_NROCPBTE'
      Origin = 'CTA_ORDEN_NROCPBTE'
      Size = 13
    end
    object QVentaDetCTA_ORDEN_TIPOCPBTE: TStringField
      FieldName = 'CTA_ORDEN_TIPOCPBTE'
      Origin = 'CTA_ORDEN_TIPOCPBTE'
      Size = 2
    end
    object QVentaDetCTA_ORDEN_CALSECPBTE: TStringField
      FieldName = 'CTA_ORDEN_CALSECPBTE'
      Origin = 'CTA_ORDEN_CALSECPBTE'
      Size = 2
    end
    object QVentaDetMESES_GTIA: TIntegerField
      FieldName = 'MESES_GTIA'
      Origin = 'MESES_GTIA'
      Required = True
    end
    object QVentaDetCODIGOBARRA: TStringField
      FieldName = 'CODIGOBARRA'
      Origin = 'CODIGOBARRA'
      Size = 50
    end
    object QVentaDetDE_PRODUCCION: TStringField
      FieldName = 'DE_PRODUCCION'
      Origin = 'DE_PRODUCCION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVentaDetUNITARIO_TOTAL_OLD: TFloatField
      FieldName = 'UNITARIO_TOTAL_OLD'
      Origin = 'UNITARIO_TOTAL_OLD'
      Required = True
    end
    object QVentaDetUNITARIO_IVA_OLD: TFloatField
      FieldName = 'UNITARIO_IVA_OLD'
      Origin = 'UNITARIO_IVA_OLD'
      Required = True
    end
    object QVentaDetUNI_C_REC: TStringField
      FieldName = 'UNI_C_REC'
      Origin = 'UNI_C_REC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVentaDetITEM_OCOMPRA: TIntegerField
      FieldName = 'ITEM_OCOMPRA'
      Origin = 'ITEM_OCOMPRA'
    end
    object QVentaDetCONTROL_TRAZABILIDAD: TStringField
      FieldName = 'CONTROL_TRAZABILIDAD'
      Origin = 'CONTROL_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVentaDetCANTIDAD_UNIDADES: TFloatField
      FieldName = 'CANTIDAD_UNIDADES'
      Origin = 'CANTIDAD_UNIDADES'
    end
    object QVentaDetPRESENTACION_CANT: TFloatField
      FieldName = 'PRESENTACION_CANT'
      Origin = 'PRESENTACION_CANT'
      Required = True
    end
    object QVentaDetPRESENTACION_UNIDAD: TStringField
      FieldName = 'PRESENTACION_UNIDAD'
      Origin = 'PRESENTACION_UNIDAD'
      Size = 3
    end
    object QVentaDetID_DET_REMITO: TIntegerField
      FieldName = 'ID_DET_REMITO'
      Origin = 'ID_DET_REMITO'
    end
    object QVentaDetMUESTRAMONEDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAMONEDA'
      Origin = 'SIGNO'
      ProviderFlags = []
      Size = 5
    end
    object QVentaDetMUESTRACODALTERNATIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACODALTERNATIVO'
      Origin = 'REEMPLAZO_STK'
      ProviderFlags = []
    end
    object QVentaDetMUESTRAGTIAOFICIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAGTIAOFICIAL'
      Origin = 'GARANTIAOFICIAL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object QVentaDetACOPIABLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ACOPIABLE'
      Origin = 'ACOPIABLE'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object QVentaDetMUESTRAIVAMODIFICADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAIVAMODIFICADO'
      Origin = 'IVA_MODIFICADO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object QVentaDetRUBRO_STK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      ProviderFlags = []
      Size = 3
    end
    object QVentaDetSUBRUBRO_STK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SUBRUBRO_STK'
      Origin = 'SUBRUBRO_STK'
      ProviderFlags = []
      Size = 5
    end
    object QVentaDetMUESTADIFERENCIAENTREGA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTADIFERENCIAENTREGA'
      Origin = 'DIFERENCIA'
      ProviderFlags = []
    end
    object QVentaDetMUESTRAORDENPRODUCCION: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAORDENPRODUCCION'
      Origin = 'MUESTRAORDENPRODUCCION'
      ProviderFlags = []
    end
    object QVentaDetPERCIBE_IVA: TStringField
      FieldName = 'PERCIBE_IVA'
      Origin = 'PERCIBE_IVA'
      FixedChar = True
      Size = 1
    end
    object QVentaDetTASA_PERCEP_IVA: TFloatField
      FieldName = 'TASA_PERCEP_IVA'
      Origin = 'TASA_PERCEP_IVA'
      Required = True
    end
    object QVentaDetID_TASA_PERCEPCION_IVA: TIntegerField
      FieldName = 'ID_TASA_PERCEPCION_IVA'
      Origin = 'ID_TASA_PERCEPCION_IVA'
    end
    object QVentaDetPERCEPCION_IVA_DIFERENCIAL: TStringField
      FieldName = 'PERCEPCION_IVA_DIFERENCIAL'
      Origin = 'PERCEPCION_IVA_DIFERENCIAL'
      FixedChar = True
      Size = 1
    end
    object QVentaDetPRESENTACION_TOLERANCIA: TFloatField
      FieldName = 'PRESENTACION_TOLERANCIA'
      Origin = 'PRESENTACION_TOLERANCIA'
      Required = True
    end
    object QVentaDetMUESTRACONTENIDO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACONTENIDO'
      Origin = 'CONTENIDO_COMPRA'
      ProviderFlags = []
    end
    object QVentaDetUNITARIO_TOTAL_OLD_2: TFloatField
      FieldName = 'UNITARIO_TOTAL_OLD_2'
      Origin = 'UNITARIO_TOTAL_OLD_2'
      Required = True
    end
  end
  object QImpuestosVta: TFDQuery
    Connection = fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtBCD
        TargetDataType = dtDouble
      end
      item
        SourceDataType = dtFmtBCD
        TargetDataType = dtDouble
      end>
    SQL.Strings = (
      'Select * from FcVtaImpuesto Where Id_FcVtaCab=:id')
    Left = 176
    Top = 615
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QImpuestosVtaID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      Origin = 'ID_IMPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QImpuestosVtaID_FCVTACAB: TIntegerField
      FieldName = 'ID_FCVTACAB'
      Origin = 'ID_FCVTACAB'
      Required = True
    end
    object QImpuestosVtaCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
      Origin = 'CODIGO_GRAVAMEN'
    end
    object QImpuestosVtaDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QImpuestosVtaNETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
    end
    object QImpuestosVtaTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object QImpuestosVtaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
  end
  object QVtaDetalleConsig: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      
        'Select c.*,rec.nrocpbte as MuestraRecepcionNro from FCVTADET_CON' +
        'SIGNACIONES c'
      'left join recepmercadet rec on rec.id=c.id_mov_recepcion_det'
      'where c.Id_CabFac= :id')
    Left = 272
    Top = 569
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QVtaDetalleConsigID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QVtaDetalleConsigID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      Origin = 'ID_CABFAC'
      Required = True
    end
    object QVtaDetalleConsigID_DETFAC: TIntegerField
      FieldName = 'ID_DETFAC'
      Origin = 'ID_DETFAC'
    end
    object QVtaDetalleConsigCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object QVtaDetalleConsigDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QVtaDetalleConsigCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QVtaDetalleConsigID_MOV_RECEPCION_CAB: TIntegerField
      FieldName = 'ID_MOV_RECEPCION_CAB'
      Origin = 'ID_MOV_RECEPCION_CAB'
    end
    object QVtaDetalleConsigID_MOV_RECEPCION_DET: TIntegerField
      FieldName = 'ID_MOV_RECEPCION_DET'
      Origin = 'ID_MOV_RECEPCION_DET'
    end
    object QVtaDetalleConsigLIQUIDADA: TStringField
      FieldName = 'LIQUIDADA'
      Origin = 'LIQUIDADA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVtaDetalleConsigPRECIO_VTA: TFloatField
      FieldName = 'PRECIO_VTA'
      Origin = 'PRECIO_VTA'
      Required = True
    end
    object QVtaDetalleConsigPRECIO_COMPRA: TFloatField
      FieldName = 'PRECIO_COMPRA'
      Origin = 'PRECIO_COMPRA'
      Required = True
    end
    object QVtaDetalleConsigCODIGO_PROVEEDOR: TStringField
      FieldName = 'CODIGO_PROVEEDOR'
      Origin = 'CODIGO_PROVEEDOR'
      Required = True
      Size = 6
    end
    object QVtaDetalleConsigMUESTRARECEPCIONNRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRARECEPCIONNRO'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
  end
  object QVtaSubDetalle: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'Select * from FcVtaSubDetalle where Id_DetFac= :id ')
    Left = 376
    Top = 449
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = '804653'
      end>
    object QVtaSubDetalleID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QVtaSubDetalleID_DETFAC: TIntegerField
      FieldName = 'ID_DETFAC'
      Origin = 'ID_DETFAC'
    end
    object QVtaSubDetalleID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      Origin = 'ID_CABFAC'
      Required = True
    end
    object QVtaSubDetalleTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QVtaSubDetalleCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QVtaSubDetalleFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object QVtaSubDetalleNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QVtaSubDetalleCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Size = 8
    end
    object QVtaSubDetalleSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 50
    end
    object QVtaSubDetalleDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QVtaSubDetalleTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QVentaLote: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'Select * from FCvta_LOTES where Id_fc = :id ')
    Left = 24
    Top = 628
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QVentaLoteID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QVentaLoteID_DET: TIntegerField
      FieldName = 'ID_DET'
      Origin = 'ID_DET'
    end
    object QVentaLoteID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
    end
    object QVentaLoteID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      Origin = 'ID_LOTE'
      Required = True
    end
    object QVentaLoteCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object QVentaLoteLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 15
    end
    object QVentaLoteDESPACHO: TStringField
      FieldName = 'DESPACHO'
      Origin = 'DESPACHO'
    end
    object QVentaLoteCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QVentaLoteFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QVentaLoteFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
    object QVentaLoteDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object QVentaLoteTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Size = 2
    end
  end
  object QInscripcion: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from inscripcion where Codigo=:Codigo')
    Left = 557
    Top = 117
    ParamData = <
      item
        Position = 1
        Name = 'Codigo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QInscripcionCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QInscripcionDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 15
    end
    object QInscripcionAPLICAPERCEPCIONIVA: TStringField
      FieldName = 'APLICAPERCEPCIONIVA'
      Origin = 'APLICAPERCEPCIONIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QInscripcionAPLICAPERCEPCIONIIBB: TStringField
      FieldName = 'APLICAPERCEPCIONIIBB'
      Origin = 'APLICAPERCEPCIONIIBB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QInscripcionCOBRASOBRETASA: TStringField
      FieldName = 'COBRASOBRETASA'
      Origin = 'COBRASOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QInscripcionDISCRIMINAIVA: TStringField
      FieldName = 'DISCRIMINAIVA'
      Origin = 'DISCRIMINAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QFPago: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from F_Pago'
      'where Codigo= :Codigo')
    Left = 472
    Top = 116
    ParamData = <
      item
        Position = 1
        Name = 'Codigo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QFPagoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFPagoDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Required = True
    end
    object QFPagoDIAS: TIntegerField
      FieldName = 'DIAS'
      Origin = 'DIAS'
    end
    object QFPagoDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
    end
  end
  object QSucursal: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from sucursal'
      'where Codigo = :Codigo')
    Left = 272
    Top = 518
    ParamData = <
      item
        Position = 1
        Name = 'Codigo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 35
    end
    object QSucursalDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
    end
    object QSucursalLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
    end
    object QSucursalTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Origin = 'TELEFONO1'
      Size = 15
    end
    object QSucursalTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Origin = 'TELEFONO2'
      Size = 15
    end
    object QSucursalRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
    end
    object QSucursalAPLICA_PERCEPCION_IIBB: TStringField
      FieldName = 'APLICA_PERCEPCION_IIBB'
      Origin = 'APLICA_PERCEPCION_IIBB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QSucursalGENERA_XML_COMUN: TStringField
      FieldName = 'GENERA_XML_COMUN'
      Origin = 'GENERA_XML_COMUN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QSucursalHOST: TStringField
      FieldName = 'HOST'
      Origin = 'HOST'
      Size = 250
    end
    object QSucursalCERTIFICADO_ELEC: TStringField
      FieldName = 'CERTIFICADO_ELEC'
      Origin = 'CERTIFICADO_ELEC'
      Size = 100
    end
    object QSucursalCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QSucursalRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QSucursalCOT_CLAVE: TStringField
      FieldName = 'COT_CLAVE'
      Origin = 'COT_CLAVE'
    end
    object QSucursalCOT_CUIT: TStringField
      FieldName = 'COT_CUIT'
      Origin = 'COT_CUIT'
      Size = 13
    end
    object QSucursalAPLICA_LEY15311: TStringField
      FieldName = 'APLICA_LEY15311'
      Origin = 'APLICA_LEY15311'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QIva: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from gravamen where codigo=:id')
    Left = 664
    Top = 64
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QIvaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QIvaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 15
    end
    object QIvaTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object QIvaCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Origin = 'COLUMNA'
      Required = True
    end
  end
  object QLDRCliente: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from LdrCliente Where Codigo_Cliente=:Codigo'
      'order by codigo_ldr')
    Left = 272
    Top = 215
    ParamData = <
      item
        Position = 1
        Name = 'Codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QLDRClienteCODIGO_CLIENTE: TStringField
      FieldName = 'CODIGO_CLIENTE'
      Origin = 'CODIGO_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QLDRClienteCODIGO_LDR: TIntegerField
      FieldName = 'CODIGO_LDR'
      Origin = 'CODIGO_LDR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLDRClienteNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QLDRClienteDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object QLDRClienteCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QLDRClienteLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 40
    end
    object QLDRClientePROVINCIA: TIntegerField
      FieldName = 'PROVINCIA'
      Origin = 'PROVINCIA'
    end
    object QLDRClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 250
    end
  end
  object QAjusteSubDetalle: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'Select * from rtomercasubdet where Id_rtoCab= :id ')
    Left = 472
    Top = 367
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QAjustesLote: TFDQuery
    Connection = fdcGestion
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
      end
      item
        SourceDataType = dtInt64
        TargetDataType = dtInt32
      end
      item
        SourceDataType = dtFmtBCD
        TargetDataType = dtDouble
      end>
    SQL.Strings = (
      'Select l.* from rtomerca_LOTES l where l.Id_fc = :id')
    Left = 472
    Top = 257
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QAjustesLoteID_DET: TIntegerField
      FieldName = 'ID_DET'
      Origin = 'ID_DET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QAjustesLoteID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QAjustesLoteID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAjustesLoteID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      Origin = 'ID_LOTE'
      Required = True
    end
    object QAjustesLoteCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object QAjustesLoteLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 15
    end
    object QAjustesLoteDESPACHO: TStringField
      FieldName = 'DESPACHO'
      Origin = 'DESPACHO'
    end
    object QAjustesLoteCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QAjustesLoteFECHA: TDateField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QAjustesLoteFECHAVTO: TDateField
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
    object QAjustesLoteDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object QAjustesLoteTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Size = 2
    end
  end
  object QLDR: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from ldrcliente'
      'where (Codigo_Cliente=:Codigo) and (Codigo_ldr = :ldr)')
    Left = 176
    Top = 202
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end
      item
        Name = 'LDR'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QMov_Carnes: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select dc.* from fcvtadet_carnes dc where dc.id_det = :id')
    Left = 557
    Top = 504
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QMov_CarnesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMov_CarnesID_DET: TIntegerField
      FieldName = 'ID_DET'
      Origin = 'ID_DET'
      Required = True
    end
    object QMov_CarnesID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      Required = True
    end
    object QMov_CarnesCLASIFICACION: TStringField
      FieldName = 'CLASIFICACION'
      Origin = 'CLASIFICACION'
      Size = 2
    end
    object QMov_CarnesNRO_TROPA: TStringField
      FieldName = 'NRO_TROPA'
      Origin = 'NRO_TROPA'
      Size = 6
    end
    object QMov_CarnesMEDIA_1: TIntegerField
      FieldName = 'MEDIA_1'
      Origin = 'MEDIA_1'
    end
    object QMov_CarnesMEDIA_2: TIntegerField
      FieldName = 'MEDIA_2'
      Origin = 'MEDIA_2'
    end
    object QMov_CarnesMEDIA_3: TIntegerField
      FieldName = 'MEDIA_3'
      Origin = 'MEDIA_3'
    end
    object QMov_CarnesMEDIA_4: TIntegerField
      FieldName = 'MEDIA_4'
      Origin = 'MEDIA_4'
    end
    object QMov_CarnesMEDIA_5: TIntegerField
      FieldName = 'MEDIA_5'
      Origin = 'MEDIA_5'
    end
    object QMov_CarnesMEDIA_6: TIntegerField
      FieldName = 'MEDIA_6'
      Origin = 'MEDIA_6'
    end
    object QMov_CarnesMEDIA_7: TIntegerField
      FieldName = 'MEDIA_7'
      Origin = 'MEDIA_7'
    end
    object QMov_CarnesMEDIA_8: TIntegerField
      FieldName = 'MEDIA_8'
      Origin = 'MEDIA_8'
    end
    object QMov_CarnesT_KILOS: TIntegerField
      FieldName = 'T_KILOS'
      Origin = 'T_KILOS'
      Required = True
    end
    object QMov_CarnesT_MEDIAS: TIntegerField
      FieldName = 'T_MEDIAS'
      Origin = 'T_MEDIAS'
      Required = True
    end
  end
  object QFcVta_Prod_Det: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      
        'select d.* from fcvta_produccion_det d where d.id_fccab = :id_ca' +
        'b')
    Left = 792
    Top = 504
    ParamData = <
      item
        Position = 1
        Name = 'ID_CAB'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QFcVta_Prod_DetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFcVta_Prod_DetID_FCDET: TIntegerField
      FieldName = 'ID_FCDET'
      Origin = 'ID_FCDET'
      Required = True
    end
    object QFcVta_Prod_DetID_FCCAB: TIntegerField
      FieldName = 'ID_FCCAB'
      Origin = 'ID_FCCAB'
      Required = True
    end
    object QFcVta_Prod_DetCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object QFcVta_Prod_DetDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QFcVta_Prod_DetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object QFcVta_Prod_DetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QFcVta_Prod_DetDEPOSITO_DESTINO: TIntegerField
      FieldName = 'DEPOSITO_DESTINO'
      Origin = 'DEPOSITO_DESTINO'
      Required = True
    end
    object QFcVta_Prod_DetSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QFcVta_Prod_DetFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QFcVta_Prod_DetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Required = True
      Size = 1
    end
  end
  object QFcVta_Prod_Mov: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      
        'select m.* from fcvta_produccion_mov m where m.id_fc_det = :id_d' +
        'et')
    Left = 792
    Top = 560
    ParamData = <
      item
        Position = 1
        Name = 'id_det'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QFcVta_Prod_MovID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFcVta_Prod_MovID_FC_DET: TIntegerField
      FieldName = 'ID_FC_DET'
      Origin = 'ID_FC_DET'
    end
    object QFcVta_Prod_MovCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object QFcVta_Prod_MovDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QFcVta_Prod_MovCANTIDAD_UNITARIA: TFloatField
      FieldName = 'CANTIDAD_UNITARIA'
      Origin = 'CANTIDAD_UNITARIA'
    end
    object QFcVta_Prod_MovCANTIDAD_ESTIMADA: TFloatField
      FieldName = 'CANTIDAD_ESTIMADA'
      Origin = 'CANTIDAD_ESTIMADA'
    end
    object QFcVta_Prod_MovCANTIDAD_REAL: TFloatField
      FieldName = 'CANTIDAD_REAL'
      Origin = 'CANTIDAD_REAL'
    end
    object QFcVta_Prod_MovDEPOSITO_ORIGEN: TIntegerField
      FieldName = 'DEPOSITO_ORIGEN'
      Origin = 'DEPOSITO_ORIGEN'
    end
    object QFcVta_Prod_MovAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      FixedChar = True
      Size = 1
    end
  end
  object QSQLConsulta: TFDQuery
    AfterClose = QSQLConsultaAfterClose
    Connection = fdcGestion
    Left = 664
    Top = 8
  end
  object SPAplicarLibroIva: TFDStoredProc
    Connection = fdcGestion
    StoredProcName = 'APLICAR_LIBRO_IVA'
    Left = 1216
    Top = 264
    ParamData = <
      item
        Name = 'TIPO'
        DataType = ftString
        Precision = 1
        ParamType = ptInput
      end
      item
        Name = 'ID'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end>
  end
  object CDSPrecioXCant: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_lista'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPrecioXCant'
    Left = 824
    Top = 728
    object CDSPrecioXCantCANTIDAD: TFloatField
      DisplayLabel = 'Cant.'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSPrecioXCantPRECIO: TFloatField
      DisplayLabel = 'Pr.Final'
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSPrecioXCantPRECIO_SINIVA: TFloatField
      DisplayLabel = 'Pr.S/Iva'
      FieldName = 'PRECIO_SINIVA'
      Origin = 'PRECIO_SINIVA'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
  object DSPrecioXCant: TDataSource
    DataSet = CDSPrecioXCant
    Left = 912
    Top = 728
  end
  object DSPPrecioXCant: TDataSetProvider
    DataSet = QPrecioXCant
    Options = []
    Left = 736
    Top = 728
  end
  object QPrecioXCant: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      
        'select d.cantidad,(d.precio_exento * m.cotizacion) as precio_exe' +
        'nto ,'
      
        '                  (d.precio_gravado * m.cotizacion) as precio_gr' +
        'avado,'
      
        '                  ((d.precio_exento+d.precio_gravado) * m.cotiza' +
        'cion) as Precio_SINIVA,'
      
        '(d.precio * m.cotizacion) as Precio from listaprecioespecialsubd' +
        'etalle d'
      'left join listaprecioespecialart a on a.id=d.id_listadetalle'
      'left join stock s on s.codigo_stk = d.codigo'
      'left join monedas m on m.id=s.moneda'
      'where d.codigo=:codigo and a.id_cab=:id_lista'
      'order by d.cantidad asc')
    Left = 640
    Top = 728
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'id_lista'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object CDSListaPreciosUsuarios: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'usuario'
        ParamType = ptInput
      end>
    ProviderName = 'DSPListaPreciosUsuarios'
    Left = 984
    Top = 680
    object CDSListaPreciosUsuariosID_LISTA: TIntegerField
      FieldName = 'ID_LISTA'
    end
    object CDSListaPreciosUsuariosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSListaPreciosUsuariosID: TIntegerField
      FieldName = 'ID'
    end
    object CDSListaPreciosUsuariosEXCLUSIVO_EFECTIVO: TStringField
      FieldName = 'EXCLUSIVO_EFECTIVO'
      FixedChar = True
      Size = 1
    end
    object CDSListaPreciosUsuariosF_PAGO: TIntegerField
      FieldName = 'F_PAGO'
    end
    object CDSListaPreciosUsuariosID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
  end
  object DSPListaPreciosUsuarios: TDataSetProvider
    DataSet = QListaPreciosUsuarios
    Options = []
    Left = 880
    Top = 677
  end
  object QListaPreciosUsuarios: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select l.id_usuario,l.id_lista,lp.nombre,'
      
        '       lp.id,lp.EXCLUSIVO_EFECTIVO,lp.f_pago from listaprecios_u' +
        'suario l'
      'left join listaprecioespecialcab lp on lp.id=l.id_lista'
      'where l.id_usuario= :usuario'
      'order by lp.nombre')
    Left = 784
    Top = 674
    ParamData = <
      item
        Position = 1
        Name = 'usuario'
        DataType = ftFloat
        ParamType = ptInput
      end>
    object intgrfldQListaPreciosUsuariosID_LISTA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_LISTA'
    end
    object QListaPreciosUsuariosNOMBRE: TStringField
      DisplayWidth = 50
      FieldName = 'NOMBRE'
      Size = 50
    end
    object QListaPreciosUsuariosID: TIntegerField
      FieldName = 'ID'
    end
    object QListaPreciosUsuariosEXCLUSIVO_EFECTIVO: TStringField
      FieldName = 'EXCLUSIVO_EFECTIVO'
      FixedChar = True
      Size = 1
    end
    object QListaPreciosUsuariosF_PAGO: TIntegerField
      FieldName = 'F_PAGO'
    end
    object QListaPreciosUsuariosID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
  end
  object spAgregarPedidoBorrador: TFDStoredProc
    Connection = fdcGestion
    StoredProcName = 'AGRE_BORRADOR_PEDIDO'
    Left = 1216
    Top = 640
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        Precision = 8
        ParamType = ptInput
      end
      item
        Name = 'DETALLE'
        DataType = ftString
        Precision = 45
        ParamType = ptInput
      end
      item
        Name = 'CANTIDAD'
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 2
        ParamType = ptInput
      end>
  end
  object QStockLote: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select s.*,d.nombre as MuestraDeposito from stock_lotes_impo s'
      'left join depositos d on d.id=s.deposito'
      'where s.id = :idLote')
    Left = 376
    Top = 256
    ParamData = <
      item
        Name = 'idLote'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QStockLoteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QStockLoteID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object QStockLoteCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 8
    end
    object QStockLoteID_DETALLE_CPBTE: TIntegerField
      FieldName = 'ID_DETALLE_CPBTE'
      Required = True
    end
    object QStockLoteFECHA_ENTRADA: TSQLTimeStampField
      FieldName = 'FECHA_ENTRADA'
    end
    object QStockLoteFECHA_VTO: TSQLTimeStampField
      FieldName = 'FECHA_VTO'
    end
    object QStockLoteLOTE: TStringField
      FieldName = 'LOTE'
      Size = 15
    end
    object QStockLoteDESPACHO: TStringField
      FieldName = 'DESPACHO'
      Size = 15
    end
    object QStockLoteCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object QStockLoteTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QStockLoteDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object QStockLoteSALDO: TFloatField
      FieldName = 'SALDO'
      Required = True
    end
    object QStockLoteMUESTRADEPOSITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
  end
  object QCondCompraProv: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select CC.*,'
      'FP.Detalle,'
      'FP.Dias,'
      'FP.Descuento as Descuento_FPago from CondCompra CC'
      'inner join F_Pago FP on FP.Codigo=CC.CodigoPago'
      'where  CC.CodigoProvee = :Codigo')
    Left = 557
    Top = 207
    ParamData = <
      item
        Name = 'Codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QCondCompraProvCODIGOPROVEE: TStringField
      FieldName = 'CODIGOPROVEE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QCondCompraProvCODIGOPAGO: TIntegerField
      FieldName = 'CODIGOPAGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCondCompraProvDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object QCondCompraProvDETALLE: TStringField
      FieldName = 'DETALLE'
      ProviderFlags = []
      Required = True
    end
    object QCondCompraProvDIAS: TIntegerField
      FieldName = 'DIAS'
      ProviderFlags = []
    end
    object QCondCompraProvDESCUENTO_FPAGO: TFloatField
      FieldName = 'DESCUENTO_FPAGO'
    end
  end
  object QCondVentaCli: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select CV.*,'
      '  FP.Detalle,'
      '  FP.Dias,'
      '  FP.Descuento as Descuento_FPago'
      'from CondVenta CV'
      '  inner join F_Pago FP on FP.Codigo=CV.CodigoPago'
      'where CV.CodigoCliente= :Codigo  ')
    Left = 664
    Top = 119
    ParamData = <
      item
        Name = 'Codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QCondVentaCliCODIGOCLIENTE: TStringField
      FieldName = 'CODIGOCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QCondVentaCliCODIGOPAGO: TIntegerField
      FieldName = 'CODIGOPAGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCondVentaCliDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object QCondVentaCliPOR_DEFECTO: TStringField
      FieldName = 'POR_DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCondVentaCliDETALLE: TStringField
      FieldName = 'DETALLE'
      ProviderFlags = []
      Required = True
    end
    object QCondVentaCliDIAS: TIntegerField
      FieldName = 'DIAS'
      ProviderFlags = []
    end
    object QCondVentaCliDESCUENTO_FPAGO: TFloatField
      FieldName = 'DESCUENTO_FPAGO'
      ProviderFlags = []
    end
  end
  object QClienteContrato: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'SELECT C.* '
      'FROM Clientes_contrato C'
      'where (c.codigo=:codigo)')
    Left = 184
    Top = 314
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QClienteContratoCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QClienteContratoNRO_CONTRATO: TStringField
      FieldName = 'NRO_CONTRATO'
      Size = 10
    end
    object QClienteContratoTIPO_SERVICIO: TIntegerField
      FieldName = 'TIPO_SERVICIO'
    end
    object QClienteContratoFECHA_SOLICITUD: TSQLTimeStampField
      FieldName = 'FECHA_SOLICITUD'
    end
    object QClienteContratoFECHA_INSTALACION: TSQLTimeStampField
      FieldName = 'FECHA_INSTALACION'
    end
    object QClienteContratoINCIO_SERVICIO: TSQLTimeStampField
      FieldName = 'INCIO_SERVICIO'
    end
    object QClienteContratoLUGAR_INSTALACION: TStringField
      FieldName = 'LUGAR_INSTALACION'
      Size = 40
    end
    object QClienteContratoCOSTO_INICAL: TFloatField
      FieldName = 'COSTO_INICAL'
    end
    object QClienteContratoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
  end
  object QClientesAnexos: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from clientes_anexos Where Cliente=:Codigo')
    Left = 376
    Top = 208
    ParamData = <
      item
        Name = 'Codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QClientesAnexosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QClientesAnexosCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QClientesAnexosARCHIVO: TStringField
      FieldName = 'ARCHIVO'
      Size = 200
    end
  end
  object QClientesGarantes: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from clientes_garantes Where codigoCliente=:Codigo')
    Left = 272
    Top = 266
    ParamData = <
      item
        Name = 'Codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QClientesGarantesID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QClientesGarantesCODIGOCLIENTE: TStringField
      FieldName = 'CODIGOCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QClientesGarantesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object QClientesGarantesDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 100
    end
    object QClientesGarantesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 50
    end
    object QClientesGarantesCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 10
    end
    object QClientesGarantesTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Size = 15
    end
    object QClientesGarantesTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Size = 15
    end
    object QClientesGarantesCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object QClientesGarantesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 150
    end
    object QClientesGarantesPOR_DEFECTO: TStringField
      FieldName = 'POR_DEFECTO'
      FixedChar = True
      Size = 1
    end
  end
  object QCodRipsa: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select c.* from clientes_codripsa  c where c.codigo = :codigo')
    Left = 664
    Top = 216
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QCodRipsaCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QCodRipsaCODIGO_RIPSA: TStringField
      FieldName = 'CODIGO_RIPSA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
  end
  object QRemitoCab: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select Rto.*,'
      '  Fp.Detalle as MuestraCondVenta,'
      '  De.Nombre as MuestraDeposito,'
      '  Su.Detalle as MuestraSucursal,'
      '  Ldr.Nombre as MuestraLdr,'
      '  Ldr.direccion as MuestraLDireccionLdr,'
      '  Ldr.CPostal as MuestraCPostalLdr,'
      '  Ldr.Localidad as MuestraLocalidadLdr,'
      '  ins.Detalle as MuestraIva,'
      '  cp.denominacion as MuestraComprobante,'
      '  cp.id_comprobante as Id_TipoComprobante,'
      '  v.nombre as MuestraVendedor,'
      '  cl.telefono_Comercial_1 as MuestraTelefono1,'
      '  cl.telefono_Comercial_2 as MuestraTelefono2,'
      '  tp.cuit as MuestraCuiTransporte,'
      '  tpIns.detalle as MuestraCondIvaTransporte,'
      '  tp.direccion as MuestraDirTransporte,'
      '  tp.telefono as MuestraTeTransporte,'
      '  tp.localidad as MuestraLocaliTransporte,'
      '  tp.nombre as MuestraNombreTransporte,'
      '  cp.Codigo_Afip as MuestraCodigoAfip,'
      '  cl.observaciones1 as MuestraObsCliente1,'
      '  cl.observaciones2 as MuestraObsCliente2,'
      '  cho.nombre as MuestraChofer,'
      '  cpos.telediscado as MuestraTele,'
      '  utr.descripcion as Muestra_uni_transporte,'
      '  uau.descripcion as Muestra_aux_transporte,'
      '  utr.dominio as MuestraDominioUnidTr,'
      '  np.nrocpbte as MuestraNotaPedido,'
      '  np.id as Muestra_id_NotaPedido,'
      '  pr.nombre as MuestraProvincia,'
      '  pr.codigo_cot as LetraCOT,'
      '  cl.direccion_calle as MuestraDireccion_Calle,'
      '  cl.direccion_numero as MuestraDireccion_Nro,'
      '  cl.direccion_piso as MuestraDireccion_Piso,'
      '  cl.direccion_depto as MuestraDireccion_Depto,'
      '  u.real_name as MuestraNombreUsuarioReal'
      'from RtoCab Rto'
      '  left join clientes cl on cl.codigo=rto.codigo'
      '  left join F_Pago Fp on Fp.Codigo=Rto.CondicionVta'
      '  left join personal v on v.codigo=rto.vendedor'
      '  left join Depositos De  on De.Id=Rto.Deposito'
      '  left join Sucursal Su  on Su.Codigo=Rto.Sucursal'
      '  left join inscripcion ins on ins.codigo=Rto.TipoIva'
      
        '  left join LdrCliente Ldr on ((Ldr.Codigo_Cliente=Rto.Codigo) a' +
        'nd (Ldr.Codigo_Ldr=Rto.Ldr))'
      
        '  left join comprobantes cp on cp.clase_comprob=Rto.ClaseCpbte a' +
        'nd'
      '            cp.letra        = Rto.LetraRto and'
      '            cp.sucursal     = Rto.sucursal and'
      '            cp.tipo_comprob = Rto.tipocpbte and'
      '            cp.Compra_venta = '#39'V'#39
      '  left join transportes tp on tp.id=rto.id_transporte'
      
        '  left join transporte_choferes cho on cho.id=rto.id_chofer and ' +
        'cho.id_transporte=rto.id_transporte'
      '  left join inscripcion Tpins on Tpins.codigo=tp.condicion_iva'
      '  left join c_postal cpos on cpos.id_postal=cl.id_cod_postal'
      '  left join unidades_tr utr on utr.id=rto.trasnporte_unidad'
      '  left join unid_aux_tr uau on uau.id=rto.trasnporte_adicional'
      
        '  left join npedidocab_cliente np on np.entrega_id_cpbte  = rto.' +
        'id_rto and'
      
        '                                     np.entrega_tipocpbte = rto.' +
        'tipocpbte'
      '  left join provincia pr on pr.id_pro=cpos.provincia'
      '  left join ucs_users u on u.user_name=rto.usuario'
      'where Rto.TipoCpbte  = :TipoCpbte'
      '      and Rto.id_Rto = :id'
      '')
    Left = 176
    Top = 703
    ParamData = <
      item
        Position = 1
        Name = 'TipoCpbte'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRemitoCabID_RTO: TIntegerField
      FieldName = 'ID_RTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRemitoCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QRemitoCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QRemitoCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QRemitoCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object QRemitoCabLETRARTO: TStringField
      FieldName = 'LETRARTO'
      Size = 1
    end
    object QRemitoCabSUCRTO: TStringField
      FieldName = 'SUCRTO'
      Size = 4
    end
    object QRemitoCabNUMERORTO: TStringField
      FieldName = 'NUMERORTO'
      Size = 8
    end
    object QRemitoCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object QRemitoCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object QRemitoCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object QRemitoCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object QRemitoCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object QRemitoCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
    end
    object QRemitoCabCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object QRemitoCabLISTAPRECIO: TIntegerField
      FieldName = 'LISTAPRECIO'
    end
    object QRemitoCabFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
    end
    object QRemitoCabFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
    end
    object QRemitoCabCONDICIONVTA: TIntegerField
      FieldName = 'CONDICIONVTA'
    end
    object QRemitoCabANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object QRemitoCabNROFACT: TStringField
      FieldName = 'NROFACT'
      Size = 13
    end
    object QRemitoCabN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
    end
    object QRemitoCabNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
    end
    object QRemitoCabNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
    end
    object QRemitoCabDSTO: TFloatField
      FieldName = 'DSTO'
    end
    object QRemitoCabDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
    end
    object QRemitoCabNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
    end
    object QRemitoCabNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
    end
    object QRemitoCabTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object QRemitoCabDEBE: TFloatField
      FieldName = 'DEBE'
    end
    object QRemitoCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Size = 1
    end
    object QRemitoCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Size = 60
    end
    object QRemitoCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Size = 60
    end
    object QRemitoCabCPTE_MANUAL: TStringField
      FieldName = 'CPTE_MANUAL'
      Size = 1
    end
    object QRemitoCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object QRemitoCabZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object QRemitoCabLDR: TIntegerField
      FieldName = 'LDR'
    end
    object QRemitoCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object QRemitoCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object QRemitoCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Size = 1
    end
    object QRemitoCabNROENTREGA: TIntegerField
      FieldName = 'NROENTREGA'
    end
    object QRemitoCabINGRESA_A_CTACTE: TStringField
      FieldName = 'INGRESA_A_CTACTE'
      Size = 1
    end
    object QRemitoCabINGRESA_LIBRO_IVA: TStringField
      FieldName = 'INGRESA_LIBRO_IVA'
      Size = 1
    end
    object QRemitoCabIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
    end
    object QRemitoCabCOMISIONVENDEDOR: TFloatField
      FieldName = 'COMISIONVENDEDOR'
    end
    object QRemitoCabVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 6
    end
    object QRemitoCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object QRemitoCabRENGLONES: TSmallintField
      FieldName = 'RENGLONES'
    end
    object QRemitoCabNOTAPEDIDO_ID: TIntegerField
      FieldName = 'NOTAPEDIDO_ID'
    end
    object QRemitoCabNOTAPEDIDO_NROCPBTE: TStringField
      FieldName = 'NOTAPEDIDO_NROCPBTE'
      Size = 13
    end
    object QRemitoCabID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
    end
    object QRemitoCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object QRemitoCabTAREAS: TStringField
      FieldName = 'TAREAS'
      Required = True
      Size = 10
    end
    object QRemitoCabPRESUPUESTO_ID: TIntegerField
      FieldName = 'PRESUPUESTO_ID'
    end
    object QRemitoCabPRESUPUESTO_NROCPBTE: TStringField
      FieldName = 'PRESUPUESTO_NROCPBTE'
      Size = 13
    end
    object QRemitoCabNOTAVTA_ID: TIntegerField
      FieldName = 'NOTAVTA_ID'
    end
    object QRemitoCabNOTAVTA_NROCPBTE: TStringField
      FieldName = 'NOTAVTA_NROCPBTE'
      Size = 13
    end
    object QRemitoCabMUESTRACONDVENTA: TStringField
      FieldName = 'MUESTRACONDVENTA'
      ProviderFlags = []
    end
    object QRemitoCabMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      ProviderFlags = []
      Size = 25
    end
    object QRemitoCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object QRemitoCabMUESTRALDR: TStringField
      FieldName = 'MUESTRALDR'
      ProviderFlags = []
      Size = 35
    end
    object QRemitoCabMUESTRAIVA: TStringField
      FieldName = 'MUESTRAIVA'
      ProviderFlags = []
      Size = 15
    end
    object QRemitoCabMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object QRemitoCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
    end
    object QRemitoCabMUESTRAVENDEDOR: TStringField
      FieldName = 'MUESTRAVENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object QRemitoCabCON_GTIA_EXTENDIDA: TStringField
      FieldName = 'CON_GTIA_EXTENDIDA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRemitoCabPOLIZA: TStringField
      FieldName = 'POLIZA'
    end
    object QRemitoCabMUESTRATELEFONO1: TStringField
      FieldName = 'MUESTRATELEFONO1'
      ProviderFlags = []
      Size = 10
    end
    object QRemitoCabMUESTRATELEFONO2: TStringField
      FieldName = 'MUESTRATELEFONO2'
      ProviderFlags = []
      Size = 10
    end
    object QRemitoCabCANT_BULTOS: TIntegerField
      FieldName = 'CANT_BULTOS'
      Required = True
    end
    object QRemitoCabMUESTRALDIRECCIONLDR: TStringField
      FieldName = 'MUESTRALDIRECCIONLDR'
      ProviderFlags = []
      Size = 35
    end
    object QRemitoCabMUESTRACUITRANSPORTE: TStringField
      FieldName = 'MUESTRACUITRANSPORTE'
      ProviderFlags = []
      Size = 13
    end
    object QRemitoCabMUESTRACONDIVATRANSPORTE: TStringField
      FieldName = 'MUESTRACONDIVATRANSPORTE'
      ProviderFlags = []
      Size = 15
    end
    object QRemitoCabREMITO_ELECTRONICO: TStringField
      FieldName = 'REMITO_ELECTRONICO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRemitoCabCAE: TStringField
      FieldName = 'CAE'
      Required = True
      Size = 50
    end
    object QRemitoCabCAE_VENCIMIENTO: TSQLTimeStampField
      FieldName = 'CAE_VENCIMIENTO'
    end
    object QRemitoCabMUESTRACODIGOAFIP: TStringField
      FieldName = 'MUESTRACODIGOAFIP'
      ProviderFlags = []
      Size = 3
    end
    object QRemitoCabMUESTRAOBSCLIENTE1: TStringField
      FieldName = 'MUESTRAOBSCLIENTE1'
      ProviderFlags = []
      Size = 60
    end
    object QRemitoCabMUESTRAOBSCLIENTE2: TStringField
      FieldName = 'MUESTRAOBSCLIENTE2'
      ProviderFlags = []
      Size = 60
    end
    object QRemitoCabDEVOLUCION: TStringField
      FieldName = 'DEVOLUCION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRemitoCabMUESTRADIRTRANSPORTE: TStringField
      FieldName = 'MUESTRADIRTRANSPORTE'
      ProviderFlags = []
      Size = 50
    end
    object QRemitoCabMUESTRATETRANSPORTE: TStringField
      FieldName = 'MUESTRATETRANSPORTE'
      ProviderFlags = []
      Size = 30
    end
    object QRemitoCabMUESTRALOCALITRANSPORTE: TStringField
      FieldName = 'MUESTRALOCALITRANSPORTE'
      ProviderFlags = []
      Size = 50
    end
    object QRemitoCabID_CHOFER: TIntegerField
      FieldName = 'ID_CHOFER'
    end
    object QRemitoCabMUESTRACHOFER: TStringField
      FieldName = 'MUESTRACHOFER'
      ProviderFlags = []
      Size = 45
    end
    object QRemitoCabTRASNPORTE_UNIDAD: TIntegerField
      FieldName = 'TRASNPORTE_UNIDAD'
    end
    object QRemitoCabTRASNPORTE_ADICIONAL: TIntegerField
      FieldName = 'TRASNPORTE_ADICIONAL'
    end
    object QRemitoCabMUESTRANOMBRETRANSPORTE: TStringField
      FieldName = 'MUESTRANOMBRETRANSPORTE'
      ProviderFlags = []
      Size = 50
    end
    object QRemitoCabMUESTRACPOSTALLDR: TStringField
      FieldName = 'MUESTRACPOSTALLDR'
      ProviderFlags = []
      Size = 8
    end
    object QRemitoCabMUESTRALOCALIDADLDR: TStringField
      FieldName = 'MUESTRALOCALIDADLDR'
      ProviderFlags = []
      Size = 40
    end
    object QRemitoCabMUESTRATELE: TStringField
      FieldName = 'MUESTRATELE'
      ProviderFlags = []
      Size = 6
    end
    object QRemitoCabPEDIDO_ID: TIntegerField
      FieldName = 'PEDIDO_ID'
      Required = True
    end
    object QRemitoCabMUESTRA_UNI_TRANSPORTE: TStringField
      FieldName = 'MUESTRA_UNI_TRANSPORTE'
      ProviderFlags = []
      Size = 25
    end
    object QRemitoCabMUESTRA_AUX_TRANSPORTE: TStringField
      FieldName = 'MUESTRA_AUX_TRANSPORTE'
      ProviderFlags = []
      Size = 25
    end
    object QRemitoCabID_TRANSFERENCIA: TIntegerField
      FieldName = 'ID_TRANSFERENCIA'
      Required = True
    end
    object QRemitoCabMUESTRANOTAPEDIDO: TStringField
      FieldName = 'MUESTRANOTAPEDIDO'
      ProviderFlags = []
      Size = 13
    end
    object QRemitoCabMUESTRA_ID_NOTAPEDIDO: TIntegerField
      FieldName = 'MUESTRA_ID_NOTAPEDIDO'
      ProviderFlags = []
    end
    object QRemitoCabFECHA_DEVOLUCION_ALQ: TSQLTimeStampField
      FieldName = 'FECHA_DEVOLUCION_ALQ'
    end
    object QRemitoCabFECHA_ENTREGA: TSQLTimeStampField
      FieldName = 'FECHA_ENTREGA'
    end
    object QRemitoCabMUESTRAPROVINCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAPROVINCIA'
      Origin = 'NOMBRE'
      ProviderFlags = []
    end
    object QRemitoCabLETRACOT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LETRACOT'
      Origin = 'CODIGO_COT'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object QRemitoCabMUESTRADOMINIOUNIDTR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADOMINIOUNIDTR'
      Origin = 'DOMINIO'
      ProviderFlags = []
      Size = 12
    end
    object QRemitoCabCOT: TStringField
      FieldName = 'COT'
      Origin = '"COT"'
      Size = 25
    end
    object QRemitoCabMUESTRADIRECCION_CALLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADIRECCION_CALLE'
      Origin = 'DIRECCION_CALLE'
      ProviderFlags = []
      Size = 40
    end
    object QRemitoCabMUESTRADIRECCION_NRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADIRECCION_NRO'
      Origin = 'DIRECCION_NUMERO'
      ProviderFlags = []
      Size = 10
    end
    object QRemitoCabMUESTRADIRECCION_PISO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADIRECCION_PISO'
      Origin = 'DIRECCION_PISO'
      ProviderFlags = []
      Size = 10
    end
    object QRemitoCabMUESTRADIRECCION_DEPTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADIRECCION_DEPTO'
      Origin = 'DIRECCION_DEPTO'
      ProviderFlags = []
      Size = 10
    end
    object QRemitoCabMUESTRANOMBREUSUARIOREAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANOMBREUSUARIOREAL'
      Origin = 'REAL_NAME'
      ProviderFlags = []
      Size = 40
    end
    object QRemitoCabREMITO_IMPRENTA: TStringField
      FieldName = 'REMITO_IMPRENTA'
      Origin = 'REMITO_IMPRENTA'
      Size = 100
    end
    object QRemitoCabREMITO_FECHA_RANGO: TStringField
      FieldName = 'REMITO_FECHA_RANGO'
      Origin = 'REMITO_FECHA_RANGO'
      Size = 100
    end
    object QRemitoCabREMITO_DIRECCION: TStringField
      FieldName = 'REMITO_DIRECCION'
      Origin = 'REMITO_DIRECCION'
      Size = 100
    end
    object QRemitoCabREMITO_CAI: TStringField
      FieldName = 'REMITO_CAI'
      Origin = 'REMITO_CAI'
      Size = 40
    end
    object QRemitoCabREMITO_VENCIMIENTO_CAI: TStringField
      FieldName = 'REMITO_VENCIMIENTO_CAI'
      Origin = 'REMITO_VENCIMIENTO_CAI'
    end
  end
  object QRemitoDet: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'Select rd.*,m.moneda as MuestraMoneda,m.signo as MuestraSigno,'
      '       s.CONTENIDO_COMPRA as MuestraContenido,'
      '       s.presentacion_cantidad as MuestraPresentacion,'
      '       s.reemplazo_stk as MuestraCodAlternativo,'
      
        '       rb.codigo_rubro as MuestraRubro,rb.detalle_rubro as Muest' +
        'raDetalleRubro,'
      
        '       srb.codigo_subrubro as MuestraSubRub,srb.detalle_subrubro' +
        ' as MuestraDetalleSubRub,'
      
        '       f.nrocpbte as MuestraFactura,rto.codigo,rto.listaprecio a' +
        's muestralistaprecio,rto.sucursal from RtoDet rd'
      '  left join stock s on s.codigo_stk=rd.codigoarticulo'
      '  left join monedas m on m.id=rd.id_moneda'
      '  left join rubros rb on rb.codigo_rubro=s.rubro_stk'
      '  left join subrubros srb on srb.codigo_subrubro=s.subrubro_stk'
      '  left join fcvtacab f on f.id_fc=rd.id_factura'
      '  left join rtocab rto on rto.id_rto=rd.id_cabrto'
      ''
      'where rd.id_cabrto= :id order by rd.id')
    Left = 180
    Top = 754
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRemitoDetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRemitoDetID_CABRTO: TIntegerField
      FieldName = 'ID_CABRTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QRemitoDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object QRemitoDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QRemitoDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QRemitoDetFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
    end
    object QRemitoDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Size = 8
    end
    object QRemitoDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object QRemitoDetDETALLE_ADICIONAL: TStringField
      FieldName = 'DETALLE_ADICIONAL'
      Size = 300
    end
    object QRemitoDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object QRemitoDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object QRemitoDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Size = 1
    end
    object QRemitoDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Size = 1
    end
    object QRemitoDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
    end
    object QRemitoDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
    end
    object QRemitoDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
    end
    object QRemitoDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
    end
    object QRemitoDetDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object QRemitoDetTOTAL_GRAVADO: TFloatField
      FieldName = 'TOTAL_GRAVADO'
      Required = True
    end
    object QRemitoDetTOTAL_EXENTO: TFloatField
      FieldName = 'TOTAL_EXENTO'
      Required = True
    end
    object QRemitoDetTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object QRemitoDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object QRemitoDetMARGEN: TFloatField
      FieldName = 'MARGEN'
    end
    object QRemitoDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Size = 1
    end
    object QRemitoDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object QRemitoDetGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      FixedChar = True
      Size = 1
    end
    object QRemitoDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Required = True
    end
    object QRemitoDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Required = True
    end
    object QRemitoDetLOTE: TIntegerField
      FieldName = 'LOTE'
      Required = True
    end
    object QRemitoDetOBSERVACION: TStringField
      FieldName = 'OBSERVACION'
    end
    object QRemitoDetNOTAVENTA_ID: TIntegerField
      FieldName = 'NOTAVENTA_ID'
    end
    object QRemitoDetNOTAVENTA_ID_DET: TIntegerField
      FieldName = 'NOTAVENTA_ID_DET'
    end
    object QRemitoDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
    end
    object QRemitoDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
    end
    object QRemitoDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
    end
    object QRemitoDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
    end
    object QRemitoDetIVA_UNITARIO: TFloatField
      FieldName = 'IVA_UNITARIO'
      Required = True
    end
    object QRemitoDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
    end
    object QRemitoDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
    end
    object QRemitoDetIVA_TOTAL: TFloatField
      FieldName = 'IVA_TOTAL'
      Required = True
    end
    object QRemitoDetMUESTRAMONEDA: TStringField
      FieldName = 'MUESTRAMONEDA'
      ProviderFlags = []
      Size = 15
    end
    object QRemitoDetMUESTRASIGNO: TStringField
      FieldName = 'MUESTRASIGNO'
      ProviderFlags = []
      Size = 5
    end
    object QRemitoDetMUESTRACONTENIDO: TFloatField
      FieldName = 'MUESTRACONTENIDO'
      ProviderFlags = []
    end
    object QRemitoDetMUESTRAPRESENTACION: TFloatField
      FieldName = 'MUESTRAPRESENTACION'
      ProviderFlags = []
    end
    object QRemitoDetCODIGOBARRA: TStringField
      FieldName = 'CODIGOBARRA'
      Size = 50
    end
    object QRemitoDetMUESTRACODALTERNATIVO: TStringField
      FieldName = 'MUESTRACODALTERNATIVO'
      ProviderFlags = []
    end
    object QRemitoDetPRECIO_EDITABLE: TStringField
      FieldName = 'PRECIO_EDITABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRemitoDetCANT_FACTURA: TFloatField
      FieldName = 'CANT_FACTURA'
      Required = True
    end
    object QRemitoDetPRESENTACION_CANT: TFloatField
      FieldName = 'PRESENTACION_CANT'
      Required = True
    end
    object QRemitoDetCANTIDAD_UNIDADES: TFloatField
      FieldName = 'CANTIDAD_UNIDADES'
      Required = True
    end
    object QRemitoDetID_MERCA_ACOPIO_DET: TIntegerField
      FieldName = 'ID_MERCA_ACOPIO_DET'
      Required = True
    end
    object QRemitoDetMUESTRARUBRO: TStringField
      FieldName = 'MUESTRARUBRO'
      ProviderFlags = []
      Size = 3
    end
    object QRemitoDetMUESTRADETALLERUBRO: TStringField
      FieldName = 'MUESTRADETALLERUBRO'
      ProviderFlags = []
      Size = 35
    end
    object QRemitoDetMUESTRASUBRUB: TStringField
      FieldName = 'MUESTRASUBRUB'
      ProviderFlags = []
      Size = 5
    end
    object QRemitoDetMUESTRADETALLESUBRUB: TStringField
      FieldName = 'MUESTRADETALLESUBRUB'
      ProviderFlags = []
      Size = 45
    end
    object QRemitoDetRENGLON: TFloatField
      FieldName = 'RENGLON'
    end
    object QRemitoDetPRESENTACION_UNIDAD: TStringField
      FieldName = 'PRESENTACION_UNIDAD'
      Size = 3
    end
    object QRemitoDetID_FACTURA: TIntegerField
      FieldName = 'ID_FACTURA'
    end
    object QRemitoDetMUESTRAFACTURA: TStringField
      FieldName = 'MUESTRAFACTURA'
      ProviderFlags = []
      Size = 13
    end
    object QRemitoDetCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = []
      Size = 6
    end
    object QRemitoDetID_DET_OPRODUCCION: TIntegerField
      FieldName = 'ID_DET_OPRODUCCION'
      Required = True
    end
    object QRemitoDetMUESTRALISTAPRECIO: TIntegerField
      FieldName = 'MUESTRALISTAPRECIO'
      ProviderFlags = []
    end
    object QRemitoDetSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      ProviderFlags = []
    end
    object QRemitoDetCONTROLA_TRAZABILIDAD: TStringField
      FieldName = 'CONTROLA_TRAZABILIDAD'
      Origin = 'CONTROLA_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QImpuestoRto: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'Select * from RtoImpuesto Where Id_RtoCab=:id')
    Left = 272
    Top = 670
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QImpuestoRtoID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QImpuestoRtoID_RTOCAB: TIntegerField
      FieldName = 'ID_RTOCAB'
    end
    object QImpuestoRtoCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
    end
    object QImpuestoRtoDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object QImpuestoRtoNETO: TFloatField
      FieldName = 'NETO'
    end
    object QImpuestoRtoTASA: TFloatField
      FieldName = 'TASA'
    end
    object QImpuestoRtoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
  end
  object QRemitoTroqueles: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      
        'select t.id,t.id_rto,t.id_troquel,t.nro_troquel,t.fecha from rto' +
        '_troqueles t'
      'where t.id_rto = :id')
    Left = 376
    Top = 546
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRemitoTroquelesID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRemitoTroquelesID_RTO: TIntegerField
      FieldName = 'ID_RTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRemitoTroquelesID_TROQUEL: TIntegerField
      FieldName = 'ID_TROQUEL'
      Required = True
    end
    object QRemitoTroquelesNRO_TROQUEL: TStringField
      FieldName = 'NRO_TROQUEL'
    end
    object QRemitoTroquelesFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
  end
  object QAplicPorCtroCosto: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select ap.*,cc.descripcion from aplica_ctro_costo ap'
      'left join centro_costo cc on cc.id=ap.ctro_costo'
      
        'where ap.id_cpbte= :id and ap.tipocpbte=:tipocpbte and ap.tipo=:' +
        'tipo')
    Left = 792
    Top = 615
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'tipocpbte'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'tipo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QAplicPorCtroCostoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAplicPorCtroCostoID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAplicPorCtroCostoTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QAplicPorCtroCostoCTRO_COSTO: TIntegerField
      FieldName = 'CTRO_COSTO'
      Origin = 'CTRO_COSTO'
      Required = True
    end
    object QAplicPorCtroCostoIMPUTADO: TFloatField
      FieldName = 'IMPUTADO'
      Origin = 'IMPUTADO'
    end
    object QAplicPorCtroCostoTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QAplicPorCtroCostoPORCENTAJE: TFloatField
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
    end
    object QAplicPorCtroCostoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QAplicPorCtroCostoCONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Origin = 'CONCEPTO'
      Required = True
      Size = 8
    end
    object QAplicPorCtroCostoDETALLE_CONCEP: TStringField
      FieldName = 'DETALLE_CONCEP'
      Origin = 'DETALLE_CONCEP'
      Size = 50
    end
    object QAplicPorCtroCostoIMPORTE_LINEA: TFloatField
      FieldName = 'IMPORTE_LINEA'
      Origin = 'IMPORTE_LINEA'
    end
    object QAplicPorCtroCostoPORCENTAJE_TOTAL: TFloatField
      FieldName = 'PORCENTAJE_TOTAL'
      Origin = 'PORCENTAJE_TOTAL'
    end
    object QAplicPorCtroCostoDESCRIPCION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 45
    end
  end
  object DSPAplicPorCtroCosto: TDataSetProvider
    DataSet = QAplicPorCtroCosto
    Options = []
    Left = 928
    Top = 614
  end
  object CDSAplicPorCtroCosto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipocpbte'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPAplicPorCtroCosto'
    Left = 1032
    Top = 614
    object CDSAplicPorCtroCostoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSAplicPorCtroCostoID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSAplicPorCtroCostoTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSAplicPorCtroCostoCTRO_COSTO: TIntegerField
      FieldName = 'CTRO_COSTO'
      Origin = 'CTRO_COSTO'
      Required = True
    end
    object CDSAplicPorCtroCostoIMPUTADO: TFloatField
      FieldName = 'IMPUTADO'
      Origin = 'IMPUTADO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSAplicPorCtroCostoTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object CDSAplicPorCtroCostoPORCENTAJE: TFloatField
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
    end
    object CDSAplicPorCtroCostoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSAplicPorCtroCostoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 45
    end
  end
  object QEgresoCaja: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select eg.*,s.detalle as MuestraSucursal ,'
      '            cp.denominacion as MuestraComprobante,'
      
        '            cp.id_comprobante as id_tipocomprobante from egr_caj' +
        'a eg'
      'left join sucursal s on s.codigo=eg.sucursalventa'
      'left join comprobantes cp on cp.clase_comprob=eg.ClaseCpbte and'
      '          cp.letra=eg.Letra and'
      '          cp.sucursal=eg.sucursalventa and'
      '          cp.tipo_comprob=eg.tipocpbte and'
      '          cp.compra_venta='#39'C'#39
      'where eg.id_egreso=:Id and eg.TipoCpbte=:Tipo')
    Left = 1080
    Top = 120
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
    object QEgresoCajaID_EGRESO: TIntegerField
      FieldName = 'ID_EGRESO'
      Origin = 'ID_EGRESO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QEgresoCajaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QEgresoCajaCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QEgresoCajaLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      Required = True
      Size = 1
    end
    object QEgresoCajaSUC: TStringField
      FieldName = 'SUC'
      Origin = 'SUC'
      Required = True
      Size = 4
    end
    object QEgresoCajaNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
      Size = 8
    end
    object QEgresoCajaSUCURSALVENTA: TIntegerField
      FieldName = 'SUCURSALVENTA'
      Origin = 'SUCURSALVENTA'
      Required = True
    end
    object QEgresoCajaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object QEgresoCajaCODIGO_GASTO: TStringField
      FieldName = 'CODIGO_GASTO'
      Origin = 'CODIGO_GASTO'
      Size = 6
    end
    object QEgresoCajaRUBRO_GASTO: TStringField
      FieldName = 'RUBRO_GASTO'
      Origin = 'RUBRO_GASTO'
      Size = 3
    end
    object QEgresoCajaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QEgresoCajaDETALLE2: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object QEgresoCajaNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object QEgresoCajaOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object QEgresoCajaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object QEgresoCajaFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object QEgresoCajaNUMERO_OPERACION: TStringField
      FieldName = 'NUMERO_OPERACION'
      Origin = 'NUMERO_OPERACION'
      Size = 8
    end
    object QEgresoCajaMUESTRASUCURSAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object QEgresoCajaMUESTRACOMPROBANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      Size = 15
    end
    object QEgresoCajaID_TIPOCOMPROBANTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_TIPOCOMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
    end
    object QEgresoCajaID_OBRA: TIntegerField
      FieldName = 'ID_OBRA'
      Origin = 'ID_OBRA'
      Required = True
    end
  end
  object QEgresoCajaDetalle: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      
        'select ed.*, r.detalle as MuestraRubro,ct.Detalle as MuestraCuen' +
        'ta from egr_caja_detalle ed'
      'left join gastos_rubros r on r.codigo=ed.rubrogasto'
      
        'left join gastos_cuentas ct on ct.codigo=ed.codigogasto and ed.r' +
        'ubrogasto=ct.codigo_rubro'
      'where ed.id_cpbte=:id')
    Left = 1184
    Top = 120
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QEgresoCajaDetalleID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QEgresoCajaDetalleID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
    end
    object QEgresoCajaDetalleTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QEgresoCajaDetalleCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QEgresoCajaDetalleNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QEgresoCajaDetalleFECHACPBTE: TSQLTimeStampField
      FieldName = 'FECHACPBTE'
      Origin = 'FECHACPBTE'
    end
    object QEgresoCajaDetalleFECHAGASTO: TSQLTimeStampField
      FieldName = 'FECHAGASTO'
      Origin = 'FECHAGASTO'
    end
    object QEgresoCajaDetalleRUBROGASTO: TStringField
      FieldName = 'RUBROGASTO'
      Origin = 'RUBROGASTO'
      Size = 3
    end
    object QEgresoCajaDetalleCODIGOGASTO: TStringField
      FieldName = 'CODIGOGASTO'
      Origin = 'CODIGOGASTO'
      Size = 6
    end
    object QEgresoCajaDetalleDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object QEgresoCajaDetalleIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QEgresoCajaDetalleSUCURSALVENTA: TIntegerField
      FieldName = 'SUCURSALVENTA'
      Origin = 'SUCURSALVENTA'
    end
    object QEgresoCajaDetalleMUESTRARUBRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRARUBRO'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 50
    end
    object QEgresoCajaDetalleMUESTRACUENTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACUENTA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 50
    end
  end
  object QCajaCab: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select cc.*,'
      '  cta.Nombre as MuestraCtaCaja'
      'from Caja_Cab cc'
      '  left join cuenta_caja cta on cta.id_cuenta=cc.id_cuenta_caja'
      'where id_cuenta_caja=:id and estado = 0')
    Left = 1086
    Top = 496
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QCajaCabID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCajaCabID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      Required = True
    end
    object QCajaCabFECHA_INCIO: TSQLTimeStampField
      FieldName = 'FECHA_INCIO'
      Origin = 'FECHA_INCIO'
      Required = True
    end
    object QCajaCabFECHA_CIERRE: TSQLTimeStampField
      FieldName = 'FECHA_CIERRE'
      Origin = 'FECHA_CIERRE'
    end
    object QCajaCabSALDO_INCIAL: TFloatField
      FieldName = 'SALDO_INCIAL'
      Origin = 'SALDO_INCIAL'
    end
    object QCajaCabESTADO: TIntegerField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
    end
    object QCajaCabOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object QCajaCabNUMEROCAJA: TIntegerField
      FieldName = 'NUMEROCAJA'
      Origin = 'NUMEROCAJA'
    end
    object QCajaCabMUESTRACTACAJA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACTACAJA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
  end
  object QOrdenCompCab: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select Oc.*,'
      '  Fp.Detalle as MuestraCondCompra,'
      '  De.Nombre as MuestraDeposito,'
      '  Su.Detalle as MuestraSucursal,'
      '  cp.denominacion as MuestraComprobante,'
      '  cp.id_comprobante as Id_tipocomprobante,'
      '  r.nombre as MuestraRealizo,'
      '  a.nombre as MuestraAutorizo,'
      '  oc_ext.numero as MuestraNumeroPresOC,'
      '  oc_ext.id_oc as MuestraID_PresOC,'
      '  prov.correo as MuestraCorreo'
      'from OrdenCompraCab Oc'
      '  left join personal r on r.codigo=Oc.realizo'
      '  left join personal a on a.codigo=Oc.autorizo'
      '  left join F_Pago Fp on Fp.Codigo=Oc.CondicionCompra'
      '  left join Depositos De  on De.Id=Oc.Deposito'
      '  left join Sucursal Su  on Su.Codigo=Oc.Sucursal'
      
        '  left join OC_CAB_EXT oc_ext on oc_ext.id_oc = oc.id_presupuest' +
        'o_oc'
      '  left join poveedor prov on prov.codigo=oc.codigo'
      
        '  left join comprobantes cp on cp.clase_comprob=Oc.ClaseCpbte an' +
        'd'
      '            cp.letra=Oc.Letra and'
      '            cp.sucursal=Oc.sucursal and'
      '            cp.tipo_comprob=Oc.tipocpbte and'
      '            cp.compra_venta='#39'C'#39
      'where Oc.TipoCpbte= :TipoCpbte'
      '      and Oc.id_Oc=:id'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 376
    Top = 353
    ParamData = <
      item
        Name = 'TIPOCPBTE'
        DataType = ftString
        ParamType = ptInput
        Size = 2
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QOrdenCompCabID_OC: TIntegerField
      FieldName = 'ID_OC'
      Origin = 'ID_OC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOrdenCompCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QOrdenCompCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QOrdenCompCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QOrdenCompCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object QOrdenCompCabLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      Size = 1
    end
    object QOrdenCompCabSUC: TStringField
      FieldName = 'SUC'
      Origin = 'SUC'
      Size = 4
    end
    object QOrdenCompCabNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object QOrdenCompCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QOrdenCompCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QOrdenCompCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object QOrdenCompCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QOrdenCompCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object QOrdenCompCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Origin = 'TIPOIVA'
    end
    object QOrdenCompCabCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QOrdenCompCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QOrdenCompCabFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
    object QOrdenCompCabCONDICIONCOMPRA: TIntegerField
      FieldName = 'CONDICIONCOMPRA'
      Origin = 'CONDICIONCOMPRA'
    end
    object QOrdenCompCabANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      Size = 1
    end
    object QOrdenCompCabN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
      Origin = 'N_OPERACION2'
    end
    object QOrdenCompCabNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
      Origin = 'NETOGRAV1'
    end
    object QOrdenCompCabNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
      Origin = 'NETOGRAV2'
    end
    object QOrdenCompCabDSTO: TFloatField
      FieldName = 'DSTO'
      Origin = 'DSTO'
    end
    object QOrdenCompCabDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
      Origin = 'DSTOIMPORTE'
    end
    object QOrdenCompCabNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
      Origin = 'NETOEXEN1'
    end
    object QOrdenCompCabNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
      Origin = 'NETOEXEN2'
    end
    object QOrdenCompCabIMPORTEEXCLUIDO1: TFloatField
      FieldName = 'IMPORTEEXCLUIDO1'
      Origin = 'IMPORTEEXCLUIDO1'
    end
    object QOrdenCompCabIMPORTEEXCLUIDO2: TFloatField
      FieldName = 'IMPORTEEXCLUIDO2'
      Origin = 'IMPORTEEXCLUIDO2'
    end
    object QOrdenCompCabNETOMONOTRIBUTO1: TFloatField
      FieldName = 'NETOMONOTRIBUTO1'
      Origin = 'NETOMONOTRIBUTO1'
    end
    object QOrdenCompCabNETOMONOTRIBUTO2: TFloatField
      FieldName = 'NETOMONOTRIBUTO2'
      Origin = 'NETOMONOTRIBUTO2'
    end
    object QOrdenCompCabTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QOrdenCompCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Origin = 'IMPRESO'
      Size = 1
    end
    object QOrdenCompCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QOrdenCompCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object QOrdenCompCabAUTORIZO: TStringField
      FieldName = 'AUTORIZO'
      Origin = 'AUTORIZO'
      Size = 6
    end
    object QOrdenCompCabREALIZO: TStringField
      FieldName = 'REALIZO'
      Origin = 'REALIZO'
      Size = 6
    end
    object QOrdenCompCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object QOrdenCompCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Size = 1
    end
    object QOrdenCompCabESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object QOrdenCompCabFECHAAUTORIZACION: TSQLTimeStampField
      FieldName = 'FECHAAUTORIZACION'
      Origin = 'FECHAAUTORIZACION'
    end
    object QOrdenCompCabFECHACUMPLIDA: TSQLTimeStampField
      FieldName = 'FECHACUMPLIDA'
      Origin = 'FECHACUMPLIDA'
    end
    object QOrdenCompCabOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      BlobType = ftMemo
    end
    object QOrdenCompCabNOTAS: TStringField
      FieldName = 'NOTAS'
      Origin = 'NOTAS'
      Size = 200
    end
    object QOrdenCompCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object QOrdenCompCabTRANSPORTE: TIntegerField
      FieldName = 'TRANSPORTE'
      Origin = 'TRANSPORTE'
    end
    object QOrdenCompCabTIPO: TSmallintField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
    end
    object QOrdenCompCabTIPO_PROVEEDOR: TStringField
      FieldName = 'TIPO_PROVEEDOR'
      Origin = 'TIPO_PROVEEDOR'
      FixedChar = True
      Size = 1
    end
    object QOrdenCompCabID_PRESUPUESTO_OC: TIntegerField
      FieldName = 'ID_PRESUPUESTO_OC'
      Origin = 'ID_PRESUPUESTO_OC'
    end
    object QOrdenCompCabTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
      Origin = 'TELEFONOS'
      Size = 25
    end
    object QOrdenCompCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object QOrdenCompCabID_OCOMPRA_PREV: TIntegerField
      FieldName = 'ID_OCOMPRA_PREV'
      Origin = 'ID_OCOMPRA_PREV'
      Required = True
    end
    object QOrdenCompCabNRO_OC_ANTERIOR: TStringField
      FieldName = 'NRO_OC_ANTERIOR'
      Origin = 'NRO_OC_ANTERIOR'
      Size = 13
    end
    object QOrdenCompCabID_OCOMPRA_NEXT: TIntegerField
      FieldName = 'ID_OCOMPRA_NEXT'
      Origin = 'ID_OCOMPRA_NEXT'
      Required = True
    end
    object QOrdenCompCabNRO_OC_SIGUIEN: TStringField
      FieldName = 'NRO_OC_SIGUIEN'
      Origin = 'NRO_OC_SIGUIEN'
      Size = 13
    end
    object QOrdenCompCabMUESTRACONDCOMPRA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACONDCOMPRA'
      Origin = 'DETALLE'
      ProviderFlags = []
    end
    object QOrdenCompCabMUESTRADEPOSITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object QOrdenCompCabMUESTRASUCURSAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object QOrdenCompCabMUESTRACOMPROBANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      Size = 15
    end
    object QOrdenCompCabID_TIPOCOMPROBANTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_TIPOCOMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
    end
    object QOrdenCompCabMUESTRAREALIZO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAREALIZO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object QOrdenCompCabMUESTRAAUTORIZO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAAUTORIZO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object QOrdenCompCabMUESTRANUMEROPRESOC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANUMEROPRESOC'
      Origin = 'NUMERO'
      ProviderFlags = []
      Size = 8
    end
    object QOrdenCompCabMUESTRAID_PRESOC: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAID_PRESOC'
      Origin = 'ID_OC'
      ProviderFlags = []
    end
    object QOrdenCompCabMUESTRACORREO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACORREO'
      Origin = 'CORREO'
      ProviderFlags = []
      Size = 100
    end
  end
  object QOrdenCompDet: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'Select d.*,s.presentacion_cantidad as MuestraPresCant,'
      '       s.presentacion_unidad as MuestraPresUni,'
      
        '       m.signo as MuestraMoneda,s.reemplazo_stk as MuestraCodAlt' +
        'ernativo,'
      
        '( select max(cb.codigobarra) from codigobarra cb where cb.codigo' +
        '_stk=d.codigoarticulo) as MuestraCodigoBarra ,'
      '( select la.precio from listaprecioespecialart la'
      '    left join listaprecioespecialcab lc on lc.id=la.id_cab'
      
        '  where la.codigoarticulo=d.codigoarticulo and lc.pordefecto='#39'S'#39 +
        ') as MuestraPrecioVta,'
      
        '  lpd.codigo_proveedor as MuestraCodArtiProvee from OrdenCompraD' +
        'et d'
      'left join stock s on s.codigo_stk=d.codigoarticulo'
      'left join monedas m on m.id=d.id_moneda'
      'left join ordencompracab c on  c.id_oc=d.id_caboc'
      
        'left join lista_precios_prov_detalle lpd on lpd.codigo=d.codigoa' +
        'rticulo and lpd.codigo_proveedor=c.codigo'
      'where d.id_caboc= :id')
    Left = 557
    Top = 403
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QOrdenCompDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOrdenCompDetID_CABOC: TIntegerField
      FieldName = 'ID_CABOC'
      Origin = 'ID_CABOC'
    end
    object QOrdenCompDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QOrdenCompDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QOrdenCompDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QOrdenCompDetRENGLON: TFloatField
      FieldName = 'RENGLON'
      Origin = 'RENGLON'
    end
    object QOrdenCompDetFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QOrdenCompDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Size = 8
    end
    object QOrdenCompDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QOrdenCompDetDETALLE_ADICIONAL: TStringField
      FieldName = 'DETALLE_ADICIONAL'
      Origin = 'DETALLE_ADICIONAL'
      Size = 300
    end
    object QOrdenCompDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object QOrdenCompDetCANTIDADPEDIDA: TFloatField
      FieldName = 'CANTIDADPEDIDA'
      Origin = 'CANTIDADPEDIDA'
    end
    object QOrdenCompDetCANTIDADAUTORIZADA: TFloatField
      FieldName = 'CANTIDADAUTORIZADA'
      Origin = 'CANTIDADAUTORIZADA'
    end
    object QOrdenCompDetCANTIDADRECIBIDA: TFloatField
      FieldName = 'CANTIDADRECIBIDA'
      Origin = 'CANTIDADRECIBIDA'
    end
    object QOrdenCompDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
    end
    object QOrdenCompDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
      Origin = 'UNITARIO_GRAVADO'
    end
    object QOrdenCompDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
      Origin = 'UNITARIO_EXENTO'
    end
    object QOrdenCompDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Size = 1
    end
    object QOrdenCompDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
    end
    object QOrdenCompDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Origin = 'TIPOIVA_TASA'
    end
    object QOrdenCompDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
      Origin = 'IVA_SOBRETASA'
    end
    object QOrdenCompDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Origin = 'TIPOIVA_SOBRETASA'
    end
    object QOrdenCompDetSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QOrdenCompDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object QOrdenCompDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object QOrdenCompDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      Size = 1
    end
    object QOrdenCompDetTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QOrdenCompDetID_COMP_REC: TIntegerField
      FieldName = 'ID_COMP_REC'
      Origin = 'ID_COMP_REC'
      Required = True
    end
    object QOrdenCompDetTIPO_COMP_REC: TStringField
      FieldName = 'TIPO_COMP_REC'
      Origin = 'TIPO_COMP_REC'
      Size = 2
    end
    object QOrdenCompDetCLASE_COMP_REC: TStringField
      FieldName = 'CLASE_COMP_REC'
      Origin = 'CLASE_COMP_REC'
      Size = 2
    end
    object QOrdenCompDetNRO_COMP_REC: TStringField
      FieldName = 'NRO_COMP_REC'
      Origin = 'NRO_COMP_REC'
      Size = 13
    end
    object QOrdenCompDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Origin = 'ID_MONEDA'
      Required = True
    end
    object QOrdenCompDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      Required = True
    end
    object QOrdenCompDetID_DET_NOTAPEDIDO: TIntegerField
      FieldName = 'ID_DET_NOTAPEDIDO'
      Origin = 'ID_DET_NOTAPEDIDO'
      Required = True
    end
    object QOrdenCompDetMUESTRAPRESCANT: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAPRESCANT'
      Origin = 'PRESENTACION_CANTIDAD'
      ProviderFlags = []
    end
    object QOrdenCompDetMUESTRAPRESUNI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAPRESUNI'
      Origin = 'PRESENTACION_UNIDAD'
      ProviderFlags = []
      Size = 3
    end
    object QOrdenCompDetMUESTRAMONEDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAMONEDA'
      Origin = 'SIGNO'
      ProviderFlags = []
      Size = 5
    end
    object QOrdenCompDetMUESTRACODALTERNATIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACODALTERNATIVO'
      Origin = 'REEMPLAZO_STK'
      ProviderFlags = []
    end
    object QOrdenCompDetMUESTRAPRECIOVTA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAPRECIOVTA'
      Origin = 'PRECIO'
      ProviderFlags = []
    end
    object QOrdenCompDetMUESTRACODIGOBARRA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACODIGOBARRA'
      Origin = 'MUESTRACODIGOBARRA'
      ProviderFlags = []
      Size = 50
    end
    object QOrdenCompDetMUESTRACODARTIPROVEE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACODARTIPROVEE'
      Origin = 'CODIGO_PROVEEDOR'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
  end
  object QOrdenCompImpuesto: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from ordencompraImpuesto where Id_ocCab=:id')
    Left = 664
    Top = 176
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QOrdenCompImpuestoID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      Origin = 'ID_IMPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOrdenCompImpuestoCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
      Origin = 'CODIGO_GRAVAMEN'
      Required = True
    end
    object QOrdenCompImpuestoDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QOrdenCompImpuestoID_OCCAB: TIntegerField
      FieldName = 'ID_OCCAB'
      Origin = 'ID_OCCAB'
      Required = True
    end
    object QOrdenCompImpuestoNETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
    end
    object QOrdenCompImpuestoTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object QOrdenCompImpuestoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
  end
  object QOrdenCompVtos: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from ordencompraVtos where Id_ocCab=:id')
    Left = 664
    Top = 408
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QOrdenCompVtosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOrdenCompVtosID_OCCAB: TIntegerField
      FieldName = 'ID_OCCAB'
      Origin = 'ID_OCCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOrdenCompVtosDIAS: TSmallintField
      FieldName = 'DIAS'
      Origin = 'DIAS'
      Required = True
    end
    object QOrdenCompVtosFECHA_VENCIMIEMTO: TSQLTimeStampField
      FieldName = 'FECHA_VENCIMIEMTO'
      Origin = 'FECHA_VENCIMIEMTO'
      Required = True
    end
    object QOrdenCompVtosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      Required = True
    end
  end
  object QOPago: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      
        'select o.*, s.detalle as MuestraSucursal,c.denominacion as Muest' +
        'raComprobante,'
      '       c.id_comprobante as id_tipoComprobante,'
      '       p.correo as MuestraCorreo,'
      '       ob.detalle as MuestraObra from OrdenPago o'
      'left join sucursal s on s.codigo=o.sucursal'
      'left join poveedor p on p.codigo=o.codigo'
      'left join comprobantes c on c.clase_comprob=O.ClaseCpbte and'
      '          c.letra=o.LetraOp and'
      '          c.sucursal=o.sucursal and'
      '          c.tipo_comprob=o.tipocpbte and'
      '          c.compra_venta='#39'C'#39
      'left join obras ob on ob.codigo=o.id_obra'
      'where o.id_op=:id'
      'and o.tipocpbte='#39'OP'#39)
    Left = 376
    Top = 497
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QOPagoID_OP: TIntegerField
      FieldName = 'ID_OP'
      Origin = 'ID_OP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOPagoTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QOPagoCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QOPagoNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QOPagoCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object QOPagoLETRAOP: TStringField
      FieldName = 'LETRAOP'
      Origin = 'LETRAOP'
      Size = 1
    end
    object QOPagoSUCOP: TStringField
      FieldName = 'SUCOP'
      Origin = 'SUCOP'
      Size = 4
    end
    object QOPagoNUMEROOP: TStringField
      FieldName = 'NUMEROOP'
      Origin = 'NUMEROOP'
      Size = 8
    end
    object QOPagoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QOPagoRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QOPagoDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object QOPagoCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QOPagoLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object QOPagoTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Origin = 'TIPOIVA'
    end
    object QOPagoCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QOPagoNRO_IIBB: TStringField
      FieldName = 'NRO_IIBB'
      Origin = 'NRO_IIBB'
      Size = 15
    end
    object QOPagoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QOPagoANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      Size = 1
    end
    object QOPagoN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
      Origin = 'N_OPERACION2'
    end
    object QOPagoTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QOPagoSALDO_APLICAR: TFloatField
      FieldName = 'SALDO_APLICAR'
      Origin = 'SALDO_APLICAR'
    end
    object QOPagoOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Origin = 'OBSERVACION1'
      Size = 60
    end
    object QOPagoOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Origin = 'OBSERVACION2'
      Size = 60
    end
    object QOPagoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QOPagoDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
    end
    object QOPagoDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Size = 1
    end
    object QOPagoNC_ID_FC: TIntegerField
      FieldName = 'NC_ID_FC'
      Origin = 'NC_ID_FC'
    end
    object QOPagoNC_LETRAFAC: TStringField
      FieldName = 'NC_LETRAFAC'
      Origin = 'NC_LETRAFAC'
      Size = 1
    end
    object QOPagoNC_SUCFAC: TStringField
      FieldName = 'NC_SUCFAC'
      Origin = 'NC_SUCFAC'
      Size = 4
    end
    object QOPagoNC_NUMEROFAC: TStringField
      FieldName = 'NC_NUMEROFAC'
      Origin = 'NC_NUMEROFAC'
      Size = 8
    end
    object QOPagoTASA_PERCEPCIONIVA: TFloatField
      FieldName = 'TASA_PERCEPCIONIVA'
      Origin = 'TASA_PERCEPCIONIVA'
    end
    object QOPagoTASA_PERCEPCIONIB: TFloatField
      FieldName = 'TASA_PERCEPCIONIB'
      Origin = 'TASA_PERCEPCIONIB'
    end
    object QOPagoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object QOPagoTOTAL_NETO_GRAVADO: TFloatField
      FieldName = 'TOTAL_NETO_GRAVADO'
      Origin = 'TOTAL_NETO_GRAVADO'
    end
    object QOPagoTOTAL_PAGOS_DEL_MES: TFloatField
      FieldName = 'TOTAL_PAGOS_DEL_MES'
      Origin = 'TOTAL_PAGOS_DEL_MES'
    end
    object QOPagoTOTAL_RETENIDO_MES: TFloatField
      FieldName = 'TOTAL_RETENIDO_MES'
      Origin = 'TOTAL_RETENIDO_MES'
    end
    object QOPagoTASA_RETENCION_GANACIA: TFloatField
      FieldName = 'TASA_RETENCION_GANACIA'
      Origin = 'TASA_RETENCION_GANACIA'
    end
    object QOPagoMINIMO_NO_IMPONIBLE_GANANCIA: TFloatField
      FieldName = 'MINIMO_NO_IMPONIBLE_GANANCIA'
      Origin = 'MINIMO_NO_IMPONIBLE_GANANCIA'
    end
    object QOPagoRETIENE_GANACIAS: TStringField
      FieldName = 'RETIENE_GANACIAS'
      Origin = 'RETIENE_GANACIAS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOPagoRETENCION_GANACIA_GENERADO: TStringField
      FieldName = 'RETENCION_GANACIA_GENERADO'
      Origin = 'RETENCION_GANACIA_GENERADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOPagoCODIGO_REGIMENA_GANANCIA: TIntegerField
      FieldName = 'CODIGO_REGIMENA_GANANCIA'
      Origin = 'CODIGO_REGIMENA_GANANCIA'
    end
    object QOPagoCONCEPTO_RETENCION_GANACIA: TStringField
      FieldName = 'CONCEPTO_RETENCION_GANACIA'
      Origin = 'CONCEPTO_RETENCION_GANACIA'
      Size = 25
    end
    object QOPagoIMPUESTO_MINIMO_GANANCIA: TFloatField
      FieldName = 'IMPUESTO_MINIMO_GANANCIA'
      Origin = 'IMPUESTO_MINIMO_GANANCIA'
    end
    object QOPagoRETIENE_IIBB: TStringField
      FieldName = 'RETIENE_IIBB'
      Origin = 'RETIENE_IIBB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOPagoTASA_RETENCION_IIBB: TFloatField
      FieldName = 'TASA_RETENCION_IIBB'
      Origin = 'TASA_RETENCION_IIBB'
      Required = True
    end
    object QOPagoMINIMO_IMPONIBLE_RET_IIBB: TFloatField
      FieldName = 'MINIMO_IMPONIBLE_RET_IIBB'
      Origin = 'MINIMO_IMPONIBLE_RET_IIBB'
      Required = True
    end
    object QOPagoFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object QOPagoDESCUENTO_PORCENTAJE: TFloatField
      FieldName = 'DESCUENTO_PORCENTAJE'
      Origin = 'DESCUENTO_PORCENTAJE'
    end
    object QOPagoTOTAL_NETO: TFloatField
      FieldName = 'TOTAL_NETO'
      Origin = 'TOTAL_NETO'
    end
    object QOPagoNUMERO_OPERACION: TStringField
      FieldName = 'NUMERO_OPERACION'
      Origin = 'NUMERO_OPERACION'
      Size = 8
    end
    object QOPagoPERMITIR_MODIF_TOTAL: TStringField
      FieldName = 'PERMITIR_MODIF_TOTAL'
      Origin = 'PERMITIR_MODIF_TOTAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOPagoRET_GAN_X_ESCALA: TStringField
      FieldName = 'RET_GAN_X_ESCALA'
      Origin = 'RET_GAN_X_ESCALA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOPagoID_ESCALA_RET: TIntegerField
      FieldName = 'ID_ESCALA_RET'
      Origin = 'ID_ESCALA_RET'
      Required = True
    end
    object QOPagoGANC_ESCALA_DESDE: TFloatField
      FieldName = 'GANC_ESCALA_DESDE'
      Origin = 'GANC_ESCALA_DESDE'
    end
    object QOPagoGANC_ESCALA_HASTA: TFloatField
      FieldName = 'GANC_ESCALA_HASTA'
      Origin = 'GANC_ESCALA_HASTA'
    end
    object QOPagoGANC_ESCALA_VARIAC: TFloatField
      FieldName = 'GANC_ESCALA_VARIAC'
      Origin = 'GANC_ESCALA_VARIAC'
    end
    object QOPagoGANC_ESCALA_FIJO: TFloatField
      FieldName = 'GANC_ESCALA_FIJO'
      Origin = 'GANC_ESCALA_FIJO'
    end
    object QOPagoGANC_ESCALA_EXCED: TFloatField
      FieldName = 'GANC_ESCALA_EXCED'
      Origin = 'GANC_ESCALA_EXCED'
    end
    object QOPagoRETIENE_IVA: TStringField
      FieldName = 'RETIENE_IVA'
      Origin = 'RETIENE_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOPagoIVA_ACUMULADO: TFloatField
      FieldName = 'IVA_ACUMULADO'
      Origin = 'IVA_ACUMULADO'
      Required = True
    end
    object QOPagoENTREGADO: TStringField
      FieldName = 'ENTREGADO'
      Origin = 'ENTREGADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOPagoCOD_RET_IVA: TIntegerField
      FieldName = 'COD_RET_IVA'
      Origin = 'COD_RET_IVA'
      Required = True
    end
    object QOPagoCONCEPTO_RET_IVA: TStringField
      FieldName = 'CONCEPTO_RET_IVA'
      Origin = 'CONCEPTO_RET_IVA'
      Required = True
      Size = 50
    end
    object QOPagoTASA_RET_IVA: TCurrencyField
      FieldName = 'TASA_RET_IVA'
      Origin = 'TASA_RET_IVA'
      Required = True
    end
    object QOPagoMUESTRASUCURSAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object QOPagoMUESTRACOMPROBANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      Size = 15
    end
    object QOPagoID_TIPOCOMPROBANTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_TIPOCOMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
    end
    object QOPagoMUESTRACORREO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACORREO'
      Origin = 'CORREO'
      ProviderFlags = []
      Size = 100
    end
    object QOPagoID_OBRA: TIntegerField
      FieldName = 'ID_OBRA'
      Origin = 'ID_OBRA'
      Required = True
    end
    object QOPagoMUESTRAOBRA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAOBRA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 100
    end
  end
  object QMovAplicaCCCompra: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select m.*,'
      '  f.FechaCompra as MuestraFechaCpbte,'
      '  f.total as MuestraTotalFactura from MovAplicaCCCompra  m'
      
        '  left join FcCompCab f on f.id_fc=m.aplica_id_cpbte and f.tipoc' +
        'pbte=m.aplica_tipocpbte'
      'Where m.id_cpbte = :id and m.tipoCpbte = :Tipo')
    Left = 368
    Top = 710
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'Tipo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QMovAplicaCCCompraID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      Origin = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovAplicaCCCompraID_MOVCCCOMPRA: TIntegerField
      FieldName = 'ID_MOVCCCOMPRA'
      Origin = 'ID_MOVCCCOMPRA'
      Required = True
    end
    object QMovAplicaCCCompraFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QMovAplicaCCCompraPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Origin = 'PROVEEDOR'
      Required = True
      Size = 6
    end
    object QMovAplicaCCCompraID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      Required = True
    end
    object QMovAplicaCCCompraTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QMovAplicaCCCompraCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QMovAplicaCCCompraNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Origin = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object QMovAplicaCCCompraIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QMovAplicaCCCompraAPLICA_ID_CPBTE: TIntegerField
      FieldName = 'APLICA_ID_CPBTE'
      Origin = 'APLICA_ID_CPBTE'
      Required = True
    end
    object QMovAplicaCCCompraAPLICA_TIPOCPBTE: TStringField
      FieldName = 'APLICA_TIPOCPBTE'
      Origin = 'APLICA_TIPOCPBTE'
      Size = 2
    end
    object QMovAplicaCCCompraAPLICA_CLASECPBTE: TStringField
      FieldName = 'APLICA_CLASECPBTE'
      Origin = 'APLICA_CLASECPBTE'
      Size = 2
    end
    object QMovAplicaCCCompraAPLICA_NROCPBTE: TStringField
      FieldName = 'APLICA_NROCPBTE'
      Origin = 'APLICA_NROCPBTE'
      Size = 13
    end
    object QMovAplicaCCCompraDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QMovAplicaCCCompraAPLICA_NETO: TFloatField
      FieldName = 'APLICA_NETO'
      Origin = 'APLICA_NETO'
    end
    object QMovAplicaCCCompraCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Origin = 'CONCILIADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QMovAplicaCCCompraAPLICA_IVA: TFloatField
      FieldName = 'APLICA_IVA'
      Origin = 'APLICA_IVA'
      Required = True
    end
    object QMovAplicaCCCompraMUESTRAFECHACPBTE: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAFECHACPBTE'
      Origin = 'FECHACOMPRA'
      ProviderFlags = []
    end
    object QMovAplicaCCCompraMUESTRATOTALFACTURA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATOTALFACTURA'
      Origin = 'TOTAL'
      ProviderFlags = []
    end
  end
  object QMovCCCompra: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select m.*,m.saldo as MuestraAPagar,'
      
        '( select g.id_grupo from mov_ctacte_comp_grupo ( m.id_movcccompr' +
        'a ) g ) as Grupo,'
      
        '( select g2.fiscal from mov_ctacte_comp_grupo ( m.id_movcccompra' +
        ' ) g2 ) as fiscal'
      'from movcccompra M'
      'where (m.proveedor=:Codigo) and (m.Saldo>0) order by '
      'm.fechacompra,m.nrocpbte')
    Left = 472
    Top = 528
    ParamData = <
      item
        Position = 1
        Name = 'Codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QMovCCCompraID_MOVCCCOMPRA: TIntegerField
      FieldName = 'ID_MOVCCCOMPRA'
      Origin = 'ID_MOVCCCOMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovCCCompraID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      Required = True
    end
    object QMovCCCompraPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Origin = 'PROVEEDOR'
      Size = 6
    end
    object QMovCCCompraFECHACOMPRA: TSQLTimeStampField
      FieldName = 'FECHACOMPRA'
      Origin = 'FECHACOMPRA'
    end
    object QMovCCCompraFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
    object QMovCCCompraTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QMovCCCompraCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QMovCCCompraNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QMovCCCompraDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
    end
    object QMovCCCompraHABER: TFloatField
      FieldName = 'HABER'
      Origin = 'HABER'
    end
    object QMovCCCompraSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
    end
    object QMovCCCompraDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QMovCCCompraID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Origin = 'ID_MONEDA'
    end
    object QMovCCCompraCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object QMovCCCompraMUESTRAAPAGAR: TFloatField
      FieldName = 'MUESTRAAPAGAR'
      Origin = 'SALDO'
      ProviderFlags = []
    end
    object QMovCCCompraGRUPO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'GRUPO'
      Origin = 'ID_GRUPO'
      ProviderFlags = []
    end
    object QMovCCCompraFISCAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FISCAL'
      Origin = 'FISCAL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
  end
  object QAjusteCab: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select rc.*,cp.denominacion as MuestraComprobante,'
      'cp.id_comprobante as Id_TipoComprobante,'
      's.detalle as MuestraSucursal,'
      'd.nombre as MuestraDeposito,'
      'p.nombre as MuestraPersonal  from rtomercacab rc'
      'left join depositos d  on d.id=rc.deposito'
      'left join sucursal s on s.codigo=rc.sucursal'
      'left join personal p on p.codigo=rc.personal_retira'
      'left join comprobantes cp on cp.clase_comprob=rc.ClaseCpbte and'
      '          cp.letra=rc.Letra and'
      '          cp.sucursal=rc.sucursal and'
      '          cp.tipo_comprob=rc.tipocpbte'
      'where rc.id_rto=:id')
    Left = 824
    Top = 167
    ParamData = <
      item
        Position = 1
        Name = 'id'
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
      Size = 15
    end
    object QAjusteCabID_TIPOCOMPROBANTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_TIPOCOMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
    end
    object QAjusteCabMUESTRASUCURSAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object QAjusteCabMUESTRADEPOSITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object QAjusteCabMUESTRAPERSONAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAPERSONAL'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
  end
  object QAjusteDet: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      
        'select rd.* ,  s.REEMPLAZO_STK as MuestraCodAlternativo from rto' +
        'mercadet rd'
      'left join stock s on s.codigo_stk=rd.codigo'
      'where rd.id_rto_cab=:id_cab')
    Left = 816
    Top = 112
    ParamData = <
      item
        Position = 1
        Name = 'id_cab'
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
    object QAjusteDetID_MOTIVO: TIntegerField
      FieldName = 'ID_MOTIVO'
      Origin = 'ID_MOTIVO'
      Required = True
    end
    object QAjusteDetMUESTRACODALTERNATIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACODALTERNATIVO'
      Origin = 'REEMPLAZO_STK'
      ProviderFlags = []
    end
  end
  object QAnulacionOPago: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      
        'select o.*, s.detalle as MuestraSucursal,c.denominacion as Muest' +
        'raComprobante, c.id_comprobante as id_tipoComprobante from Anula' +
        'cion_OPago o'
      'left join sucursal s on s.codigo=o.sucursal'
      'left join comprobantes c on c.clase_comprob=O.ClaseCpbte and'
      '          c.letra=o.Letra and'
      '          c.sucursal=o.sucursal and'
      '          c.tipo_comprob=o.tipocpbte and'
      '          c.compra_venta='#39'C'#39
      'where o.id_anulacion=:id'
      'and o.tipocpbte='#39'XP'#39)
    Left = 1208
    Top = 32
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QAnulacionOPagoID_ANULACION: TIntegerField
      FieldName = 'ID_ANULACION'
      Origin = 'ID_ANULACION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAnulacionOPagoTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QAnulacionOPagoCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QAnulacionOPagoNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object QAnulacionOPagoCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object QAnulacionOPagoLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QAnulacionOPagoSUC: TStringField
      FieldName = 'SUC'
      Origin = 'SUC'
      Required = True
      Size = 4
    end
    object QAnulacionOPagoNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
      Size = 8
    end
    object QAnulacionOPagoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QAnulacionOPagoRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QAnulacionOPagoCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QAnulacionOPagoLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object QAnulacionOPagoTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Origin = 'TIPOIVA'
    end
    object QAnulacionOPagoCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QAnulacionOPagoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object QAnulacionOPagoTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QAnulacionOPagoOBSERVACIONES1: TStringField
      FieldName = 'OBSERVACIONES1'
      Origin = 'OBSERVACIONES1'
      Size = 60
    end
    object QAnulacionOPagoOBSERVACIONES2: TStringField
      FieldName = 'OBSERVACIONES2'
      Origin = 'OBSERVACIONES2'
      Size = 60
    end
    object QAnulacionOPagoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QAnulacionOPagoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object QAnulacionOPagoMUESTRASUCURSAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object QAnulacionOPagoMUESTRACOMPROBANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      Size = 15
    end
    object QAnulacionOPagoID_TIPOCOMPROBANTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_TIPOCOMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
    end
  end
  object QObras: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from obras where codigo=:codigo')
    Left = 376
    Top = 594
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QRtoObraCab: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select Rto.*,'
      '  De.Nombre as MuestraDeposito,'
      '  Su.Detalle as MuestraSucursal,'
      '  cp.denominacion as MuestraComprobante,'
      '  cp.id_comprobante as Id_TipoComprobante,'
      '  ob.detalle as MuestraObra from rto_obracab Rto'
      'left join Depositos De  on De.Id=Rto.Deposito'
      'left join Sucursal Su  on Su.Codigo=Rto.Sucursal'
      'left join Obras ob on ob.codigo=rto.codigo'
      'left join comprobantes cp on cp.clase_comprob=Rto.ClaseCpbte and'
      '          cp.letra=Rto.LetraRto and'
      '          cp.sucursal=Rto.sucursal and'
      '          cp.tipo_comprob=Rto.tipocpbte and'
      '          cp.Compra_venta='#39'V'#39
      'where Rto.TipoCpbte= :TipoCpbte'
      'and Rto.id_Rto=:id')
    Left = 472
    Top = 416
    ParamData = <
      item
        Name = 'TIPOCPBTE'
        DataType = ftString
        ParamType = ptInput
        Size = 2
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QRtoObraDet: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      
        'Select rd.*,m.moneda as MuestraMoneda,m.signo as MuestraSigno fr' +
        'om Rto_ObraDet rd'
      'left join stock s on s.codigo_stk=rd.codigo'
      'left join monedas m on m.id=rd.id_moneda'
      'where rd.Id_CabRto= :id')
    Left = 557
    Top = 456
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QRtoObraSubDet: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'Select r.* from rto_obrasubdet r where r.id_rtocab= :id')
    Left = 664
    Top = 472
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QTarjetacredito_comp: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select tcc.*,'
      '  tc.descripcion as MuestraTarjetaCredito,'
      '  tc.Cuit as MuestraCuit,'
      '  b.nombre as MuestraBanco,'
      '  tc.razonsocial as MuestraRazonSocial'
      'from  tarjetacredito_comp tcc'
      '  left join t_credito tc on tc.id_tc=tcc.id_tcredito'
      '  left join bancos b on b.id_banco=tcc.id_banco'
      'where tcc.id=:id')
    Left = 928
    Top = 264
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QTarjetacredito_compID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTarjetacredito_compNRO_TARJETA: TStringField
      FieldName = 'NRO_TARJETA'
      Origin = 'NRO_TARJETA'
      Size = 16
    end
    object QTarjetacredito_compNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 30
    end
    object QTarjetacredito_compID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
      Required = True
    end
    object QTarjetacredito_compMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object QTarjetacredito_compID_TCREDITO: TIntegerField
      FieldName = 'ID_TCREDITO'
      Origin = 'ID_TCREDITO'
    end
    object QTarjetacredito_compMUESTRATARJETACREDITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATARJETACREDITO'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QTarjetacredito_compMUESTRACUIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACUIT'
      Origin = 'CUIT'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object QTarjetacredito_compMUESTRABANCO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRABANCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QTarjetacredito_compMUESTRARAZONSOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRARAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
  end
  object QTCredito: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select t.*,'
      '  s.detalle_stk as MuestraArticulo,'
      '  c.nombre as MuestraCtaBco,'
      '  c.nro_cuenta as MuestraNroCtaBco'
      'from T_Credito t'
      '  left join stock s on s.codigo_stk=t.codigoarticulo'
      '  left join cuenta_caja c on c.id_cuenta=t.id_cuenta_banco'
      'where t.id_tc=:Id')
    Left = 920
    Top = 384
    ParamData = <
      item
        Position = 1
        Name = 'Id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QTCreditoID_TC: TIntegerField
      FieldName = 'ID_TC'
      Origin = 'ID_TC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTCreditoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 15
    end
    object QTCreditoMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object QTCreditoCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Size = 8
    end
    object QTCreditoID_CUENTA_BANCO: TIntegerField
      FieldName = 'ID_CUENTA_BANCO'
      Origin = 'ID_CUENTA_BANCO'
    end
    object QTCreditoDIAS_ACREDITACION: TSmallintField
      FieldName = 'DIAS_ACREDITACION'
      Origin = 'DIAS_ACREDITACION'
      Required = True
    end
    object QTCreditoCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QTCreditoRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QTCreditoMUESTRAARTICULO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAARTICULO'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
    object QTCreditoMUESTRACTABCO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACTABCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object QTCreditoMUESTRANROCTABCO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANROCTABCO'
      Origin = 'NRO_CUENTA'
      ProviderFlags = []
      Size = 15
    end
    object QTCreditoORDEN: TIntegerField
      FieldName = 'ORDEN'
      Origin = 'ORDEN'
      Required = True
    end
    object QTCreditoVISIBLE: TStringField
      FieldName = 'VISIBLE'
      Origin = 'VISIBLE'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPCodigoBarra: TDataSetProvider
    DataSet = QCodigoB
    UpdateMode = upWhereKeyOnly
    Left = 1184
    Top = 185
  end
  object CDSCodigoBarra: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigoBarra'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCodigoBarra'
    Left = 1272
    Top = 185
    object CDSCodigoBarraCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      Required = True
      Size = 8
    end
  end
  object QCodigoB: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      
        'select codigo_stk from codigobarra where codigobarra = :codigoBa' +
        'rra')
    Left = 1078
    Top = 184
    ParamData = <
      item
        Position = 1
        Name = 'codigoBarra'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object DSPVerifRes3886: TDataSetProvider
    DataSet = QVerifRes3886
    Left = 104
    Top = 808
  end
  object CDSVerifRes3886: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'rubro'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'subrubro'
        ParamType = ptInput
      end>
    ProviderName = 'DSPVerifRes3886'
    Left = 192
    Top = 808
  end
  object QVerifRes3886: TFDQuery
    ObjectView = False
    Connection = fdcGestion
    SQL.Strings = (
      'select Max(e.id) from excluidos_rg3668 e'
      'where e.rubro = :rubro and e.subrubro = :subrubro')
    Left = 24
    Top = 808
    ParamData = <
      item
        Position = 1
        Name = 'rubro'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 2
        Name = 'subrubro'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end>
  end
  object QDstoUser: TFDQuery
    Connection = fdcGestion
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
      end
      item
        SourceDataType = dtFmtBCD
        TargetDataType = dtDouble
      end>
    SQL.Strings = (
      'select * from descuentos_usuarios  '
      'where id_usuario=:id')
    Left = 920
    Top = 152
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QUsuariosAdminNP: TFDQuery
    Connection = fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtBCD
        TargetDataType = dtDouble
      end
      item
        SourceDataType = dtFmtBCD
        TargetDataType = dtDouble
      end>
    SQL.Strings = (
      'select * from USUARIO_ADMINISTRADORES_NP  where id_usuario=:id')
    Left = 664
    Top = 536
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QBuscaRto: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      
        'select r.id_rto,r.codigo,r.nombre,r.fechavta,r.total from rtocab' +
        ' r'
      'where r.letrarto=:Letra and'
      '      r.sucrto=:sucfac and'
      '      r.numerorto=:numfac and'
      '      r.sucursal=:sucursal and'
      '      ( r.tipocpbte=:tipo ) and'
      '      ( r.clasecpbte=:clase )')
    Left = 912
    Top = 808
    ParamData = <
      item
        Name = 'LETRA'
        DataType = ftString
        ParamType = ptInput
        Size = 1
        Value = Null
      end
      item
        Name = 'SUCFAC'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end
      item
        Name = 'NUMFAC'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Name = 'CLASE'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end>
    object QBuscaRtoID_RTO: TIntegerField
      FieldName = 'ID_RTO'
      Origin = 'ID_RTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaRtoCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object QBuscaRtoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QBuscaRtoFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object QBuscaRtoTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
  end
  object QGrupoCpbteVta: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      ' select td.id_cab'
      ' from tabla_cpbte_ccvta_det td'
      ' where td.id_cpbte=:ID_COMPROBANTE')
    Left = 557
    Top = 576
    ParamData = <
      item
        Name = 'ID_COMPROBANTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QGrupoCpbteVtaID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      Required = True
    end
  end
  object QNotaPedidoImp: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'Select * from npedidoimp_cliente Where Id_npCab=:id')
    Left = 664
    Top = 618
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QNotaPedidoDet: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      
        'Select np.*,m.signo as MuestraSigno,s.reemplazo_stk as MuestraCo' +
        'dAlternativo from NPedidoDet_Cliente np'
      'left join monedas m on m.id=np.id_moneda'
      'left join stock s on s.codigo_stk=np.codigoarticulo'
      'where np.Id_CabNp= :id')
    Left = 592
    Top = 658
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QNotaPedidoDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QNotaPedidoDetID_CABNP: TIntegerField
      FieldName = 'ID_CABNP'
      Origin = 'ID_CABNP'
    end
    object QNotaPedidoDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QNotaPedidoDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QNotaPedidoDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QNotaPedidoDetRENGLON: TFloatField
      FieldName = 'RENGLON'
      Origin = 'RENGLON'
    end
    object QNotaPedidoDetFECHAPEDIOD: TSQLTimeStampField
      FieldName = 'FECHAPEDIOD'
      Origin = 'FECHAPEDIOD'
    end
    object QNotaPedidoDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Size = 8
    end
    object QNotaPedidoDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QNotaPedidoDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object QNotaPedidoDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Size = 1
    end
    object QNotaPedidoDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      Size = 1
    end
    object QNotaPedidoDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
    end
    object QNotaPedidoDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
      Origin = 'IVA_SOBRETASA'
    end
    object QNotaPedidoDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Origin = 'TIPOIVA_TASA'
    end
    object QNotaPedidoDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Origin = 'TIPOIVA_SOBRETASA'
    end
    object QNotaPedidoDetCANTIDAD_PEDIDIA: TFloatField
      FieldName = 'CANTIDAD_PEDIDIA'
      Origin = 'CANTIDAD_PEDIDIA'
    end
    object QNotaPedidoDetCANTIDAD_ENTREGADA: TFloatField
      FieldName = 'CANTIDAD_ENTREGADA'
      Origin = 'CANTIDAD_ENTREGADA'
    end
    object QNotaPedidoDetCANTIDAD_FALTANTE: TFloatField
      FieldName = 'CANTIDAD_FALTANTE'
      Origin = 'CANTIDAD_FALTANTE'
    end
    object QNotaPedidoDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
    end
    object QNotaPedidoDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
    end
    object QNotaPedidoDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
    end
    object QNotaPedidoDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
      Origin = 'UNITARIO_EXENTO'
    end
    object QNotaPedidoDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
      Origin = 'UNITARIO_GRAVADO'
    end
    object QNotaPedidoDetIVA_UNITARIO: TFloatField
      FieldName = 'IVA_UNITARIO'
      Origin = 'IVA_UNITARIO'
      Required = True
    end
    object QNotaPedidoDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
    end
    object QNotaPedidoDetTOTAL_EXENTO: TFloatField
      FieldName = 'TOTAL_EXENTO'
      Origin = 'TOTAL_EXENTO'
      Required = True
    end
    object QNotaPedidoDetTOTAL_GRAVADO: TFloatField
      FieldName = 'TOTAL_GRAVADO'
      Origin = 'TOTAL_GRAVADO'
      Required = True
    end
    object QNotaPedidoDetIVA_TOTAL: TFloatField
      FieldName = 'IVA_TOTAL'
      Origin = 'IVA_TOTAL'
      Required = True
    end
    object QNotaPedidoDetTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QNotaPedidoDetDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
    end
    object QNotaPedidoDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object QNotaPedidoDetMARGEN: TFloatField
      FieldName = 'MARGEN'
      Origin = 'MARGEN'
    end
    object QNotaPedidoDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Size = 1
    end
    object QNotaPedidoDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object QNotaPedidoDetGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      Origin = 'GRAVADO_IB'
      FixedChar = True
      Size = 1
    end
    object QNotaPedidoDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Origin = 'ID_MONEDA'
    end
    object QNotaPedidoDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object QNotaPedidoDetCANTIDAD_UNIDADES: TFloatField
      FieldName = 'CANTIDAD_UNIDADES'
      Origin = 'CANTIDAD_UNIDADES'
      Required = True
    end
    object QNotaPedidoDetPRESENTACION_CANTI: TFloatField
      FieldName = 'PRESENTACION_CANTI'
      Origin = 'PRESENTACION_CANTI'
      Required = True
    end
    object QNotaPedidoDetMUESTRASIGNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASIGNO'
      Origin = 'SIGNO'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object QNotaPedidoDetMUESTRACODALTERNATIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACODALTERNATIVO'
      Origin = 'REEMPLAZO_STK'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QNotaPedidoCab: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select np.*,'
      '  Fp.Detalle as MuestraCondVenta,'
      '  De.Nombre as MuestraDeposito,'
      '  Su.Detalle as MuestraSucursal,'
      '  Ldr.Nombre as MuestraLdr,'
      '  ins.Detalle as MuestraIva,'
      '  cp.denominacion as MuestraComprobante,'
      '  cp.id_comprobante as Id_TipoComprobante,'
      '  v.nombre as MuestraVendedor'
      'from npedidocab_cliente np'
      '  left join F_Pago Fp on Fp.Codigo=np.CondicionVta'
      '  left join personal v on v.codigo=np.vendedor'
      '  left join Depositos De  on De.Id=np.Deposito'
      '  left join Sucursal Su  on Su.Codigo=np.Sucursal'
      '  left join inscripcion ins on ins.codigo=np.TipoIva'
      
        '  left join LdrCliente Ldr on ((Ldr.Codigo_Cliente=np.Codigo) an' +
        'd (Ldr.Codigo_Ldr=np.Ldr))'
      
        '  left join comprobantes cp on cp.clase_comprob=np.ClaseCpbte an' +
        'd'
      '          cp.letra=np.letranp and'
      '          cp.sucursal=np.sucursal and'
      '          cp.tipo_comprob=np.tipocpbte and'
      '          cp.Compra_venta='#39'V'#39
      'where np.TipoCpbte= :TipoCpbte'
      'and np.id=:id')
    Left = 496
    Top = 650
    ParamData = <
      item
        Position = 1
        Name = 'TipoCpbte'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QNotaPedidoCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QNotaPedidoCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QNotaPedidoCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QNotaPedidoCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QNotaPedidoCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object QNotaPedidoCabLETRANP: TStringField
      FieldName = 'LETRANP'
      Origin = 'LETRANP'
      Size = 1
    end
    object QNotaPedidoCabSUCNP: TStringField
      FieldName = 'SUCNP'
      Origin = 'SUCNP'
      Size = 4
    end
    object QNotaPedidoCabNUMERONP: TStringField
      FieldName = 'NUMERONP'
      Origin = 'NUMERONP'
      Size = 8
    end
    object QNotaPedidoCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QNotaPedidoCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QNotaPedidoCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object QNotaPedidoCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QNotaPedidoCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object QNotaPedidoCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Origin = 'TIPOIVA'
    end
    object QNotaPedidoCabCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QNotaPedidoCabLISTAPRECIO: TIntegerField
      FieldName = 'LISTAPRECIO'
      Origin = 'LISTAPRECIO'
    end
    object QNotaPedidoCabFECHAPEDIDO: TSQLTimeStampField
      FieldName = 'FECHAPEDIDO'
      Origin = 'FECHAPEDIDO'
    end
    object QNotaPedidoCabFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
    object QNotaPedidoCabCONDICIONVTA: TIntegerField
      FieldName = 'CONDICIONVTA'
      Origin = 'CONDICIONVTA'
    end
    object QNotaPedidoCabNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
      Origin = 'NETOGRAV1'
    end
    object QNotaPedidoCabNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
      Origin = 'NETOGRAV2'
    end
    object QNotaPedidoCabDSTO: TFloatField
      FieldName = 'DSTO'
      Origin = 'DSTO'
    end
    object QNotaPedidoCabDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
      Origin = 'DSTOIMPORTE'
    end
    object QNotaPedidoCabNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
      Origin = 'NETOEXEN1'
    end
    object QNotaPedidoCabNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
      Origin = 'NETOEXEN2'
    end
    object QNotaPedidoCabTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QNotaPedidoCabDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
    end
    object QNotaPedidoCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Origin = 'IMPRESO'
      Size = 1
    end
    object QNotaPedidoCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Origin = 'OBSERVACION1'
      Size = 60
    end
    object QNotaPedidoCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Origin = 'OBSERVACION2'
      Size = 60
    end
    object QNotaPedidoCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QNotaPedidoCabZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'ZONA'
    end
    object QNotaPedidoCabLDR: TIntegerField
      FieldName = 'LDR'
      Origin = 'LDR'
    end
    object QNotaPedidoCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object QNotaPedidoCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object QNotaPedidoCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Size = 1
    end
    object QNotaPedidoCabCOMISIONVENDEDOR: TFloatField
      FieldName = 'COMISIONVENDEDOR'
      Origin = 'COMISIONVENDEDOR'
    end
    object QNotaPedidoCabVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 6
    end
    object QNotaPedidoCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object QNotaPedidoCabRENGLONES: TSmallintField
      FieldName = 'RENGLONES'
      Origin = 'RENGLONES'
    end
    object QNotaPedidoCabORIGEN_ID_NOTA_PEDIDO: TIntegerField
      FieldName = 'ORIGEN_ID_NOTA_PEDIDO'
      Origin = 'ORIGEN_ID_NOTA_PEDIDO'
    end
    object QNotaPedidoCabORIGEN_TIPOCPBTE: TStringField
      FieldName = 'ORIGEN_TIPOCPBTE'
      Origin = 'ORIGEN_TIPOCPBTE'
      Size = 2
    end
    object QNotaPedidoCabORIGEN_NROCPBTE: TStringField
      FieldName = 'ORIGEN_NROCPBTE'
      Origin = 'ORIGEN_NROCPBTE'
      Size = 13
    end
    object QNotaPedidoCabCOPIA: TSmallintField
      FieldName = 'COPIA'
      Origin = 'COPIA'
      Required = True
    end
    object QNotaPedidoCabENTREGA_ID_CPBTE: TIntegerField
      FieldName = 'ENTREGA_ID_CPBTE'
      Origin = 'ENTREGA_ID_CPBTE'
    end
    object QNotaPedidoCabENTREGA_TIPOCPBTE: TStringField
      FieldName = 'ENTREGA_TIPOCPBTE'
      Origin = 'ENTREGA_TIPOCPBTE'
      Size = 2
    end
    object QNotaPedidoCabENTREGA_NROCPBTE: TStringField
      FieldName = 'ENTREGA_NROCPBTE'
      Origin = 'ENTREGA_NROCPBTE'
      Size = 13
    end
    object QNotaPedidoCabESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object QNotaPedidoCabPRESUPUESTO_ID: TIntegerField
      FieldName = 'PRESUPUESTO_ID'
      Origin = 'PRESUPUESTO_ID'
    end
    object QNotaPedidoCabPRESUPUESTO_NROCPBTE: TStringField
      FieldName = 'PRESUPUESTO_NROCPBTE'
      Origin = 'PRESUPUESTO_NROCPBTE'
      Size = 13
    end
    object QNotaPedidoCabMUESTRACONDVENTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACONDVENTA'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QNotaPedidoCabMUESTRADEPOSITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QNotaPedidoCabMUESTRASUCURSAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QNotaPedidoCabMUESTRALDR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRALDR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QNotaPedidoCabMUESTRAIVA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAIVA'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QNotaPedidoCabMUESTRACOMPROBANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QNotaPedidoCabID_TIPOCOMPROBANTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_TIPOCOMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QNotaPedidoCabMUESTRAVENDEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAVENDEDOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QNotaPedidoCabFACTURA_ID: TIntegerField
      FieldName = 'FACTURA_ID'
      Origin = 'FACTURA_ID'
    end
    object QNotaPedidoCabFACTURA_NROCPBTE: TStringField
      FieldName = 'FACTURA_NROCPBTE'
      Origin = 'FACTURA_NROCPBTE'
      Size = 13
    end
    object QNotaPedidoCabID_PEDIDO_MOVIL: TIntegerField
      FieldName = 'ID_PEDIDO_MOVIL'
      Origin = 'ID_PEDIDO_MOVIL'
    end
  end
  object QBuscaNroFac_: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      
        'select f.id_fc,f.codigo,f.nombre,f.fechavta,f.total from fcvtaca' +
        'b f'
      'where f.letrafac=:Letra and'
      '      f.sucfac=:sucfac and'
      '      f.numerofac=:numfac and'
      '      f.sucursal=:sucursal and      '
      '      (f.tipocpbte=:tipo or f.tipocpbte=:tipo2  ) ')
    Left = 928
    Top = 488
    ParamData = <
      item
        Name = 'LETRA'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
        Value = Null
      end
      item
        Name = 'SUCFAC'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end
      item
        Name = 'NUMFAC'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Name = 'TIPO2'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end>
  end
  object QTabla_Users: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from  TABLA_USUARIOS')
    Left = 336
    Top = 800
    object QTabla_UsersUSER_ID: TIntegerField
      FieldName = 'USER_ID'
      Origin = 'USER_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTabla_UsersLOGINNAME: TStringField
      FieldName = 'LOGINNAME'
      Origin = 'LOGINNAME'
      Size = 25
    end
    object QTabla_UsersFULLNAME: TStringField
      FieldName = 'FULLNAME'
      Origin = 'FULLNAME'
      Size = 100
    end
    object QTabla_UsersPASSWORD: TStringField
      FieldName = 'PASSWORD'
      Origin = 'PASSWORD'
      Size = 25
    end
    object QTabla_UsersLASTACCES: TSQLTimeStampField
      FieldName = 'LASTACCES'
      Origin = 'LASTACCES'
    end
    object QTabla_UsersENABLED: TStringField
      FieldName = 'ENABLED'
      Origin = 'ENABLED'
      FixedChar = True
      Size = 1
    end
    object QTabla_UsersCREATEDATE: TSQLTimeStampField
      FieldName = 'CREATEDATE'
      Origin = 'CREATEDATE'
    end
    object QTabla_UsersLASTACCTIME: TSQLTimeStampField
      FieldName = 'LASTACCTIME'
      Origin = 'LASTACCTIME'
    end
    object QTabla_UsersCREATETIME: TSQLTimeStampField
      FieldName = 'CREATETIME'
      Origin = 'CREATETIME'
    end
    object QTabla_UsersACCESSOUNT: TIntegerField
      FieldName = 'ACCESSOUNT'
      Origin = 'ACCESSOUNT'
    end
  end
  object QTabla_Acces: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from  TABLA_USUARIOS_ACC')
    Left = 424
    Top = 800
    object QTabla_AccesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTabla_AccesUSERNAME: TStringField
      FieldName = 'USERNAME'
      Origin = 'USERNAME'
      Size = 25
    end
    object QTabla_AccesPERMISSION: TStringField
      FieldName = 'PERMISSION'
      Origin = 'PERMISSION'
      Size = 25
    end
  end
  object QTabla_Groups: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from  TABLA_USUARIOS_GROUPS')
    Left = 512
    Top = 808
    object QTabla_GroupsID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTabla_GroupsNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 25
    end
    object QTabla_GroupsDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Origin = 'DESCRIPTION'
      Size = 100
    end
  end
  object QTabla_Group_Acc: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from  TABLA_USUARIOS_GROUP_ACCESS')
    Left = 600
    Top = 808
    object QTabla_Group_AccGROUP_NAME: TStringField
      FieldName = 'GROUP_NAME'
      Origin = 'GROUP_NAME'
      Size = 25
    end
    object QTabla_Group_AccPERMISSIONS: TStringField
      FieldName = 'PERMISSIONS'
      Origin = 'PERMISSIONS'
      Size = 25
    end
  end
  object QTabla_Members: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from  TABLA_USUARIOS_MEMBERS')
    Left = 696
    Top = 808
    object QTabla_MembersUSERNAME: TStringField
      FieldName = 'USERNAME'
      Origin = 'USERNAME'
      Size = 25
    end
    object QTabla_MembersGROUPNAME: TStringField
      FieldName = 'GROUPNAME'
      Origin = 'GROUPNAME'
      Size = 25
    end
  end
  object QTabla_permissions: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from  TABLA_USUARIOS_PERMISSIONS')
    Left = 792
    Top = 810
    object QTabla_permissionsPERMISSION: TStringField
      FieldName = 'PERMISSION'
      Origin = 'PERMISSION'
      Size = 25
    end
    object QTabla_permissionsITEMS: TMemoField
      FieldName = 'ITEMS'
      Origin = 'ITEMS'
      BlobType = ftMemo
    end
    object QTabla_permissionsACTION: TIntegerField
      FieldName = 'ACTION'
      Origin = 'ACTION'
    end
    object QTabla_permissionsFORMNAME: TStringField
      FieldName = 'FORMNAME'
      Origin = 'FORMNAME'
      Size = 45
    end
  end
  object DSTabla_Users: TDataSource
    DataSet = QTabla_Users
    Left = 328
    Top = 848
  end
  object DSTabla_Acces: TDataSource
    DataSet = QTabla_Acces
    Left = 424
    Top = 856
  end
  object DSTabla_Groups: TDataSource
    DataSet = QTabla_Groups
    Left = 504
    Top = 864
  end
  object DSTabla_Group_Acc: TDataSource
    DataSet = QTabla_Group_Acc
    Left = 600
    Top = 864
  end
  object DSTabla_permissions: TDataSource
    DataSet = QTabla_permissions
    Left = 800
    Top = 872
  end
  object DSTabla_Members: TDataSource
    DataSet = QTabla_Members
    Left = 696
    Top = 872
  end
  object QAnulacioRecibos: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select o.*, s.detalle as MuestraSucursal,'
      '      c.denominacion as MuestraComprobante,'
      
        '      c.id_comprobante as id_tipoComprobante from Anulacion_Reci' +
        'bo o'
      'left join sucursal s on s.codigo=o.sucursal'
      'left join comprobantes c on c.clase_comprob=O.ClaseCpbte and'
      '          c.letra=o.Letra and'
      '          c.sucursal=o.sucursal and'
      '          c.tipo_comprob=o.tipocpbte and'
      '          c.compra_venta='#39'V'#39
      'where o.id_anulacion=:id'
      'and o.tipocpbte='#39'XR'#39)
    Left = 565
    Top = 8
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QAnulacioRecibosID_ANULACION: TIntegerField
      FieldName = 'ID_ANULACION'
      Origin = 'ID_ANULACION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAnulacioRecibosTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QAnulacioRecibosCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QAnulacioRecibosNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object QAnulacioRecibosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object QAnulacioRecibosLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QAnulacioRecibosSUC: TStringField
      FieldName = 'SUC'
      Origin = 'SUC'
      Required = True
      Size = 4
    end
    object QAnulacioRecibosNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
      Size = 8
    end
    object QAnulacioRecibosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QAnulacioRecibosRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QAnulacioRecibosCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QAnulacioRecibosLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object QAnulacioRecibosTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Origin = 'TIPOIVA'
    end
    object QAnulacioRecibosCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QAnulacioRecibosFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object QAnulacioRecibosTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QAnulacioRecibosOBSERVACIONES1: TStringField
      FieldName = 'OBSERVACIONES1'
      Origin = 'OBSERVACIONES1'
      Size = 60
    end
    object QAnulacioRecibosOBSERVACIONES2: TStringField
      FieldName = 'OBSERVACIONES2'
      Origin = 'OBSERVACIONES2'
      Size = 60
    end
    object QAnulacioRecibosSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QAnulacioRecibosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object QAnulacioRecibosMUESTRASUCURSAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QAnulacioRecibosMUESTRACOMPROBANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACOMPROBANTE'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QAnulacioRecibosID_TIPOCOMPROBANTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_TIPOCOMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDMoniFlatFileClientLink: TFDMoniFlatFileClientLink
    EventKinds = [ekError, ekConnConnect, ekConnTransact, ekCmdExecute, ekAdaptUpdate]
    FileColumns = [tiRefNo, tiTime, tiThreadID, tiMsgText]
    ShowTraces = False
    Left = 472
    Top = 8
  end
  object QRecepLote: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'Select * from RECEPMERCALOTES where Id_cabrecp = :id ')
    Left = 472
    Top = 584
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRecepLoteID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object QRecepLoteID_DETRECP: TIntegerField
      FieldName = 'ID_DETRECP'
      Origin = 'ID_DETRECP'
    end
    object QRecepLoteID_CABRECP: TIntegerField
      FieldName = 'ID_CABRECP'
      Origin = 'ID_CABRECP'
    end
    object QRecepLoteID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      Origin = 'ID_LOTE'
      Required = True
    end
    object QRecepLoteCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object QRecepLoteLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 15
    end
    object QRecepLoteDESPACHO: TStringField
      FieldName = 'DESPACHO'
      Origin = 'DESPACHO'
    end
    object QRecepLoteCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QRecepLoteDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object QRecepLoteTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Size = 2
    end
    object QRecepLoteFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QRecepLoteFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
  end
  object FdcUser: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=regulador'
      
        'Database=C:\Proyectos Delphi\GestionComercial\Tablas IB\GESTIONV' +
        '3.FDB'
      'MonitorBy=FlatFile'
      'DriverID=FB')
    TxOptions.Isolation = xiReadCommitted
    LoginPrompt = False
    Left = 100
    Top = 8
  end
  object QProvincia: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from provincia'
      'where id_pro=:id')
    Left = 1088
    Top = 552
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QProvinciaID_PRO: TIntegerField
      FieldName = 'ID_PRO'
      Origin = 'ID_PRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QProvinciaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
    end
    object QProvinciaCODIGO_COT: TStringField
      FieldName = 'CODIGO_COT'
      Origin = 'CODIGO_COT'
      FixedChar = True
      Size = 1
    end
  end
  object QPercepcionIvaVta: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from fcvtapercepcioniva i where i.id_fcvtacab=:id')
    Left = 1222
    Top = 407
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QPercepcionIvaVtaID_PERCEPCION: TIntegerField
      FieldName = 'ID_PERCEPCION'
      Origin = 'ID_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPercepcionIvaVtaCODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      Origin = 'CODIGO_PERCEPCION'
      Required = True
    end
    object QPercepcionIvaVtaDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QPercepcionIvaVtaID_FCVTACAB: TIntegerField
      FieldName = 'ID_FCVTACAB'
      Origin = 'ID_FCVTACAB'
      Required = True
    end
    object QPercepcionIvaVtaNETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
    end
    object QPercepcionIvaVtaTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object QPercepcionIvaVtaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QPercepcionIvaVtaCODIGOREGIMEN: TIntegerField
      FieldName = 'CODIGOREGIMEN'
      Origin = 'CODIGOREGIMEN'
    end
  end
  object QPercecpionIvaPres: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select * from prespercepcioniva i where i.id_pr=:id')
    Left = 1222
    Top = 471
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QPercecpionIvaPresID_PERCEPCION: TIntegerField
      FieldName = 'ID_PERCEPCION'
      Origin = 'ID_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPercecpionIvaPresCODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      Origin = 'CODIGO_PERCEPCION'
      Required = True
    end
    object QPercecpionIvaPresDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QPercecpionIvaPresID_PR: TIntegerField
      FieldName = 'ID_PR'
      Origin = 'ID_PR'
      Required = True
    end
    object QPercecpionIvaPresNETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
    end
    object QPercecpionIvaPresTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object QPercecpionIvaPresIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QPercecpionIvaPresCODIGOREGIMEN: TIntegerField
      FieldName = 'CODIGOREGIMEN'
      Origin = 'CODIGOREGIMEN'
    end
  end
  object QCarneCab: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select c.* from  fccompdet_carnes c where c.id_det=:id_detfac')
    Left = 1176
    Top = 792
    ParamData = <
      item
        Position = 1
        Name = 'ID_DETFAC'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QCarneCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCarneCabID_DET: TIntegerField
      FieldName = 'ID_DET'
      Origin = 'ID_DET'
      Required = True
    end
    object QCarneCabCLASIFICACION: TStringField
      FieldName = 'CLASIFICACION'
      Origin = 'CLASIFICACION'
      Size = 2
    end
    object QCarneCabNRO_TROPA: TStringField
      FieldName = 'NRO_TROPA'
      Origin = 'NRO_TROPA'
      Size = 6
    end
    object QCarneCabT_KILOS: TIntegerField
      FieldName = 'T_KILOS'
      Origin = 'T_KILOS'
      Required = True
    end
    object QCarneCabT_MEDIAS: TIntegerField
      FieldName = 'T_MEDIAS'
      Origin = 'T_MEDIAS'
      Required = True
    end
  end
  object QCarneDet: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select d.* from fccompdet_carnes_det d where d.id_det=:id_det')
    Left = 1176
    Top = 856
    ParamData = <
      item
        Position = 1
        Name = 'ID_DET'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QCarneDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCarneDetID_DET: TIntegerField
      FieldName = 'ID_DET'
      Origin = 'ID_DET'
      Required = True
    end
    object QCarneDetMEDIA: TIntegerField
      FieldName = 'MEDIA'
      Origin = 'MEDIA'
    end
    object QCarneDetEN_STOCK: TStringField
      FieldName = 'EN_STOCK'
      Origin = 'EN_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object spRecreaIVADetFc: TFDStoredProc
    Connection = fdcGestion
    StoredProcName = 'TOOLS_RECREAR_IVA_DET'
    Left = 1224
    Top = 536
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QRemitoLOTE: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'Select * from rto_LOTES where Id_rto = :id ')
    Left = 272
    Top = 756
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRemitoLOTEID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRemitoLOTEID_DET: TIntegerField
      FieldName = 'ID_DET'
      Origin = 'ID_DET'
    end
    object QRemitoLOTEID_RTO: TIntegerField
      FieldName = 'ID_RTO'
      Origin = 'ID_RTO'
    end
    object QRemitoLOTEID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      Origin = 'ID_LOTE'
      Required = True
    end
    object QRemitoLOTECODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object QRemitoLOTELOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 15
    end
    object QRemitoLOTEDESPACHO: TStringField
      FieldName = 'DESPACHO'
      Origin = 'DESPACHO'
    end
    object QRemitoLOTECANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QRemitoLOTEFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QRemitoLOTEFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
    object QRemitoLOTETIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Size = 2
    end
    object QRemitoLOTEDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
  end
  object QVentaDetNovedades: TFDQuery
    Connection = fdcGestion
    SQL.Strings = (
      'select f.* from fcvtadet_novedades f where f.id_cabfac=:Id')
    Left = 96
    Top = 648
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QVentaDetNovedadesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QVentaDetNovedadesID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      Origin = 'ID_CABFAC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QVentaDetNovedadesTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QVentaDetNovedadesCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object QVentaDetNovedadesDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QVentaDetNovedadesPRECIO_OLD: TFloatField
      FieldName = 'PRECIO_OLD'
      Origin = 'PRECIO_OLD'
      Required = True
    end
    object QVentaDetNovedadesPRECIO: TFloatField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      Required = True
    end
    object QVentaDetNovedadesTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVentaDetNovedadesFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
      Required = True
    end
    object QVentaDetNovedadesUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
  end
  object QSeriesAMayuscula: TFDQuery
    ObjectView = False
    Connection = fdcGestion
    SQL.Strings = (
      'update stock_series ss set ss.codigoserie=upper(ss.codigoserie)')
    Left = 1080
    Top = 240
  end
end

object DMStoreProcedure: TDMStoreProcedure
  OnDestroy = DataModuleDestroy
  Height = 735
  Width = 1346
  object spControlDepositosStock: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'CONTROLA_DEPOSITOSTK'
    Left = 336
    Top = 360
  end
  object QControlFondos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from control_fondos (:id,:tipo)')
    Left = 216
    Top = 243
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'tipo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object spBorrarAplicacionesVta: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'BORRAR_APLICACIONES_CCVTA'
    Left = 936
    Top = 17
    ParamData = <
      item
        Name = 'TIPO'
        DataType = ftString
        Precision = 2
        ParamType = ptInput
      end
      item
        Name = 'ID'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end>
  end
  object QComprob_User: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprob_usuario (:usuario,:comprobante)')
    Left = 336
    Top = 263
    ParamData = <
      item
        Name = 'usuario'
        ParamType = ptInput
      end
      item
        Name = 'comprobante'
        ParamType = ptInput
      end>
  end
  object QSaldoCtaCte: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from saldo_ctacte_cliente(:codigo)')
    Left = 464
    Top = 68
    ParamData = <
      item
        Name = 'codigo'
        ParamType = ptInput
      end>
  end
  object spMovCtaCteComp_Grupo: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'MOV_CTACTE_COMP_GRUPO'
    Left = 64
    Top = 200
    ParamData = <
      item
        Name = 'ID_MOV'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'ID_GRUPO'
        DataType = ftInteger
        Precision = 4
        ParamType = ptOutput
        Size = 4
        Value = -1
      end
      item
        Name = 'MUESTRATOTAL'
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 2
        ParamType = ptOutput
        Size = 8
        Value = '0'
      end
      item
        Name = 'MUESTRAGRUPO'
        DataType = ftInteger
        Precision = 4
        ParamType = ptOutput
        Size = 4
        Value = -1
      end
      item
        Name = 'FISCAL'
        DataType = ftFixedChar
        Precision = 1
        ParamType = ptOutput
        Size = 1
        Value = 'N'
      end>
  end
  object spCorrigeIVAFacVta: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'TOOLS_ARREGLA_IVA_DET'
    Left = 336
    Top = 215
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end>
  end
  object spMarcarCheRemplzados: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'TOOL_MARACAR_CHE_REMPLAZADOS'
    Left = 592
    Top = 22
  end
  object QExistenciaStockArticuloDepo_old: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from EXISTENCIA_STK_DEPOSITO(:codigo,:unidad,:deposito)')
    Left = 1104
    Top = 536
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'unidad'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'deposito'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QExistenciaStockArticuloDepo_oldCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
  end
  object spRenumeraMov_caja_recibos: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'TOOLS_RENUMERA_MOVCAJA_RECIBOS'
    Left = 592
    Top = 160
  end
  object QDepositoArti: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from DepositoStk  where'
      '(Codigo_Deposito=:codigo_deposito) AND (Codigo_stk=:Codigo)')
    Left = 336
    Top = 311
    ParamData = <
      item
        Name = 'codigo_deposito'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'Codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QDepositoArtiID_DEPOSITO: TIntegerField
      FieldName = 'ID_DEPOSITO'
      Required = True
    end
    object QDepositoArtiCODIGO_DEPOSITO: TIntegerField
      FieldName = 'CODIGO_DEPOSITO'
      Required = True
    end
    object QDepositoArtiCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object QDepositoArtiSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
    end
    object QDepositoArtiINICIAL: TFloatField
      FieldName = 'INICIAL'
    end
    object QDepositoArtiMINIMO: TFloatField
      FieldName = 'MINIMO'
    end
    object QDepositoArtiMEDIO: TFloatField
      FieldName = 'MEDIO'
    end
    object QDepositoArtiFISICO: TFloatField
      FieldName = 'FISICO'
    end
    object QDepositoArtiRECARGO: TFloatField
      FieldName = 'RECARGO'
      Required = True
    end
    object QDepositoArtiFUAPRECIOS: TSQLTimeStampField
      FieldName = 'FUAPRECIOS'
    end
  end
  object QSucursal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from sucursal'
      'where Codigo=:Codigo')
    Left = 216
    Top = 375
    ParamData = <
      item
        Name = 'Codigo'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 35
    end
    object QSucursalDIRECCION: TStringField
      FieldName = 'DIRECCION'
    end
    object QSucursalLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
    end
    object QSucursalTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Size = 15
    end
    object QSucursalTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Size = 15
    end
    object QSucursalRECARGO: TFloatField
      FieldName = 'RECARGO'
    end
    object QSucursalAPLICA_PERCEPCION_IIBB: TStringField
      FieldName = 'APLICA_PERCEPCION_IIBB'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object spBorrarAplicacionesComp: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'BORRAR_APLICACIONES_CCCOMP'
    Left = 592
    Top = 485
    ParamData = <
      item
        Name = 'TIPO'
        DataType = ftString
        Precision = 2
        ParamType = ptInput
      end
      item
        Name = 'ID'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end>
  end
  object spCorrigeFechaTx: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'TOOLS_CORRIGE_FECHA_DET_TRANSF'
    Left = 592
    Top = 207
  end
  object spAplicaCtrCosto: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'CTRO_COSTO_CPBTEVTA'
    Left = 592
    Top = 438
    ParamData = <
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'CTROCOSTO'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end>
  end
  object QActualizaVencimiento: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update vencimientos v set v.fecha_cumplido = :fecha,'
      '                          v.tipo_cpbte     = :tipo,'
      '                          v.clase_cpbte    = :clase,'
      '                          v.nrocpbte       = :nrocpbte,'
      
        '                          v.asunto_3 = '#39'Vencimiento Cumplido, co' +
        'n documento de Egreso '#39' || :tipo || '#39'-'#39' || :clase || '#39'-'#39' || :nro' +
        'cpbte,'
      '                          v.finalizado ='#39'S'#39','
      '                          v.id_cpbte= :id_egreso'
      '                          where v.id= :id')
    Left = 216
    Top = 331
    ParamData = <
      item
        Name = 'fecha'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'tipo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'clase'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'nrocpbte'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'tipo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'clase'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'nrocpbte'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'id_egreso'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object FMTBCDField1: TFloatField
      FieldName = 'CONTENIDO_COMPRA'
      Required = True
    end
  end
  object spGravar_2: TFDStoredProc
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
    StoredProcName = 'INGRESAR_TASA_RET_PER_2'
    Left = 216
    Top = 503
    ParamData = <
      item
        Position = 1
        Name = 'CUIT'
        DataType = ftString
        ParamType = ptInput
        Size = 13
      end
      item
        Position = 2
        Name = 'FECHA'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'DESDE'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'HASTA'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 6
        Name = 'ESTADO'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 7
        Name = 'CAMBIO'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 8
        Name = 'TASA_PERC'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'TASA_RET'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 10
        Name = 'G_PER'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 11
        Name = 'G_RET'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 12
        Name = 'TIPO_PERCECPION'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end>
  end
  object spMarcarComisionaFC: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'COMISIONAR_FC'
    Left = 464
    Top = 164
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end>
  end
  object spAgregarLote: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'AGREGAR_LOTE'
    Left = 592
    Top = 392
    ParamData = <
      item
        Name = 'TIPOCOMP'
        DataType = ftString
        Precision = 2
        ParamType = ptInput
      end
      item
        Name = 'ID_COMPROB'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'ID_DETALLE'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        Precision = 8
        ParamType = ptInput
      end
      item
        Name = 'FECHE_ENTRADA'
        DataType = ftTimeStamp
        Precision = 8
        ParamType = ptInput
      end
      item
        Name = 'FECHA_VTO'
        DataType = ftTimeStamp
        Precision = 8
        ParamType = ptInput
      end
      item
        Name = 'DESPACHO'
        DataType = ftString
        Precision = 20
        ParamType = ptInput
      end
      item
        Name = 'LOTE'
        DataType = ftString
        Precision = 15
        ParamType = ptInput
      end
      item
        Name = 'CANTIDAD'
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Name = 'DEPOSTIO'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end>
  end
  object spcambiaNroDBX: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'CAMBIAR_NRO_CPBTE'
    Left = 936
    Top = 127
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Precision = 2
        ParamType = ptInput
      end
      item
        Name = 'PREFIJO'
        DataType = ftString
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        Precision = 8
        ParamType = ptInput
      end
      item
        Name = 'COMPRA_VENTA'
        DataType = ftString
        Precision = 1
        ParamType = ptInput
      end
      item
        Name = 'FECHA'
        DataType = ftTimeStamp
        Precision = 8
        ParamType = ptInput
      end
      item
        Name = 'FECHA2'
        DataType = ftTimeStamp
        Precision = 8
        ParamType = ptInput
      end>
  end
  object QConfirmaExistencia: TFDQuery
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
      'update depositostk d set d.fultajuste = :Fecha'
      'where d.codigo_deposito = :deposito and d.codigo_stk = :codigo')
    Left = 592
    Top = 299
    ParamData = <
      item
        Name = 'Fecha'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'deposito'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QBorraLoteAjusteComp: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from ajuste_cc_provee a where a.lote=:lote')
    Left = 592
    Top = 346
    ParamData = <
      item
        Name = 'lote'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QBorraLoteAjusteVta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from ajuste_cc_clientes a where a.lote=:lote')
    Left = 464
    Top = 260
    ParamData = <
      item
        Name = 'lote'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object spAgregarMovEfectivo: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'AGREGAR_MOV_CAJA_EFECTIVO'
    Left = 776
    Top = 80
    ParamData = <
      item
        Name = 'ID_CPBTE'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'TIPO_COMPROB'
        DataType = ftString
        Precision = 2
        ParamType = ptInput
      end
      item
        Name = 'CLASE_COMPROB'
        DataType = ftString
        Precision = 2
        ParamType = ptInput
      end
      item
        Name = 'NROCPBTE'
        DataType = ftString
        Precision = 13
        ParamType = ptInput
      end
      item
        Name = 'ID_CUENTA_CAJA'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'FECHA_MOVIMIENTO'
        DataType = ftTimeStamp
        Precision = 8
        ParamType = ptInput
      end
      item
        Name = 'DEBE'
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Name = 'HABER'
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Name = 'TIPOOPERACION'
        DataType = ftString
        Precision = 1
        ParamType = ptInput
      end>
  end
  object QPasaACtaCOmpra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'UPDATE fccompcab f set f.ingresa_a_ctacte = :estado '
      'where f.id_fc = :id')
    Left = 64
    Top = 425
    ParamData = <
      item
        Name = 'estado'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QPasaACtaVta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'UPDATE fcvtacab f set f.ingresa_a_ctacte= :estado'
      ' where f.id_fc=:id')
    Left = 64
    Top = 470
    ParamData = <
      item
        Name = 'estado'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object spActualizaContadorCpbte: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'ACTULIZA_NUMERO_COMPROBANTE'
    Left = 464
    Top = 212
    ParamData = <
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'LETRA'
        DataType = ftString
        Precision = 1
        ParamType = ptInput
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        Precision = 8
        ParamType = ptInput
      end
      item
        Name = 'CLASE_COMPROB'
        DataType = ftString
        Precision = 2
        ParamType = ptInput
      end
      item
        Name = 'TIPO_COMPROB'
        DataType = ftString
        Precision = 2
        ParamType = ptInput
      end
      item
        Name = 'COMP_VTA'
        DataType = ftString
        Precision = 1
        ParamType = ptInput
      end>
  end
  object spActualizaNro_CAE_VTOFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDate
      end>
    StoredProcName = 'ACTUALIZA_FECHA_NRO_CAE'
    Left = 776
    Top = 318
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'FECHA'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'CAE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 4
        Name = 'CAEVENCIMIENTO'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'NUMERO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 6
        Name = 'QRIMAGE'
        DataType = ftGraphic
        ParamType = ptInput
      end>
  end
  object spNumeroCpbte: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'TRAE_NRO_CPBTE'
    Left = 216
    Top = 23
    ParamData = <
      item
        Position = 1
        Name = 'CLASECOMP'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 2
        Name = 'TIPOCOMP'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 3
        Name = 'LETRA_ING'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 4
        Name = 'COMPRAVENTA'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 5
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'LETRA'
        DataType = ftString
        ParamType = ptOutput
        Size = 1
      end
      item
        Position = 7
        Name = 'PREFIJO'
        DataType = ftString
        ParamType = ptOutput
        Size = 4
      end
      item
        Position = 8
        Name = 'DESGLOZA_IVA'
        DataType = ftString
        ParamType = ptOutput
        Size = 1
      end
      item
        Position = 9
        Name = 'NUMERO'
        DataType = ftString
        ParamType = ptOutput
        Size = 8
      end
      item
        Position = 10
        Name = 'VA_LIBRO_IVA'
        DataType = ftString
        ParamType = ptOutput
        Size = 1
      end
      item
        Position = 11
        Name = 'CLASE_COMPROB'
        DataType = ftString
        ParamType = ptOutput
        Size = 2
      end
      item
        Position = 12
        Name = 'TIPO_COMPROB'
        DataType = ftString
        ParamType = ptOutput
        Size = 2
      end
      item
        Position = 13
        Name = 'CON_NUMERACION'
        DataType = ftString
        ParamType = ptOutput
        Size = 1
      end
      item
        Position = 14
        Name = 'COPIAS'
        DataType = ftInteger
        ParamType = ptOutput
      end
      item
        Position = 15
        Name = 'VA_CTACTE'
        DataType = ftString
        ParamType = ptOutput
        Size = 1
      end
      item
        Position = 16
        Name = 'IMPRIME'
        DataType = ftString
        ParamType = ptOutput
        Size = 1
      end>
  end
  object spActualiza_Cotiz_CpbteFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'ACTUALIZA_COTIZ_CPBTE'
    Left = 776
    Top = 366
    ParamData = <
      item
        Position = 1
        Name = 'ID_CPBTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'COTIZACION'
        DataType = ftFloat
        ParamType = ptInput
      end>
  end
  object QPrecioEspecial: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.preciopactado,d.descuento from precioespecialdet d '
      'left join precioespecialCab c on c.id=d.id_cabecera'
      'where d.codigoarticulo=:articulo and '
      'd.codigocliente=:cliente and c.activo='#39'S'#39)
    Left = 592
    Top = 253
    ParamData = <
      item
        Name = 'ARTICULO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end
      item
        Name = 'CLIENTE'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end>
    object QPrecioEspecialPRECIOPACTADO: TFloatField
      FieldName = 'PRECIOPACTADO'
      Origin = 'PRECIOPACTADO'
    end
    object QPrecioEspecialDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      Required = True
    end
  end
  object QTraerRecargoDeLista: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select la.recargo,la.precio_gravado,la.precio_exento,la.precio,l' +
        'a.iva_importe,la.descuento,'
      '  c.exclusivo_efectivo'
      ' from listaprecioespecialart la'
      'left join listaprecioespecialcab c on c.id=la.id_cab'
      'where la.codigoarticulo=:articulo and la.id_cab=:lista')
    Left = 64
    Top = 335
    ParamData = <
      item
        Name = 'ARTICULO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end
      item
        Name = 'LISTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QTraerRecargoDeListaRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
    end
    object QTraerRecargoDeListaPRECIO_GRAVADO: TFloatField
      FieldName = 'PRECIO_GRAVADO'
      Origin = 'PRECIO_GRAVADO'
    end
    object QTraerRecargoDeListaPRECIO_EXENTO: TFloatField
      FieldName = 'PRECIO_EXENTO'
      Origin = 'PRECIO_EXENTO'
    end
    object QTraerRecargoDeListaPRECIO: TFloatField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
    end
    object QTraerRecargoDeListaIVA_IMPORTE: TFloatField
      FieldName = 'IVA_IMPORTE'
      Origin = 'IVA_IMPORTE'
      Required = True
    end
    object QTraerRecargoDeListaDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      Required = True
    end
    object QTraerRecargoDeListaEXCLUSIVO_EFECTIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EXCLUSIVO_EFECTIVO'
      Origin = 'EXCLUSIVO_EFECTIVO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
  end
  object QContendido: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.contenido_compra from stock s where s.codigo_stk=:codig' +
        'o')
    Left = 64
    Top = 380
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
    object QContendidoCONTENIDO_COMPRA: TFloatField
      FieldName = 'CONTENIDO_COMPRA'
      Origin = 'CONTENIDO_COMPRA'
      Required = True
    end
  end
  object QCoefPrecio: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max(coeficiente)  from coeficientes_precios'
      'where codigo= :codigo and '
      '(id_lista_precio= :id_lista or :id_lista = -1 )'
      'and por_defecto = '#39'S'#39)
    Left = 216
    Top = 287
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end
      item
        Name = 'ID_LISTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QCoefPrecioMAX: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MAX'
      Origin = 'MAX'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QVerificaPeriodoFiscal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from verifica_periodo_fiscal_2 (:compra_venta,:fecha)')
    Left = 64
    Top = 245
    ParamData = <
      item
        Name = 'COMPRA_VENTA'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
        Value = Null
      end
      item
        Name = 'FECHA'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
  end
  object QProximoNroFc: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from traer_proximo_nrofact'
      '(:Letra,:sucfac,:sucursal,:tipo,:clase)')
    Left = 464
    Top = 21
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
    object QProximoNroFcO_LETRA: TStringField
      FieldName = 'O_LETRA'
      Origin = 'O_LETRA'
      Size = 1
    end
    object QProximoNroFcO_SUC: TStringField
      FieldName = 'O_SUC'
      Origin = 'O_SUC'
      Size = 4
    end
    object QProximoNroFcO_NUMERO: TStringField
      FieldName = 'O_NUMERO'
      Origin = 'O_NUMERO'
      Size = 8
    end
  end
  object QBorrarMovCajaFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from caja_mov m where m.tipo_operacion = :tipo and'
      '                             m.tipo_comprob   = :tipocpbte and'
      '                             m.clase_comprob  = :clasecpbte and'
      '                             m.id_comprobante = :idcpbte')
    Left = 936
    Top = 72
    ParamData = <
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 1
        Value = Null
      end
      item
        Name = 'TIPOCPBTE'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Name = 'CLASECPBTE'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Name = 'IDCPBTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object spMarcarImpresoFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'MARCA_FC_IMPRESA'
    Left = 776
    Top = 33
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QBorrarCAEFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update fcvtacab f set f.cae='#39'0'#39', f.cae_vencimiento = null,f.QRIm' +
        'age = null where f.id_fc = :id'
      '')
    Left = 464
    Top = 116
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object spMovACtaCCVta_GrupoFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'MOVACTACCVTA_GRUPO'
    Left = 336
    Top = 23
    ParamData = <
      item
        Position = 1
        Name = 'ID_MOV'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ID_GRUPO'
        DataType = ftInteger
        ParamType = ptOutput
      end>
  end
  object spAbreCajaFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'ABRE_CAJA'
    Left = 216
    Top = 67
    ParamData = <
      item
        Position = 1
        Name = 'IDCOMPROBANTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'TIPOCPBTE'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 3
        Name = 'CLASECPBTE'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 4
        Name = 'CAJA'
        DataType = ftInteger
        ParamType = ptOutput
      end
      item
        Position = 5
        Name = 'ESTADOACTUAL'
        DataType = ftInteger
        ParamType = ptOutput
      end>
  end
  object spBorraFcVtaCabFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'BORRAR_FCVTACAB'
    Left = 336
    Top = 71
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object spCierraCajaFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'CIERRA_CAJA'
    Left = 216
    Top = 111
    ParamData = <
      item
        Position = 1
        Name = 'ESTADO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ID_CAJA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object spVerificaFechaFcVtaDetFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'CORRIGE_FECHA_DE_FCVTADET'
    Left = 64
    Top = 65
  end
  object spMovACtaCCComp_GrupoFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'MOVACTACCCOMPRA_GRUPO'
    Left = 336
    Top = 119
    ParamData = <
      item
        Position = 1
        Name = 'ID_MOV'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ID_GRUPO'
        DataType = ftInteger
        ParamType = ptOutput
      end
      item
        Position = 3
        Name = 'MUESTRATOTAL'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptOutput
      end
      item
        Position = 4
        Name = 'MUESTRAGRUPO'
        DataType = ftInteger
        ParamType = ptOutput
      end>
  end
  object spVerificaFechaFcCompDetFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'CORRIGE_FECHA_DE_FCCOMPDET'
    Left = 64
    Top = 110
  end
  object spRearmarMovStockFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'ARMAR_MOV_STOCK'
    Left = 64
    Top = 155
    ParamData = <
      item
        Position = 1
        Name = 'ORDENAR'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end>
  end
  object spcambiaNroFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'CAMBIAR_NRO_CPBTE'
    Left = 216
    Top = 155
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 3
        Name = 'PREFIJO'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end
      item
        Position = 4
        Name = 'NUMERO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 5
        Name = 'COMPRA_VENTA'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 6
        Name = 'FECHA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'FECHA2'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  object spRearmarMovBcoFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'REARMAR_RESUMEN_BCO'
    Left = 336
    Top = 167
    ParamData = <
      item
        Position = 1
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 2
        Name = 'ID_CTA_BANCARIA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end>
  end
  object spIngresaReempValores: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'GENERA_REEMP_VALORES'
    Left = 1112
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = 'ID_COMPROBANTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'IMPORTE'
        DataType = ftFloat
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
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 5
        Name = 'ID_REEMPLAZO'
        DataType = ftInteger
        ParamType = ptOutput
      end
      item
        Position = 6
        Name = 'CLASE_CPBTE'
        DataType = ftString
        ParamType = ptOutput
        Size = 2
      end
      item
        Position = 7
        Name = 'TIPO_CPBTE'
        DataType = ftString
        ParamType = ptOutput
        Size = 2
      end
      item
        Position = 8
        Name = 'NROCPBTE'
        DataType = ftString
        ParamType = ptOutput
        Size = 13
      end>
  end
  object QSaldoRtos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select sum(r.total) as SaldoRto from rtocab r'
      
        'where r.codigo=:codigo and ((r.idfactura is null) or (r.idfactur' +
        'a<=0)) and (r.anulado='#39'N'#39')')
    Left = 776
    Top = 128
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QSaldoRtosSALDORTO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SALDORTO'
      Origin = 'SALDORTO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QExistenciaStockArticuloDepo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from EXISTENCIA_STK_DEPOSITO(:codigo,:unidad,:deposito)')
    Left = 776
    Top = 175
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end
      item
        Name = 'UNIDAD'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Name = 'DEPOSITO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QExistenciaStockArticuloDepoCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
  end
  object spIngresarMovTC: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'AGREGAR_MOV_CAJA_TC'
    Left = 1104
    Top = 120
    ParamData = <
      item
        Position = 1
        Name = 'ID_CPBTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'TIPO_COMPROB'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 3
        Name = 'CLASE_COMPROB'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 4
        Name = 'NROCPBTE'
        DataType = ftString
        ParamType = ptInput
        Size = 13
      end
      item
        Position = 5
        Name = 'ID_CUENTA_CAJA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'FECHA_MOVIMIENTO'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'DEBE'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'HABER'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'TIPOOPERACION'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Position = 10
        Name = 'IDTC'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 11
        Name = 'TITULAR'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Position = 12
        Name = 'CUOTAS'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 13
        Name = 'DOCUMENTO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Position = 14
        Name = 'UNIDADES'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 15
        Name = 'COTIZACION'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 16
        Name = 'MONEDA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 17
        Name = 'UNIDADESNETO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 18
        Name = 'IMPORTENETO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 19
        Name = 'COEFICIENTE'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 20
        Name = 'VALORCUOTA'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 21
        Name = 'IMPORTERECARGO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 22
        Name = 'NROCUPON'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 23
        Name = 'LOTE'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end
      item
        Position = 24
        Name = 'TERMINAL'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
  end
  object spEgresoMovEfectivo: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'AGREGAR_MOV_CAJA_EFECTIVO'
    Left = 1104
    Top = 280
    ParamData = <
      item
        Position = 1
        Name = 'ID_CPBTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'TIPO_COMPROB'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 3
        Name = 'CLASE_COMPROB'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 4
        Name = 'NROCPBTE'
        DataType = ftString
        ParamType = ptInput
        Size = 13
      end
      item
        Position = 5
        Name = 'ID_CUENTA_CAJA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'FECHA_MOVIMIENTO'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'DEBE'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'HABER'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'TIPOOPERACION'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end>
  end
  object QPrecioPorCantidad: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from PRECIO_POR_CANTIDAD (:codigo,:cant,:Lista)')
    Left = 776
    Top = 223
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end
      item
        Name = 'CANT'
        DataType = ftFloat
        Precision = 16
        ParamType = ptInput
      end
      item
        Name = 'LISTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QPrecioPorCantidadCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QPrecioPorCantidadPRECIO_EXENTO: TFloatField
      FieldName = 'PRECIO_EXENTO'
      Origin = 'PRECIO_EXENTO'
    end
    object QPrecioPorCantidadPRECIO_GRAVADO: TFloatField
      FieldName = 'PRECIO_GRAVADO'
      Origin = 'PRECIO_GRAVADO'
    end
    object QPrecioPorCantidadIVA_IMPORTE: TFloatField
      FieldName = 'IVA_IMPORTE'
      Origin = 'IVA_IMPORTE'
    end
    object QPrecioPorCantidadPRECIO: TFloatField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
    end
  end
  object spOrdenarMovStock_FD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'ORDENAR_MOV_STOCK'
    Left = 592
    Top = 68
  end
  object spMarcarPresupuestoFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'MARCAR_PRESUPUESTO'
    Left = 1104
    Top = 368
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'MARCA'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end>
  end
  object QPrecioPromocion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.* from stock_dsto_especial s where s.codigo=:codigo')
    Left = 776
    Top = 270
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
    object QPrecioPromocionCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QPrecioPromocionDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      Required = True
    end
    object QPrecioPromocionPRECIO: TFloatField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      Required = True
    end
    object QPrecioPromocionDESDE: TSQLTimeStampField
      FieldName = 'DESDE'
      Origin = 'DESDE'
      Required = True
    end
    object QPrecioPromocionHASTA: TSQLTimeStampField
      FieldName = 'HASTA'
      Origin = 'HASTA'
      Required = True
    end
    object QPrecioPromocionSOLOCLIENTES: TStringField
      FieldName = 'SOLOCLIENTES'
      Origin = 'SOLOCLIENTES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QPrecioPromocionAPLICA_LUNES: TStringField
      FieldName = 'APLICA_LUNES'
      Origin = 'APLICA_LUNES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QPrecioPromocionAPLICA_MARTES: TStringField
      FieldName = 'APLICA_MARTES'
      Origin = 'APLICA_MARTES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QPrecioPromocionAPLICA_MIERCOLES: TStringField
      FieldName = 'APLICA_MIERCOLES'
      Origin = 'APLICA_MIERCOLES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QPrecioPromocionAPLICA_JUEVES: TStringField
      FieldName = 'APLICA_JUEVES'
      Origin = 'APLICA_JUEVES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QPrecioPromocionAPLICA_VIERNES: TStringField
      FieldName = 'APLICA_VIERNES'
      Origin = 'APLICA_VIERNES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QPrecioPromocionAPLICA_SABADOS: TStringField
      FieldName = 'APLICA_SABADOS'
      Origin = 'APLICA_SABADOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QPrecioPromocionAPLICA_DOMINGO: TStringField
      FieldName = 'APLICA_DOMINGO'
      Origin = 'APLICA_DOMINGO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QPrecioPromocionAPLICA_ALL_DAYS: TStringField
      FieldName = 'APLICA_ALL_DAYS'
      Origin = 'APLICA_ALL_DAYS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object spGenerarRtoProduccion: TFDStoredProc
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
    StoredProcName = 'GENERAR_ORDEN_PRODUCCION_VTA'
    Left = 216
    Top = 432
    ParamData = <
      item
        Position = 1
        Name = 'ID_FC'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'LEYENDA'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end>
  end
  object spGravarLogFD_: TFDStoredProc
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'GRAVAR_LOG'
    Left = 792
    Top = 476
    ParamData = <
      item
        Position = 1
        Name = 'TIPO'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'DETALLE'
        DataType = ftString
        ParamType = ptInput
        Size = 254
      end
      item
        Position = 3
        Name = 'ORIGEN'
        DataType = ftString
        ParamType = ptInput
        Size = 25
      end
      item
        Position = 4
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 5
        Name = 'NOMBRE_PC'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
  end
end

object DMMain_2: TDMMain_2
  OnDestroy = DataModuleDestroy
  Height = 835
  Width = 1170
  object SQLConectionMain: TSQLConnection
    ConnectionName = 'Gestion'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver190.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=19.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver190.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=19.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      
        'Database=C:\Proyectos Delphi\GestionComercial\Tablas IB\gestionv' +
        '3.fdb'
      'User_Name=sysdba'
      'Password=regulador'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    Left = 32
    Top = 8
  end
  object QSubRubro: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select sr.*,r.Detalle_rubro as MuestraRubro from SubRubros sr'
      'Left join rubros r on r.codigo_rubro=sr.codigo_rubro'
      'where sr.codigo_SubRubro=:CodigoSubRubro')
    SQLConnection = SQLConectionMain
    Left = 251
    Top = 64
    object QSubRubroCODIGO_SUBRUBRO: TStringField
      DisplayWidth = 5
      FieldName = 'CODIGO_SUBRUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 5
    end
    object QSubRubroCODIGO_RUBRO: TStringField
      DisplayWidth = 3
      FieldName = 'CODIGO_RUBRO'
      Size = 3
    end
    object QSubRubroCONTROL_SUBRUBRO: TStringField
      DisplayWidth = 1
      FieldName = 'CONTROL_SUBRUBRO'
      Size = 1
    end
    object QSubRubroMUESTRARUBRO: TStringField
      DisplayWidth = 35
      FieldName = 'MUESTRARUBRO'
      ProviderFlags = []
      Size = 35
    end
    object QSubRubroDETALLE_SUBRUBRO: TStringField
      DisplayWidth = 45
      FieldName = 'DETALLE_SUBRUBRO'
      Size = 45
    end
  end
  object QStock: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
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
      '      tpd.precio1 as MuestraTablaPrecio2'
      '      from stock s'
      
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
      'where S.Codigo_Stk = :codigo')
    SQLConnection = SQLConectionMain
    Left = 328
    Top = 103
    object QStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QStockDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object QStockDETALLE_STK_ADICIONAL: TStringField
      FieldName = 'DETALLE_STK_ADICIONAL'
      Size = 300
    end
    object QStockCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Size = 25
    end
    object QStockRUBRO_STK: TStringField
      FieldName = 'RUBRO_STK'
      Required = True
      Size = 3
    end
    object QStockSUBRUBRO_STK: TStringField
      FieldName = 'SUBRUBRO_STK'
      Required = True
      Size = 5
    end
    object QStockMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Size = 4
    end
    object QStockTASA_IVA: TIntegerField
      FieldName = 'TASA_IVA'
      Required = True
    end
    object QStockSOBRETASA_IVA: TIntegerField
      FieldName = 'SOBRETASA_IVA'
    end
    object QStockCOSTO_EXENTO_STK: TFMTBCDField
      FieldName = 'COSTO_EXENTO_STK'
      Required = True
      Precision = 15
      Size = 3
    end
    object QStockCOSTO_GRAVADO_STK: TFMTBCDField
      FieldName = 'COSTO_GRAVADO_STK'
      Required = True
      Precision = 15
      Size = 3
    end
    object QStockCOSTO_TOTAL_STK: TFMTBCDField
      FieldName = 'COSTO_TOTAL_STK'
      Required = True
      Precision = 15
      Size = 3
    end
    object QStockREEMPLAZO_STK: TStringField
      FieldName = 'REEMPLAZO_STK'
      Required = True
    end
    object QStockFIJACION_PRECIO_GRAVADO: TFMTBCDField
      FieldName = 'FIJACION_PRECIO_GRAVADO'
      Required = True
      Precision = 15
      Size = 3
    end
    object QStockFIJACION_PRECIO_EXENTO: TFMTBCDField
      FieldName = 'FIJACION_PRECIO_EXENTO'
      Required = True
      Precision = 15
      Size = 3
    end
    object QStockFIJACION_PRECIO_TOTAL: TFMTBCDField
      FieldName = 'FIJACION_PRECIO_TOTAL'
      Required = True
      Precision = 15
      Size = 3
    end
    object QStockFUAP: TSQLTimeStampField
      FieldName = 'FUAP'
    end
    object QStockUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object QStockCONTROLASTOCK: TStringField
      FieldName = 'CONTROLASTOCK'
      Required = True
      Size = 1
    end
    object QStockCODIGO_PROVEEDOR: TStringField
      FieldName = 'CODIGO_PROVEEDOR'
      Size = 10
    end
    object QStockCLASE_ARTICULO: TIntegerField
      FieldName = 'CLASE_ARTICULO'
    end
    object QStockMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Size = 1
    end
    object QStockCON_IMP_INT: TStringField
      FieldName = 'CON_IMP_INT'
      Size = 1
    end
    object QStockIMPUESTO_INTERNOS: TFMTBCDField
      FieldName = 'IMPUESTO_INTERNOS'
      Precision = 15
      Size = 3
    end
    object QStockGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockTASA_IB: TIntegerField
      FieldName = 'TASA_IB'
      Required = True
    end
    object QStockACTUALIZACOSTO: TStringField
      FieldName = 'ACTUALIZACOSTO'
      FixedChar = True
      Size = 1
    end
    object QStockDEPRODUCCION: TStringField
      FieldName = 'DEPRODUCCION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockPRODUCCIONDIRECTA: TStringField
      FieldName = 'PRODUCCIONDIRECTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockUNIDAD_COMPRA: TStringField
      FieldName = 'UNIDAD_COMPRA'
      Size = 3
    end
    object QStockCONTROL_SERIE: TStringField
      FieldName = 'CONTROL_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockUSA_CODIGOBARRA: TStringField
      FieldName = 'USA_CODIGOBARRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockUNIDAD_ULTIMAUSADA: TStringField
      FieldName = 'UNIDAD_ULTIMAUSADA'
      Size = 3
    end
    object QStockID_TABLAPRECIOS: TIntegerField
      FieldName = 'ID_TABLAPRECIOS'
    end
    object QStockID_TABLAPRECIOSDETALLE: TIntegerField
      FieldName = 'ID_TABLAPRECIOSDETALLE'
    end
    object QStockCODIGO_PRECIO: TIntegerField
      FieldName = 'CODIGO_PRECIO'
    end
    object QStockFECHA_ALTA: TSQLTimeStampField
      FieldName = 'FECHA_ALTA'
    end
    object QStockCOSTO_GRAVADO_SOMBRA: TFMTBCDField
      FieldName = 'COSTO_GRAVADO_SOMBRA'
      Required = True
      Precision = 15
      Size = 3
    end
    object QStockCOSTO_EXENTO_SOMBRA: TFMTBCDField
      FieldName = 'COSTO_EXENTO_SOMBRA'
      Required = True
      Precision = 15
      Size = 3
    end
    object QStockFECHA_ACT_SOMBRA: TSQLTimeStampField
      FieldName = 'FECHA_ACT_SOMBRA'
    end
    object QStockFECHA_ULTIMAVTA: TSQLTimeStampField
      FieldName = 'FECHA_ULTIMAVTA'
    end
    object QStockMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object QStockCOSTO_GRAVADO_P: TFMTBCDField
      FieldName = 'COSTO_GRAVADO_P'
      Required = True
      Precision = 15
      Size = 3
    end
    object QStockCOSTO_EXENTO_P: TFMTBCDField
      FieldName = 'COSTO_EXENTO_P'
      Required = True
      Precision = 15
      Size = 3
    end
    object QStockCOSTO_TOTAL_P: TFMTBCDField
      FieldName = 'COSTO_TOTAL_P'
      Required = True
      Precision = 15
      Size = 3
    end
    object QStockPOSICION: TStringField
      FieldName = 'POSICION'
      Size = 10
    end
    object QStockPRESENTACION_UNIDAD: TStringField
      FieldName = 'PRESENTACION_UNIDAD'
      Size = 3
    end
    object QStockPRESENTACION_CANTIDAD: TFMTBCDField
      FieldName = 'PRESENTACION_CANTIDAD'
      Required = True
      Precision = 15
      Size = 3
    end
    object QStockEDITAPRECIO: TStringField
      FieldName = 'EDITAPRECIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockEDITADETALLE: TStringField
      FieldName = 'EDITADETALLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockURL: TStringField
      FieldName = 'URL'
      Size = 250
    end
    object QStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField
      FieldName = 'FECHA_ULTIMA_COMPRA'
    end
    object QStockCONTENIDO_COMPRA: TFMTBCDField
      FieldName = 'CONTENIDO_COMPRA'
      Required = True
      Precision = 15
      Size = 4
    end
    object QStockCOSTO_IVA: TFMTBCDField
      FieldName = 'COSTO_IVA'
      Required = True
      Precision = 15
      Size = 3
    end
    object QStockCOSTO_FINAL: TFMTBCDField
      FieldName = 'COSTO_FINAL'
      Required = True
      Precision = 15
      Size = 3
    end
    object QStockFIJACION_PRECIO_IVA: TFMTBCDField
      FieldName = 'FIJACION_PRECIO_IVA'
      Required = True
      Precision = 15
      Size = 3
    end
    object QStockFIJACION_PRECIO_FINAL: TFMTBCDField
      FieldName = 'FIJACION_PRECIO_FINAL'
      Required = True
      Precision = 15
      Size = 3
    end
    object QStockPORCENTAJE_SOBRECOSTO: TFMTBCDField
      FieldName = 'PORCENTAJE_SOBRECOSTO'
      Precision = 15
      Size = 3
    end
    object QStockMUESTRARUBRO: TStringField
      FieldName = 'MUESTRARUBRO'
      ProviderFlags = []
      Size = 35
    end
    object QStockMUESTRASUBRUBRO: TStringField
      FieldName = 'MUESTRASUBRUBRO'
      ProviderFlags = []
      Size = 45
    end
    object QStockMUESTRAMARCA: TStringField
      FieldName = 'MUESTRAMARCA'
      ProviderFlags = []
      Size = 25
    end
    object QStockMUESTRATASA: TStringField
      FieldName = 'MUESTRATASA'
      ProviderFlags = []
      Size = 15
    end
    object QStockMUESTRATASAPORCENTAJE: TFMTBCDField
      FieldName = 'MUESTRATASAPORCENTAJE'
      ProviderFlags = []
      Precision = 15
      Size = 3
    end
    object QStockMUESTRASOBRETASA: TStringField
      FieldName = 'MUESTRASOBRETASA'
      ProviderFlags = []
      Size = 15
    end
    object QStockMUESTRASOBRETASAPROCENTAJE: TFMTBCDField
      FieldName = 'MUESTRASOBRETASAPROCENTAJE'
      ProviderFlags = []
      Precision = 15
      Size = 3
    end
    object QStockMUESTRATASAIB: TFMTBCDField
      FieldName = 'MUESTRATASAIB'
      ProviderFlags = []
      Precision = 15
      Size = 3
    end
    object QStockMUESTRATABLAPRECIODETALLE: TStringField
      FieldName = 'MUESTRATABLAPRECIODETALLE'
      ProviderFlags = []
      Size = 40
    end
    object QStockMUESTRATABLAPRECIO2: TFMTBCDField
      FieldName = 'MUESTRATABLAPRECIO2'
      ProviderFlags = []
      Precision = 15
      Size = 3
    end
    object QStockMUESTRATABLAPRECIO1: TFMTBCDField
      FieldName = 'MUESTRATABLAPRECIO1'
      ProviderFlags = []
      Precision = 15
      Size = 3
    end
    object QStockCOMANDA: TStringField
      FieldName = 'COMANDA'
      FixedChar = True
      Size = 1
    end
    object QStockRUBRO_GASTO: TStringField
      FieldName = 'RUBRO_GASTO'
      Required = True
      Size = 3
    end
    object QStockRUBRO_CTA_GASTO: TStringField
      FieldName = 'RUBRO_CTA_GASTO'
      Required = True
      Size = 6
    end
    object QStockPUBLICAR_WEB: TStringField
      FieldName = 'PUBLICAR_WEB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockGTIA_MESES: TIntegerField
      FieldName = 'GTIA_MESES'
      Required = True
    end
    object QStockGARANTIAOFICIAL: TStringField
      FieldName = 'GARANTIAOFICIAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockIMPRIMIR_LSTPRECIOS: TStringField
      FieldName = 'IMPRIMIR_LSTPRECIOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockCONTROL_TRAZABILIDAD: TStringField
      FieldName = 'CONTROL_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockIVA_MODIFICADO: TStringField
      FieldName = 'IVA_MODIFICADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockSIGLAS: TStringField
      FieldName = 'SIGLAS'
      Size = 2
    end
    object QStockPRESENTACION_2_CANT: TFMTBCDField
      FieldName = 'PRESENTACION_2_CANT'
      Required = True
      Precision = 15
      Size = 3
    end
    object QStockTASA_MANUFACTURA: TStringField
      FieldName = 'TASA_MANUFACTURA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockPLU: TStringField
      FieldName = 'PLU'
      Size = 5
    end
    object QStockACOPIABLE: TStringField
      FieldName = 'ACOPIABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QStockCIKO_TIPO: TIntegerField
      FieldName = 'CIKO_TIPO'
      Required = True
    end
    object QStockLARGO_1: TFloatField
      FieldName = 'LARGO_1'
      Required = True
    end
    object QStockLARGO_2: TFloatField
      FieldName = 'LARGO_2'
      Required = True
    end
    object QStockLARGO_3: TFloatField
      FieldName = 'LARGO_3'
      Required = True
    end
    object QStockROTURA_1: TFloatField
      FieldName = 'ROTURA_1'
      Required = True
    end
    object QStockROTURA_2: TFloatField
      FieldName = 'ROTURA_2'
      Required = True
    end
    object QStockCIMA: TFloatField
      FieldName = 'CIMA'
      Required = True
    end
    object QStockBASE: TFloatField
      FieldName = 'BASE'
      Required = True
    end
    object QStockVOLUMEN: TFloatField
      FieldName = 'VOLUMEN'
      Required = True
    end
    object QStockPESO: TFloatField
      FieldName = 'PESO'
      Required = True
    end
    object QStockDIAMETRO_OLLA: TFloatField
      FieldName = 'DIAMETRO_OLLA'
      Required = True
    end
    object QStockALTO_ACC: TFloatField
      FieldName = 'ALTO_ACC'
      Required = True
    end
    object QStockMODO_IVA: TStringField
      FieldName = 'MODO_IVA'
      FixedChar = True
      Size = 1
    end
    object QStockTIPOADICIONAL: TStringField
      FieldName = 'TIPOADICIONAL'
      Size = 10
    end
    object QStockPESO_CALCULADO: TFloatField
      FieldName = 'PESO_CALCULADO'
      Required = True
    end
    object QStockPLU_SECCION: TIntegerField
      FieldName = 'PLU_SECCION'
    end
  end
  object QDepositoStk: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select ds.*,'
      '  d.nombre as MuestraDeposito'
      'from DepositoStk ds'
      '  left join Depositos d on d.id=ds.codigo_deposito'
      'where ds.Codigo_stk = :Codigo'
      'order by ds.codigo_deposito')
    SQLConnection = SQLConectionMain
    Left = 396
    Top = 56
    object QDepositoStkID_DEPOSITO: TIntegerField
      FieldName = 'ID_DEPOSITO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDepositoStkCODIGO_DEPOSITO: TIntegerField
      FieldName = 'CODIGO_DEPOSITO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDepositoStkCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QDepositoStkSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
    end
    object QDepositoStkINICIAL: TFMTBCDField
      FieldName = 'INICIAL'
      Precision = 15
      Size = 3
    end
    object QDepositoStkMINIMO: TFMTBCDField
      FieldName = 'MINIMO'
      Precision = 15
      Size = 3
    end
    object QDepositoStkMEDIO: TFMTBCDField
      FieldName = 'MEDIO'
      Precision = 15
      Size = 3
    end
    object QDepositoStkFISICO: TFMTBCDField
      FieldName = 'FISICO'
      Precision = 15
      Size = 3
    end
    object QDepositoStkRECARGO: TFMTBCDField
      FieldName = 'RECARGO'
      Required = True
      Precision = 15
      Size = 3
    end
    object QDepositoStkFUAPRECIOS: TSQLTimeStampField
      FieldName = 'FUAPRECIOS'
    end
    object QDepositoStkMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      ProviderFlags = []
      Size = 25
    end
    object QDepositoStkSECTOR: TStringField
      FieldName = 'SECTOR'
      Size = 2
    end
    object QDepositoStkUBICACION: TStringField
      FieldName = 'UBICACION'
      Size = 3
    end
    object QDepositoStkFULTAJUSTE: TSQLTimeStampField
      FieldName = 'FULTAJUSTE'
    end
    object QDepositoStkUNIDADES: TFMTBCDField
      FieldName = 'UNIDADES'
      Required = True
      Precision = 15
      Size = 3
    end
    object QDepositoStkAVISO_MINIMOSTOCK: TStringField
      FieldName = 'AVISO_MINIMOSTOCK'
      FixedChar = True
      Size = 1
    end
  end
  object QOpciones: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'opcion'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select valor from opciones where opcion = :opcion')
    SQLConnection = SQLConectionMain
    Left = 544
    Top = 8
  end
  object QVtaSubDetalle: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = '804653'
      end>
    SQL.Strings = (
      'Select * from FcVtaSubDetalle where Id_DetFac= :id ')
    SQLConnection = SQLConectionMain
    Left = 404
    Top = 8
    object QVtaSubDetalleID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QVtaSubDetalleID_DETFAC: TIntegerField
      FieldName = 'ID_DETFAC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QVtaSubDetalleID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QVtaSubDetalleTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      FixedChar = True
      Size = 2
    end
    object QVtaSubDetalleCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      FixedChar = True
      Size = 2
    end
    object QVtaSubDetalleFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object QVtaSubDetalleNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QVtaSubDetalleCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Size = 8
    end
    object QVtaSubDetalleSERIE: TStringField
      FieldName = 'SERIE'
      Size = 50
    end
    object QVtaSubDetalleDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object QVtaSubDetalleTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QVtaDetalleConsig: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'Select c.*,rec.nrocpbte as MuestraRecepcionNro from FCVTADET_CON' +
        'SIGNACIONES c'
      'left join recepmercadet rec on rec.id=c.id_mov_recepcion_det'
      'where c.Id_CabFac= :id')
    SQLConnection = SQLConectionMain
    Left = 336
    Top = 8
    object QVtaDetalleConsigID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QVtaDetalleConsigID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QVtaDetalleConsigID_DETFAC: TIntegerField
      FieldName = 'ID_DETFAC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QVtaDetalleConsigCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 8
    end
    object QVtaDetalleConsigDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object QVtaDetalleConsigCANTIDAD: TFMTBCDField
      FieldName = 'CANTIDAD'
      Precision = 15
      Size = 3
    end
    object QVtaDetalleConsigID_MOV_RECEPCION_CAB: TIntegerField
      FieldName = 'ID_MOV_RECEPCION_CAB'
    end
    object QVtaDetalleConsigID_MOV_RECEPCION_DET: TIntegerField
      FieldName = 'ID_MOV_RECEPCION_DET'
    end
    object QVtaDetalleConsigLIQUIDADA: TStringField
      FieldName = 'LIQUIDADA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVtaDetalleConsigPRECIO_VTA: TFMTBCDField
      FieldName = 'PRECIO_VTA'
      Required = True
      Precision = 15
      Size = 3
    end
    object QVtaDetalleConsigPRECIO_COMPRA: TFMTBCDField
      FieldName = 'PRECIO_COMPRA'
      Required = True
      Precision = 15
      Size = 3
    end
    object QVtaDetalleConsigCODIGO_PROVEEDOR: TStringField
      FieldName = 'CODIGO_PROVEEDOR'
      Required = True
      Size = 6
    end
    object QVtaDetalleConsigMUESTRARECEPCIONNRO: TStringField
      FieldName = 'MUESTRARECEPCIONNRO'
      ProviderFlags = []
      Size = 13
    end
  end
  object QCondVenta: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CodigoPago'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select CV.*,'
      '  FP.Detalle,'
      '  FP.Dias,'
      '  FP.Descuento as Descuento_FPago'
      'from CondVenta CV'
      '  inner join F_Pago FP on FP.Codigo=CV.CodigoPago'
      'where CV.CodigoCliente= :Codigo  and CV.codigopago=:codigopago')
    SQLConnection = SQLConectionMain
    Left = 176
    Top = 471
    object QCondVentaCODIGOCLIENTE: TStringField
      FieldName = 'CODIGOCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QCondVentaCODIGOPAGO: TIntegerField
      FieldName = 'CODIGOPAGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCondVentaDESCUENTO: TFMTBCDField
      FieldName = 'DESCUENTO'
      Precision = 15
      Size = 3
    end
    object QCondVentaPOR_DEFECTO: TStringField
      FieldName = 'POR_DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCondVentaDETALLE: TStringField
      FieldName = 'DETALLE'
      ProviderFlags = []
      Required = True
    end
    object QCondVentaDIAS: TIntegerField
      FieldName = 'DIAS'
      ProviderFlags = []
    end
    object QCondVentaDESCUENTO_FPAGO: TFMTBCDField
      FieldName = 'DESCUENTO_FPAGO'
      ProviderFlags = []
      Precision = 15
      Size = 3
    end
  end
  object QSucursal: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from sucursal'
      'where Codigo = :Codigo')
    SQLConnection = SQLConectionMain
    Left = 464
    Top = 56
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
    object QSucursalRECARGO: TFMTBCDField
      FieldName = 'RECARGO'
      Precision = 15
      Size = 3
    end
    object QSucursalAPLICA_PERCEPCION_IIBB: TStringField
      FieldName = 'APLICA_PERCEPCION_IIBB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QSucursalGENERA_XML_COMUN: TStringField
      FieldName = 'GENERA_XML_COMUN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QSucursalHOST: TStringField
      FieldName = 'HOST'
      Size = 250
    end
    object QSucursalCERTIFICADO_ELEC: TStringField
      FieldName = 'CERTIFICADO_ELEC'
      Size = 100
    end
    object QSucursalCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object QSucursalRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
  end
  object QLdr: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ldr'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from ldrcliente'
      'where (Codigo_Cliente=:Codigo) and (Codigo_ldr = :ldr)')
    SQLConnection = SQLConectionMain
    Left = 32
    Top = 106
    object QLdrCODIGO_CLIENTE: TStringField
      FieldName = 'CODIGO_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QLdrCODIGO_LDR: TIntegerField
      FieldName = 'CODIGO_LDR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLdrNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object QLdrDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object QLdrCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object QLdrLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 40
    end
    object QLdrPROVINCIA: TIntegerField
      FieldName = 'PROVINCIA'
    end
  end
  object QIva: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from gravamen where codigo=:id')
    SQLConnection = SQLConectionMain
    Left = 616
    Top = 72
    object QIvaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QIvaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 15
    end
    object QIvaTASA: TFMTBCDField
      FieldName = 'TASA'
      Precision = 15
      Size = 3
    end
    object QIvaCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Required = True
    end
  end
  object QProveedores: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
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
    SQLConnection = SQLConectionMain
    Left = 677
    Top = 16
    object QProveedoresCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QProveedoresNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Required = True
      Size = 35
    end
    object QProveedoresRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
    object QProveedoresN_DE_CUENTA: TStringField
      FieldName = 'N_DE_CUENTA'
      Size = 14
    end
    object QProveedoresID_COD_POSTAL: TIntegerField
      FieldName = 'ID_COD_POSTAL'
    end
    object QProveedoresCOD_POSTAL: TStringField
      FieldName = 'COD_POSTAL'
      Size = 8
    end
    object QProveedoresLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object QProveedoresDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object QProveedoresTELEFONO_1: TStringField
      FieldName = 'TELEFONO_1'
      Size = 10
    end
    object QProveedoresTELEFONO_2: TStringField
      FieldName = 'TELEFONO_2'
      Size = 10
    end
    object QProveedoresCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Required = True
    end
    object QProveedoresN_DE_CUIT: TStringField
      FieldName = 'N_DE_CUIT'
      Size = 13
    end
    object QProveedoresACTIVO: TStringField
      FieldName = 'ACTIVO'
      Size = 1
    end
    object QProveedoresRETIENE_IVA: TStringField
      FieldName = 'RETIENE_IVA'
      Size = 1
    end
    object QProveedoresRETIENE_IB: TStringField
      FieldName = 'RETIENE_IB'
      Size = 1
    end
    object QProveedoresRETIENE_GANANCIAS: TStringField
      FieldName = 'RETIENE_GANANCIAS'
      Size = 1
    end
    object QProveedoresIVA_SERVICIOS: TStringField
      FieldName = 'IVA_SERVICIOS'
      Size = 1
    end
    object QProveedoresPRECIOS_CON_IVA: TStringField
      FieldName = 'PRECIOS_CON_IVA'
      Size = 1
    end
    object QProveedoresOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 1
    end
    object QProveedoresNOMBRE_REPRESENTANTE: TStringField
      FieldName = 'NOMBRE_REPRESENTANTE'
      Size = 35
    end
    object QProveedoresDIRECCION_REPRESENTANTE: TStringField
      FieldName = 'DIRECCION_REPRESENTANTE'
      Size = 35
    end
    object QProveedoresTELEFONO_REPRESENTANTE: TStringField
      FieldName = 'TELEFONO_REPRESENTANTE'
      Size = 25
    end
    object QProveedoresTIPO_PROVEEDOR: TStringField
      FieldName = 'TIPO_PROVEEDOR'
      Required = True
      Size = 1
    end
    object QProveedoresFECHAULTIMACOMPRA: TSQLTimeStampField
      FieldName = 'FECHAULTIMACOMPRA'
    end
    object QProveedoresFECHAALTA: TSQLTimeStampField
      FieldName = 'FECHAALTA'
    end
    object QProveedoresSALDO_INICIAL: TFMTBCDField
      FieldName = 'SALDO_INICIAL'
      Precision = 15
      Size = 3
    end
    object QProveedoresID_PERC_IVA: TIntegerField
      FieldName = 'ID_PERC_IVA'
    end
    object QProveedoresID_PERC_IBB: TIntegerField
      FieldName = 'ID_PERC_IBB'
    end
    object QProveedoresID_PERC_IBB_2: TIntegerField
      FieldName = 'ID_PERC_IBB_2'
    end
    object QProveedoresID_PERC_IBB_3: TIntegerField
      FieldName = 'ID_PERC_IBB_3'
    end
    object QProveedoresRUBRO: TIntegerField
      FieldName = 'RUBRO'
    end
    object QProveedoresID_FACTURAPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURAPORDEFECTO'
    end
    object QProveedoresEXENTO_GANACIA: TStringField
      FieldName = 'EXENTO_GANACIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QProveedoresCODIGO_REGIMEN_RET_GANACIA: TIntegerField
      FieldName = 'CODIGO_REGIMEN_RET_GANACIA'
      Required = True
    end
    object QProveedoresEXENTO_RETENCION_IB: TStringField
      FieldName = 'EXENTO_RETENCION_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QProveedoresID_TASA_RETENCION_IB: TIntegerField
      FieldName = 'ID_TASA_RETENCION_IB'
      Required = True
    end
    object QProveedoresNRO_IIBB: TStringField
      FieldName = 'NRO_IIBB'
      Size = 15
    end
    object QProveedoresCORREO: TStringField
      FieldName = 'CORREO'
      Size = 100
    end
    object QProveedoresCONV_MULTI: TStringField
      FieldName = 'CONV_MULTI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QProveedoresMONEDA_PRECIOS: TIntegerField
      FieldName = 'MONEDA_PRECIOS'
    end
    object QProveedoresTELEDISCADO: TStringField
      FieldName = 'TELEDISCADO'
      ProviderFlags = []
      Size = 6
    end
    object QProveedoresDESPERIVA: TStringField
      FieldName = 'DESPERIVA'
      ProviderFlags = []
    end
    object QProveedoresDESPERIB: TStringField
      FieldName = 'DESPERIB'
      ProviderFlags = []
    end
    object QProveedoresDESPERIB2: TStringField
      FieldName = 'DESPERIB2'
      ProviderFlags = []
    end
    object QProveedoresMUESTRADETALLERETIIBB: TStringField
      FieldName = 'MUESTRADETALLERETIIBB'
      ProviderFlags = []
      Size = 25
    end
    object QProveedoresMUESTRATASARETIIBB: TFMTBCDField
      FieldName = 'MUESTRATASARETIIBB'
      ProviderFlags = []
      Precision = 15
      Size = 3
    end
    object QProveedoresMUESTRAMINIMPONIRETIIBB: TFMTBCDField
      FieldName = 'MUESTRAMINIMPONIRETIIBB'
      ProviderFlags = []
      Precision = 15
      Size = 3
    end
    object QProveedoresRUBRO_GASTO: TStringField
      FieldName = 'RUBRO_GASTO'
      Required = True
      Size = 3
    end
    object QProveedoresSUB_RUB_GASTOS: TStringField
      FieldName = 'SUB_RUB_GASTOS'
      Required = True
      Size = 6
    end
    object QProveedoresCON_OCOMPRA: TStringField
      FieldName = 'CON_OCOMPRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QProveedoresID_FACTURACTDODEFECTO: TIntegerField
      FieldName = 'ID_FACTURACTDODEFECTO'
    end
    object QProveedoresAUTORIZADO_NOMBRE: TStringField
      FieldName = 'AUTORIZADO_NOMBRE'
      Size = 25
    end
    object QProveedoresAUTORIZADO_TIPODOC: TStringField
      FieldName = 'AUTORIZADO_TIPODOC'
      Size = 3
    end
    object QProveedoresAUTORIZADO_NRODOC: TStringField
      FieldName = 'AUTORIZADO_NRODOC'
      Size = 8
    end
    object QProveedoresRETENCION_IVA: TStringField
      FieldName = 'RETENCION_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QProveedoresCODIGO_RET_IVA: TIntegerField
      FieldName = 'CODIGO_RET_IVA'
      Required = True
    end
    object QProveedoresPORCENTAJE_RET_IVA: TSingleField
      FieldName = 'PORCENTAJE_RET_IVA'
      Required = True
    end
  end
  object QAjusteCab: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
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
    SQLConnection = SQLConectionMain
    Left = 108
    Top = 152
    object QAjusteCabID_RTO: TIntegerField
      FieldName = 'ID_RTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAjusteCabLETRA: TStringField
      FieldName = 'LETRA'
      Size = 1
    end
    object QAjusteCabSUCRTO: TStringField
      FieldName = 'SUCRTO'
      Size = 4
    end
    object QAjusteCabNUMRTO: TStringField
      FieldName = 'NUMRTO'
      Size = 8
    end
    object QAjusteCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
    end
    object QAjusteCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QAjusteCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object QAjusteCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QAjusteCabOBS: TStringField
      FieldName = 'OBS'
      Size = 120
    end
    object QAjusteCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object QAjusteCabAJUSTE_CERO_STOCK: TStringField
      FieldName = 'AJUSTE_CERO_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QAjusteCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object QAjusteCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object QAjusteCabTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Required = True
      Precision = 15
      Size = 3
    end
    object QAjusteCabMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object QAjusteCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
    end
    object QAjusteCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object QAjusteCabMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      ProviderFlags = []
      Size = 25
    end
    object QAjusteCabMOTIVO: TIntegerField
      FieldName = 'MOTIVO'
      Required = True
    end
    object QAjusteCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QAjusteCabLISTAPRECIO: TIntegerField
      FieldName = 'LISTAPRECIO'
    end
    object QAjusteCabID_INVENTARIO: TIntegerField
      FieldName = 'ID_INVENTARIO'
    end
    object QAjusteCabPERSONAL_RETIRA: TStringField
      FieldName = 'PERSONAL_RETIRA'
      Size = 6
    end
    object QAjusteCabMUESTRAPERSONAL: TStringField
      FieldName = 'MUESTRAPERSONAL'
      ProviderFlags = []
      Size = 50
    end
  end
  object QAjusteDet: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id_cab'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select rd.* ,  s.REEMPLAZO_STK as MuestraCodAlternativo from rto' +
        'mercadet rd'
      'left join stock s on s.codigo_stk=rd.codigo'
      'where rd.id_rto_cab=:id_cab')
    SQLConnection = SQLConectionMain
    Left = 176
    Top = 160
    object QAjusteDetID_RTO_DET: TIntegerField
      FieldName = 'ID_RTO_DET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAjusteDetID_RTO_CAB: TIntegerField
      FieldName = 'ID_RTO_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAjusteDetFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QAjusteDetCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 8
    end
    object QAjusteDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object QAjusteDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object QAjusteDetCANTIDAD: TFMTBCDField
      FieldName = 'CANTIDAD'
      Required = True
      Precision = 15
      Size = 3
    end
    object QAjusteDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QAjusteDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object QAjusteDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QAjusteDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object QAjusteDetAFECTASTOCK: TStringField
      FieldName = 'AFECTASTOCK'
      Size = 1
    end
    object QAjusteDetSTOCK_ACTUAL_COMPRA: TFMTBCDField
      FieldName = 'STOCK_ACTUAL_COMPRA'
      Precision = 15
      Size = 3
    end
    object QAjusteDetSTOCK_ACTUAL_VTA: TFMTBCDField
      FieldName = 'STOCK_ACTUAL_VTA'
      Precision = 15
      Size = 3
    end
    object QAjusteDetCON_NRO_SERIE: TStringField
      FieldName = 'CON_NRO_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QAjusteDetCOSTO_UNITARIO: TFMTBCDField
      FieldName = 'COSTO_UNITARIO'
      Required = True
      Precision = 15
      Size = 3
    end
    object QAjusteDetCOSTO_TOTAL: TFMTBCDField
      FieldName = 'COSTO_TOTAL'
      Required = True
      Precision = 15
      Size = 3
    end
    object QAjusteDetMUESTRACODALTERNATIVO: TStringField
      FieldName = 'MUESTRACODALTERNATIVO'
      ProviderFlags = []
    end
    object QAjusteDetCONTROL_TRAZABILIDAD: TStringField
      FieldName = 'CONTROL_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QAjusteDetUNIDADES_STK: TFMTBCDField
      FieldName = 'UNIDADES_STK'
      Required = True
      Precision = 15
      Size = 3
    end
    object QAjusteDetPRESENT_CANTIDAD: TFMTBCDField
      FieldName = 'PRESENT_CANTIDAD'
      Required = True
      Precision = 15
      Size = 3
    end
    object QAjusteDetPRECIO_UNITARIO: TFloatField
      FieldName = 'PRECIO_UNITARIO'
      Required = True
    end
    object QAjusteDetPRECIO_TOTAL: TFloatField
      FieldName = 'PRECIO_TOTAL'
      Required = True
    end
    object QAjusteDetID_MOTIVO: TIntegerField
      FieldName = 'ID_MOTIVO'
      Required = True
    end
  end
  object QAjusteSubDetalle: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * from rtomercasubdet where Id_rtoCab= :id ')
    SQLConnection = SQLConectionMain
    Left = 251
    Top = 160
    object QAjusteSubDetalleID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAjusteSubDetalleID_RTODET: TIntegerField
      FieldName = 'ID_RTODET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QAjusteSubDetalleID_RTOCAB: TIntegerField
      FieldName = 'ID_RTOCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QAjusteSubDetalleTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      FixedChar = True
      Size = 2
    end
    object QAjusteSubDetalleCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      FixedChar = True
      Size = 2
    end
    object QAjusteSubDetalleFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object QAjusteSubDetalleNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QAjusteSubDetalleCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Size = 8
    end
    object QAjusteSubDetalleSERIE: TStringField
      FieldName = 'SERIE'
      Size = 50
    end
    object QAjusteSubDetalleDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object QAjusteSubDetalleTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QEmpresa: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from Empresa')
    SQLConnection = SQLConectionMain
    Left = 32
    Top = 204
  end
  object QCondCompra: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'codigopago'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select CC.*,'
      'FP.Detalle,'
      'FP.Dias,'
      'FP.Descuento as Descuento_FPago from CondCompra CC'
      'left  join F_Pago FP on FP.Codigo=CC.CodigoPago'
      'where  CC.CodigoProvee = :Codigo'
      'and CC.codigopago=:codigopago')
    SQLConnection = SQLConectionMain
    Left = 396
    Top = 519
    object QCondCompraCODIGOPROVEE: TStringField
      FieldName = 'CODIGOPROVEE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QCondCompraCODIGOPAGO: TIntegerField
      FieldName = 'CODIGOPAGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCondCompraDESCUENTO: TFMTBCDField
      FieldName = 'DESCUENTO'
      Precision = 15
      Size = 3
    end
    object QCondCompraDETALLE: TStringField
      FieldName = 'DETALLE'
      ProviderFlags = []
      Required = True
    end
    object QCondCompraDIAS: TIntegerField
      FieldName = 'DIAS'
      ProviderFlags = []
    end
    object QCondCompraDESCUENTO_FPAGO: TFMTBCDField
      FieldName = 'DESCUENTO_FPAGO'
      ProviderFlags = []
      Precision = 15
      Size = 3
    end
  end
  object QPostal: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select cp.*,'
      '  p.nombre as MuestraProvincia'
      'from c_postal cp'
      '  left join provincia p on cp.provincia=p.id_pro'
      'where cp.id_postal=:id')
    SQLConnection = SQLConectionMain
    Left = 396
    Top = 152
    object QPostalID_POSTAL: TIntegerField
      FieldName = 'ID_POSTAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPostalCODIGO_POSTAL: TStringField
      FieldName = 'CODIGO_POSTAL'
      Required = True
      Size = 8
    end
    object QPostalDETALLE_POSTAL: TStringField
      FieldName = 'DETALLE_POSTAL'
      Required = True
      Size = 25
    end
    object QPostalTELEDISCADO: TStringField
      FieldName = 'TELEDISCADO'
      Size = 6
    end
    object QPostalPROVINCIA: TIntegerField
      FieldName = 'PROVINCIA'
    end
    object QPostalMUESTRAPROVINCIA: TStringField
      FieldName = 'MUESTRAPROVINCIA'
      ProviderFlags = []
    end
  end
  object QTasaPercepcioIva: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from PercepIVA where codigo=:id')
    SQLConnection = SQLConectionMain
    Left = 108
    Top = 204
    object QTasaPercepcioIvaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QTasaPercepcioIvaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
    end
    object QTasaPercepcioIvaTASA: TFMTBCDField
      FieldName = 'TASA'
      Precision = 15
      Size = 3
    end
    object QTasaPercepcioIvaMINIMOAPLICABLE: TFMTBCDField
      FieldName = 'MINIMOAPLICABLE'
      Precision = 15
      Size = 3
    end
    object QTasaPercepcioIvaCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
    end
    object QTasaPercepcioIvaCODIGOREGIMEN: TIntegerField
      FieldName = 'CODIGOREGIMEN'
    end
  end
  object QTasaPercepcioIB: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from PercepIB where codigo=:id')
    SQLConnection = SQLConectionMain
    Left = 176
    Top = 204
  end
  object QFPago: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from F_Pago'
      'where Codigo= :Codigo')
    SQLConnection = SQLConectionMain
    Left = 328
    Top = 56
    object QFPagoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QFPagoDETALLE: TStringField
      FieldName = 'DETALLE'
      Required = True
    end
    object QFPagoDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object QFPagoDESCUENTO: TFMTBCDField
      FieldName = 'DESCUENTO'
      Precision = 15
      Size = 3
    end
  end
  object QPersonal: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
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
        'omision,p.activo,p.sucursal,p.cuil from personal p'
      'left join cargo c on c.id=p.cargo'
      'left join personal_categoria ct on ct.id=p.categoria'
      'left join c_postal cp on cp.id_Postal=p.localidad'
      ''
      'where p.codigo=:codigo'
      ' ')
    SQLConnection = SQLConectionMain
    Left = 464
    Top = 152
    object QPersonalCARGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CARGO'
    end
    object QPersonalCATEGORIA: TIntegerField
      DisplayWidth = 10
      FieldName = 'CATEGORIA'
    end
    object QPersonalCTACONTABLE: TIntegerField
      DisplayWidth = 10
      FieldName = 'CTACONTABLE'
    end
    object QPersonalDOMICILIO: TStringField
      DisplayWidth = 50
      FieldName = 'DOMICILIO'
      Size = 50
    end
    object QPersonalESTADO_CIVIL: TStringField
      DisplayWidth = 1
      FieldName = 'ESTADO_CIVIL'
      Size = 1
    end
    object QPersonalNOMBRE: TStringField
      DisplayWidth = 30
      FieldName = 'NOMBRE'
      Size = 30
    end
    object QPersonalTELEFONO_2: TStringField
      DisplayWidth = 15
      FieldName = 'TELEFONO_2'
      Size = 15
    end
    object QPersonalMUESTRACARGO: TStringField
      DisplayWidth = 30
      FieldName = 'MUESTRACARGO'
      ProviderFlags = []
      Size = 30
    end
    object QPersonalMUESTRACATEGORIA: TStringField
      DisplayWidth = 30
      FieldName = 'MUESTRACATEGORIA'
      ProviderFlags = []
      Size = 30
    end
    object QPersonalTELEFONO_1: TStringField
      DisplayWidth = 15
      FieldName = 'TELEFONO_1'
      Size = 15
    end
    object QPersonalLOCALIDAD: TIntegerField
      DisplayWidth = 10
      FieldName = 'LOCALIDAD'
    end
    object QPersonalMUESTRALOCALIDAD: TStringField
      DisplayWidth = 25
      FieldName = 'MUESTRALOCALIDAD'
      ProviderFlags = []
      Size = 25
    end
    object QPersonalMUESTRACPOSTAL: TStringField
      DisplayWidth = 8
      FieldName = 'MUESTRACPOSTAL'
      ProviderFlags = []
      Size = 8
    end
    object QPersonalCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 6
    end
    object QPersonalAUTORIZAOC: TStringField
      DisplayWidth = 1
      FieldName = 'AUTORIZAOC'
      Size = 1
    end
    object QPersonalSECTORDECOMPRA: TStringField
      DisplayWidth = 1
      FieldName = 'SECTORDECOMPRA'
      Size = 1
    end
    object QPersonalCORREO: TStringField
      DisplayWidth = 100
      FieldName = 'CORREO'
      Size = 100
    end
    object QPersonalPOLITICACOMISION: TIntegerField
      DisplayWidth = 10
      FieldName = 'POLITICACOMISION'
    end
    object QPersonalMODODEPENDENCIA: TStringField
      DisplayWidth = 1
      FieldName = 'MODODEPENDENCIA'
      FixedChar = True
      Size = 1
    end
    object QPersonalVENDEDOR: TStringField
      DisplayWidth = 1
      FieldName = 'VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object QPersonalCOBRADOR: TStringField
      DisplayWidth = 1
      FieldName = 'COBRADOR'
      FixedChar = True
      Size = 1
    end
    object QPersonalACTIVO: TStringField
      DisplayWidth = 1
      FieldName = 'ACTIVO'
      FixedChar = True
      Size = 1
    end
    object QPersonalFECHA_INGRESO: TSQLTimeStampField
      FieldName = 'FECHA_INGRESO'
    end
    object QPersonalFECHA_NACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHA_NACIMIENTO'
    end
    object QPersonalVALORHORA: TFMTBCDField
      FieldName = 'VALORHORA'
      Precision = 15
      Size = 3
    end
    object QPersonalCOMISION: TFMTBCDField
      FieldName = 'COMISION'
      Required = True
      Precision = 15
      Size = 3
    end
    object QPersonalSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object QPersonalCUIL: TStringField
      FieldName = 'CUIL'
      Required = True
      Size = 13
    end
  end
  object QCajaCab: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select cc.*,'
      '  cta.Nombre as MuestraCtaCaja'
      'from Caja_Cab cc'
      '  left join cuenta_caja cta on cta.id_cuenta=cc.id_cuenta_caja'
      'where id_cuenta_caja=:id and estado = 0')
    SQLConnection = SQLConectionMain
    Left = 251
    Top = 212
    object QCajaCabID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCajaCabID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCajaCabFECHA_INCIO: TSQLTimeStampField
      FieldName = 'FECHA_INCIO'
      Required = True
    end
    object QCajaCabFECHA_CIERRE: TSQLTimeStampField
      FieldName = 'FECHA_CIERRE'
    end
    object QCajaCabSALDO_INCIAL: TFMTBCDField
      FieldName = 'SALDO_INCIAL'
      Precision = 15
      Size = 3
    end
    object QCajaCabESTADO: TIntegerField
      FieldName = 'ESTADO'
      Required = True
    end
    object QCajaCabOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object QCajaCabNUMEROCAJA: TIntegerField
      FieldName = 'NUMEROCAJA'
    end
    object QCajaCabMUESTRACTACAJA: TStringField
      FieldName = 'MUESTRACTACAJA'
      ProviderFlags = []
      Size = 25
    end
  end
  object QFormaPago: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from FormaPago where id_fpago = :id')
    SQLConnection = SQLConectionMain
    Left = 616
    Top = 152
    object QFormaPagoID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFormaPagoID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFormaPagoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
    end
    object QFormaPagoCOTIZACION: TFMTBCDField
      FieldName = 'COTIZACION'
      Required = True
      Precision = 15
      Size = 3
    end
    object QFormaPagoSIGNO: TStringField
      FieldName = 'SIGNO'
      Size = 5
    end
    object QFormaPagoMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object QFormaPagoACUMULABLE: TStringField
      FieldName = 'ACUMULABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QChequera: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select ch.*,'
      '  b.Nombre as MuestraBanco,'
      '  cta.Nombre as MuestraCuenta'
      'from chequera ch'
      '  left join bancos b on b.id_banco=ch.id_banco'
      '  left join Cuenta_Caja cta on cta.id_Cuenta=ch.id_cuenta'
      'where ch.id_chequera=:id')
    SQLConnection = SQLConectionMain
    Left = 464
    Top = 204
    object QChequeraID_CHEQUERA: TIntegerField
      FieldName = 'ID_CHEQUERA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QChequeraID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QChequeraNRO_CUENTA: TStringField
      FieldName = 'NRO_CUENTA'
      Size = 15
    end
    object QChequeraNUMERO_INCIAL: TIntegerField
      FieldName = 'NUMERO_INCIAL'
      Required = True
    end
    object QChequeraNUMERO_FINAL: TIntegerField
      FieldName = 'NUMERO_FINAL'
      Required = True
    end
    object QChequeraULTIMO_NUMERO: TIntegerField
      FieldName = 'ULTIMO_NUMERO'
      Required = True
    end
    object QChequeraDIFERIDO: TSmallintField
      FieldName = 'DIFERIDO'
      Required = True
    end
    object QChequeraNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
    object QChequeraID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Required = True
    end
    object QChequeraMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object QChequeraCANT_CHE_EMITIDOS: TIntegerField
      FieldName = 'CANT_CHE_EMITIDOS'
    end
    object QChequeraCHEQUERA_TERMINADA: TStringField
      FieldName = 'CHEQUERA_TERMINADA'
      FixedChar = True
      Size = 1
    end
    object QChequeraMUESTRABANCO: TStringField
      FieldName = 'MUESTRABANCO'
      ProviderFlags = []
    end
    object QChequeraMUESTRACUENTA: TStringField
      FieldName = 'MUESTRACUENTA'
      ProviderFlags = []
      Size = 25
    end
  end
  object QTarjetacredito_comp_borrar: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
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
    SQLConnection = SQLConectionMain
    Left = 848
    Top = 684
    object QTarjetacredito_comp_borrarID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTarjetacredito_comp_borrarNRO_TARJETA: TStringField
      FieldName = 'NRO_TARJETA'
      Size = 16
    end
    object QTarjetacredito_comp_borrarNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
    object QTarjetacredito_comp_borrarID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Required = True
    end
    object QTarjetacredito_comp_borrarMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object QTarjetacredito_comp_borrarID_TCREDITO: TIntegerField
      FieldName = 'ID_TCREDITO'
    end
    object QTarjetacredito_comp_borrarMUESTRATARJETACREDITO: TStringField
      FieldName = 'MUESTRATARJETACREDITO'
      ProviderFlags = []
      Size = 15
    end
    object QTarjetacredito_comp_borrarMUESTRACUIT: TStringField
      FieldName = 'MUESTRACUIT'
      ProviderFlags = []
      Size = 13
    end
    object QTarjetacredito_comp_borrarMUESTRABANCO: TStringField
      FieldName = 'MUESTRABANCO'
      ProviderFlags = []
    end
    object QTarjetacredito_comp_borrarMUESTRARAZONSOCIAL: TStringField
      FieldName = 'MUESTRARAZONSOCIAL'
      ProviderFlags = []
      Size = 35
    end
  end
  object QClientes: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
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
    SQLConnection = SQLConectionMain
    Left = 32
    Top = 254
    object QClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Required = True
      Size = 35
    end
    object QClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
    object QClientesDIRECCION_PARTICULAR: TStringField
      FieldName = 'DIRECCION_PARTICULAR'
      Size = 35
    end
    object QClientesDIRECCION_COMERCIAL: TStringField
      FieldName = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object QClientesTELEFONO_PARTICULAR: TStringField
      FieldName = 'TELEFONO_PARTICULAR'
      Size = 10
    end
    object QClientesTELEFONO_COMERCIAL_1: TStringField
      FieldName = 'TELEFONO_COMERCIAL_1'
      Size = 10
    end
    object QClientesTELEFONO_COMERCIAL_2: TStringField
      FieldName = 'TELEFONO_COMERCIAL_2'
      Size = 10
    end
    object QClientesTELEFONO_CELULAR: TStringField
      FieldName = 'TELEFONO_CELULAR'
      Size = 11
    end
    object QClientesID_COD_POSTAL: TIntegerField
      FieldName = 'ID_COD_POSTAL'
    end
    object QClientesCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object QClientesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object QClientesCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Required = True
    end
    object QClientesEMITE_REMITO: TStringField
      FieldName = 'EMITE_REMITO'
      FixedChar = True
      Size = 1
    end
    object QClientesEMITE_FACTURA: TStringField
      FieldName = 'EMITE_FACTURA'
      FixedChar = True
      Size = 1
    end
    object QClientesNRO_DE_CUIT: TStringField
      FieldName = 'NRO_DE_CUIT'
      Size = 13
    end
    object QClientesACTIVO: TStringField
      FieldName = 'ACTIVO'
      FixedChar = True
      Size = 1
    end
    object QClientesLIMITE_CREDITO: TFMTBCDField
      FieldName = 'LIMITE_CREDITO'
      Precision = 15
      Size = 3
    end
    object QClientesSALDOINICIAL: TFMTBCDField
      FieldName = 'SALDOINICIAL'
      Precision = 15
      Size = 3
    end
    object QClientesOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 1
    end
    object QClientesFECHAULTIMACOMPRA: TSQLTimeStampField
      FieldName = 'FECHAULTIMACOMPRA'
    end
    object QClientesFECHAALTA: TSQLTimeStampField
      FieldName = 'FECHAALTA'
    end
    object QClientesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object QClientesZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object QClientesVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 6
    end
    object QClientesULTIMOPAGO: TSQLTimeStampField
      FieldName = 'ULTIMOPAGO'
    end
    object QClientesLISTAPRECIOS: TIntegerField
      FieldName = 'LISTAPRECIOS'
    end
    object QClientesFECHANACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHANACIMIENTO'
    end
    object QClientesTIPODOCUMENTO: TSmallintField
      FieldName = 'TIPODOCUMENTO'
    end
    object QClientesNRODOCUMENTO: TStringField
      FieldName = 'NRODOCUMENTO'
      Size = 15
    end
    object QClientesCORREOELECTRONICO: TStringField
      FieldName = 'CORREOELECTRONICO'
      Size = 100
    end
    object QClientesID_FACTURAPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURAPORDEFECTO'
    end
    object QClientesID_FACTURACONTADOPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURACONTADOPORDEFECTO'
    end
    object QClientesID_NOTADEBITOPORDEFECTO: TIntegerField
      FieldName = 'ID_NOTADEBITOPORDEFECTO'
    end
    object QClientesID_NOTACREDITOPORDEFECTO: TIntegerField
      FieldName = 'ID_NOTACREDITOPORDEFECTO'
    end
    object QClientesID_TIKETPORDEFECTO: TIntegerField
      FieldName = 'ID_TIKETPORDEFECTO'
    end
    object QClientesPERCIBIR_IB: TStringField
      FieldName = 'PERCIBIR_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesINSCRIPTO_MULTICONVENIO: TStringField
      FieldName = 'INSCRIPTO_MULTICONVENIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField
      FieldName = 'FECHA_VENCIMI_DDJJ_MULTI'
    end
    object QClientesCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Size = 50
    end
    object QClientesTELEFONO_CONTACTO: TStringField
      FieldName = 'TELEFONO_CONTACTO'
      Size = 50
    end
    object QClientesCOBRADOR: TStringField
      FieldName = 'COBRADOR'
      Size = 6
    end
    object QClientesCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
    end
    object QClientesLONGITUD: TStringField
      FieldName = 'LONGITUD'
      Size = 25
    end
    object QClientesLATITUD: TStringField
      FieldName = 'LATITUD'
      Size = 25
    end
    object QClientesDIRECCION_CALLE: TStringField
      FieldName = 'DIRECCION_CALLE'
      Size = 40
    end
    object QClientesDIRECCION_NUMERO: TStringField
      FieldName = 'DIRECCION_NUMERO'
      Size = 10
    end
    object QClientesDIRECCION_PISO: TStringField
      FieldName = 'DIRECCION_PISO'
      Size = 10
    end
    object QClientesDIRECCION_DEPTO: TStringField
      FieldName = 'DIRECCION_DEPTO'
      Size = 10
    end
    object QClientesDEUDAMAYOR30: TStringField
      FieldName = 'DEUDAMAYOR30'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesMUESTRATELEDISCADO: TStringField
      FieldName = 'MUESTRATELEDISCADO'
      ProviderFlags = []
      Size = 6
    end
    object QClientesMUESTRAVENDEDOR: TStringField
      FieldName = 'MUESTRAVENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object QClientesMUESTRACOBRADOR: TStringField
      FieldName = 'MUESTRACOBRADOR'
      ProviderFlags = []
      Size = 50
    end
    object QClientesTIPOABONO: TStringField
      FieldName = 'TIPOABONO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField
      FieldName = 'FECHA_INCIO_FC_ABONO'
    end
    object QClientesMES_ABONOANUAL: TIntegerField
      FieldName = 'MES_ABONOANUAL'
    end
    object QClientesFRANQUICIA: TStringField
      FieldName = 'FRANQUICIA'
      FixedChar = True
      Size = 1
    end
    object QClientesDIAS_MAYOR_30: TIntegerField
      FieldName = 'DIAS_MAYOR_30'
    end
    object QClientesID_DEPOSITO_FRANQUICIA: TIntegerField
      FieldName = 'ID_DEPOSITO_FRANQUICIA'
    end
    object QClientesID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
    end
    object QClientesIMPRIME_SALDOFACTURA: TStringField
      FieldName = 'IMPRIME_SALDOFACTURA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCORTAR_SERVICIO: TStringField
      FieldName = 'CORTAR_SERVICIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCON_PLANPAGO: TStringField
      FieldName = 'CON_PLANPAGO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesDIRECCION_POSTAL: TStringField
      FieldName = 'DIRECCION_POSTAL'
      Size = 35
    end
    object QClientesCALLE_1: TStringField
      FieldName = 'CALLE_1'
      Size = 35
    end
    object QClientesCALLE_2: TStringField
      FieldName = 'CALLE_2'
      Size = 35
    end
    object QClientesVENDER_DE_CTDO: TStringField
      FieldName = 'VENDER_DE_CTDO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCORREOELECTRONICO_2: TStringField
      FieldName = 'CORREOELECTRONICO_2'
      Size = 100
    end
    object QClientesPRESENTO_F8001: TStringField
      FieldName = 'PRESENTO_F8001'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesDESDE_F8001: TSQLTimeStampField
      FieldName = 'DESDE_F8001'
    end
    object QClientesHASTA_F8001: TSQLTimeStampField
      FieldName = 'HASTA_F8001'
    end
    object QClientesID_TARJETACREDITO: TIntegerField
      FieldName = 'ID_TARJETACREDITO'
      Required = True
    end
    object QClientesNRO_TARJETA_C: TStringField
      FieldName = 'NRO_TARJETA_C'
    end
    object QClientesNRO_SEG_TC: TStringField
      FieldName = 'NRO_SEG_TC'
      FixedChar = True
      Size = 4
    end
    object QClientesID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Required = True
    end
    object QClientesNRO_CTA_BCO: TStringField
      FieldName = 'NRO_CTA_BCO'
      Size = 22
    end
    object QClientesCODIGO_COORPORATIVO: TStringField
      FieldName = 'CODIGO_COORPORATIVO'
      Size = 6
    end
    object QClientesMUESTRACTACOORPORATIVA: TStringField
      FieldName = 'MUESTRACTACOORPORATIVA'
      ProviderFlags = []
      Size = 35
    end
    object QClientesCUENTA_OPERATIVA: TStringField
      FieldName = 'CUENTA_OPERATIVA'
      Size = 10
    end
    object QClientesTARJETA_CLIENTE: TStringField
      FieldName = 'TARJETA_CLIENTE'
    end
    object QClientesVENCIMIENTO_TC: TSQLTimeStampField
      FieldName = 'VENCIMIENTO_TC'
    end
    object QClientesFOTO: TBlobField
      FieldName = 'FOTO'
      Size = 1
    end
    object QClientesCON_MONITOREO: TStringField
      FieldName = 'CON_MONITOREO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCON_GPRS: TStringField
      FieldName = 'CON_GPRS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCON_HOSTING: TStringField
      FieldName = 'CON_HOSTING'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCOMUNITARIO: TStringField
      FieldName = 'COMUNITARIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesID_PRESTADOR: TIntegerField
      FieldName = 'ID_PRESTADOR'
    end
    object QClientesID_RECIBOPORDEFECTO: TIntegerField
      FieldName = 'ID_RECIBOPORDEFECTO'
    end
    object QClientesNOMBRE_COMPLETO: TStringField
      FieldName = 'NOMBRE_COMPLETO'
      Size = 100
    end
    object QClientesMES_ADICIONAL: TIntegerField
      FieldName = 'MES_ADICIONAL'
    end
    object QClientesMES_SEMESTRAL: TIntegerField
      FieldName = 'MES_SEMESTRAL'
    end
    object QClientesMUESTRAIDGARANTE: TIntegerField
      FieldName = 'MUESTRAIDGARANTE'
      ProviderFlags = []
    end
    object QClientesMOROSO: TStringField
      FieldName = 'MOROSO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesPLANTILLA_CIVA: TStringField
      FieldName = 'PLANTILLA_CIVA'
      FixedChar = True
      Size = 1
    end
    object QClientesOBSERVACIONES1: TStringField
      FieldName = 'OBSERVACIONES1'
      Size = 60
    end
    object QClientesOBSERVACIONES2: TStringField
      FieldName = 'OBSERVACIONES2'
      Size = 60
    end
    object QClientesAVISO: TStringField
      FieldName = 'AVISO'
      Size = 250
    end
    object QClientesRUBRO: TIntegerField
      FieldName = 'RUBRO'
    end
    object QClientesID_PLANTILLA: TIntegerField
      FieldName = 'ID_PLANTILLA'
      Required = True
    end
    object QClientesENVIAR_CPTE_MAIL: TStringField
      FieldName = 'ENVIAR_CPTE_MAIL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesNRO_IP: TStringField
      FieldName = 'NRO_IP'
      Size = 15
    end
    object QClientesCHEQUES: TStringField
      FieldName = 'CHEQUES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesID_ADMINISTRACION: TIntegerField
      FieldName = 'ID_ADMINISTRACION'
      Required = True
    end
    object QClientesNICKNAME_MERCADOPAGO: TStringField
      FieldName = 'NICKNAME_MERCADOPAGO'
      Size = 50
    end
  end
  object QCompraCab: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TipoCpbte'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select Fc.*,'
      '  Fp.Detalle as MuestraCondCompra, De.Nombre as MuestraDeposito,'
      
        '  Su.Detalle as MuestraSucursal,cp.denominacion as MuestraCompro' +
        'bante,'
      
        '  cp.id_comprobante as Id_tipocomprobante,m.moneda as MuestraMon' +
        'edaCpbte,cp.Codigo_Afip as MuestraCodigoAfip,'
      '  m.signo as Muestrasignomonedacpbte,'
      '  ins.detalle as MuestraInscripcionIVA from fccompcab fc'
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
      'where Fc.TipoCpbte= :TipoCpbte'
      'and Fc.id_fc=:id'
      ''
      ' ')
    SQLConnection = SQLConectionMain
    Left = 108
    Top = 255
    object QCompraCabID_FC: TIntegerField
      FieldName = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCompraCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 2
    end
    object QCompraCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object QCompraCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QCompraCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object QCompraCabLETRAFAC: TStringField
      FieldName = 'LETRAFAC'
      FixedChar = True
      Size = 1
    end
    object QCompraCabSUCFAC: TStringField
      FieldName = 'SUCFAC'
      Size = 4
    end
    object QCompraCabNUMEROFAC: TStringField
      FieldName = 'NUMEROFAC'
      Size = 8
    end
    object QCompraCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object QCompraCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object QCompraCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object QCompraCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object QCompraCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object QCompraCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
    end
    object QCompraCabCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object QCompraCabFECHACOMPRA: TSQLTimeStampField
      FieldName = 'FECHACOMPRA'
      Required = True
    end
    object QCompraCabFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
    end
    object QCompraCabCONDICIONCOMPRA: TIntegerField
      FieldName = 'CONDICIONCOMPRA'
      Required = True
    end
    object QCompraCabANULADO: TStringField
      FieldName = 'ANULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCompraCabORDENCOMPRA: TStringField
      FieldName = 'ORDENCOMPRA'
      Size = 8
    end
    object QCompraCabN_OPERACION2: TFMTBCDField
      FieldName = 'N_OPERACION2'
      Precision = 15
      Size = 3
    end
    object QCompraCabNETOGRAV1: TFMTBCDField
      FieldName = 'NETOGRAV1'
      Precision = 15
      Size = 3
    end
    object QCompraCabDSTO: TFMTBCDField
      FieldName = 'DSTO'
      Precision = 15
      Size = 3
    end
    object QCompraCabDSTOIMPORTE: TFMTBCDField
      FieldName = 'DSTOIMPORTE'
      Precision = 15
      Size = 3
    end
    object QCompraCabNETOGRAV2: TFMTBCDField
      FieldName = 'NETOGRAV2'
      Precision = 15
      Size = 3
    end
    object QCompraCabNETOEXEN1: TFMTBCDField
      FieldName = 'NETOEXEN1'
      Precision = 15
      Size = 3
    end
    object QCompraCabNETOEXEN2: TFMTBCDField
      FieldName = 'NETOEXEN2'
      Precision = 15
      Size = 3
    end
    object QCompraCabIMPORTEEXCLUIDO2: TFMTBCDField
      FieldName = 'IMPORTEEXCLUIDO2'
      Precision = 15
      Size = 3
    end
    object QCompraCabIMPORTEEXCLUIDO1: TFMTBCDField
      FieldName = 'IMPORTEEXCLUIDO1'
      Precision = 15
      Size = 3
    end
    object QCompraCabTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 15
      Size = 3
    end
    object QCompraCabDEBE: TFMTBCDField
      FieldName = 'DEBE'
      Precision = 15
      Size = 3
    end
    object QCompraCabAPLICA: TStringField
      FieldName = 'APLICA'
      Size = 13
    end
    object QCompraCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Size = 60
    end
    object QCompraCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Size = 60
    end
    object QCompraCabSUCURSALCOMPRA: TIntegerField
      FieldName = 'SUCURSALCOMPRA'
      Required = True
    end
    object QCompraCabZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object QCompraCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object QCompraCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCompraCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCompraCabFECHAFISCAL: TSQLTimeStampField
      FieldName = 'FECHAFISCAL'
      Required = True
    end
    object QCompraCabNETOMONOTRIBUTO1: TFMTBCDField
      FieldName = 'NETOMONOTRIBUTO1'
      Precision = 15
      Size = 3
    end
    object QCompraCabNETOMONOTRIBUTO2: TFMTBCDField
      FieldName = 'NETOMONOTRIBUTO2'
      Precision = 15
      Size = 3
    end
    object QCompraCabCPBTE_INTERNO: TStringField
      FieldName = 'CPBTE_INTERNO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCompraCabINGRESA_A_CTACTE: TStringField
      FieldName = 'INGRESA_A_CTACTE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCompraCabINGRESA_LIBRO_IVA: TStringField
      FieldName = 'INGRESA_LIBRO_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCompraCabREDUCIDA: TStringField
      FieldName = 'REDUCIDA'
      FixedChar = True
      Size = 1
    end
    object QCompraCabTIPO_PROVEEDOR: TStringField
      FieldName = 'TIPO_PROVEEDOR'
      FixedChar = True
      Size = 1
    end
    object QCompraCabJURIDICCION: TIntegerField
      FieldName = 'JURIDICCION'
    end
    object QCompraCabPERCEPCION_IB_BASEIMPONIBLE: TFMTBCDField
      FieldName = 'PERCEPCION_IB_BASEIMPONIBLE'
      Precision = 15
      Size = 3
    end
    object QCompraCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object QCompraCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object QCompraCabTOTAL_UNIDADES: TFMTBCDField
      FieldName = 'TOTAL_UNIDADES'
      Precision = 15
      Size = 3
    end
    object QCompraCabMONEDA_CPBTE: TIntegerField
      FieldName = 'MONEDA_CPBTE'
    end
    object QCompraCabMONEDA_CPBTE_COTIZACION: TFMTBCDField
      FieldName = 'MONEDA_CPBTE_COTIZACION'
      Precision = 15
      Size = 3
    end
    object QCompraCabMUESTRACONDCOMPRA: TStringField
      FieldName = 'MUESTRACONDCOMPRA'
      ProviderFlags = []
    end
    object QCompraCabMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      ProviderFlags = []
      Size = 25
    end
    object QCompraCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object QCompraCabMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object QCompraCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
    end
    object QCompraCabMUESTRAMONEDACPBTE: TStringField
      FieldName = 'MUESTRAMONEDACPBTE'
      ProviderFlags = []
      Size = 15
    end
    object QCompraCabMUESTRASIGNOMONEDACPBTE: TStringField
      FieldName = 'MUESTRASIGNOMONEDACPBTE'
      ProviderFlags = []
      Size = 5
    end
    object QCompraCabNUMERO_OPERACION: TStringField
      FieldName = 'NUMERO_OPERACION'
      Size = 8
    end
    object QCompraCabCAE: TStringField
      FieldName = 'CAE'
      Required = True
      Size = 50
    end
    object QCompraCabCAE_VENCIMIENTO: TSQLTimeStampField
      FieldName = 'CAE_VENCIMIENTO'
    end
    object QCompraCabFACTURA_ELECTRONICA: TStringField
      FieldName = 'FACTURA_ELECTRONICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCompraCabMUESTRACODIGOAFIP: TStringField
      FieldName = 'MUESTRACODIGOAFIP'
      ProviderFlags = []
      Size = 3
    end
    object QCompraCabMUESTRAINSCRIPCIONIVA: TStringField
      FieldName = 'MUESTRAINSCRIPCIONIVA'
      ProviderFlags = []
      Size = 15
    end
    object QCompraCabCOD_OPERACION_AFIP: TSingleField
      FieldName = 'COD_OPERACION_AFIP'
    end
    object QCompraCabTIPOCOMP_AFIP: TStringField
      FieldName = 'TIPOCOMP_AFIP'
      Size = 3
    end
    object QCompraCabFECHA_OPERACION: TSQLTimeStampField
      FieldName = 'FECHA_OPERACION'
    end
    object QCompraCabLUGAR_REALIZA_AFIP: TStringField
      FieldName = 'LUGAR_REALIZA_AFIP'
      Size = 30
    end
    object QCompraCabCOD_MOTIVO_AFIP: TIntegerField
      FieldName = 'COD_MOTIVO_AFIP'
    end
    object QCompraCabFECHA_FAENA_AFIP: TSQLTimeStampField
      FieldName = 'FECHA_FAENA_AFIP'
    end
    object QCompraCabFECHA_RECEP_AFIP: TSQLTimeStampField
      FieldName = 'FECHA_RECEP_AFIP'
    end
    object QCompraCabDATOS_ADIC_AFIP: TStringField
      FieldName = 'DATOS_ADIC_AFIP'
      Size = 100
    end
    object QCompraCabFECHA_INCIO_ACTIV: TSQLTimeStampField
      FieldName = 'FECHA_INCIO_ACTIV'
    end
    object QCompraCabCOD_CARACT_RECP_AFIP: TIntegerField
      FieldName = 'COD_CARACT_RECP_AFIP'
    end
    object QCompraCabCOD_CARACT_EMIS_AFIP: TIntegerField
      FieldName = 'COD_CARACT_EMIS_AFIP'
    end
    object QCompraCabNRO_IIBB_RECEP: TStringField
      FieldName = 'NRO_IIBB_RECEP'
    end
    object QCompraCabNRO_RENSPA_RECEP: TStringField
      FieldName = 'NRO_RENSPA_RECEP'
    end
    object QCompraCabNRO_RUCA_EMISOR_AFIP: TSingleField
      FieldName = 'NRO_RUCA_EMISOR_AFIP'
    end
    object QCompraCabNRO_RUCA_RECEPTOR_AFIP: TSingleField
      FieldName = 'NRO_RUCA_RECEPTOR_AFIP'
    end
    object QCompraCabNRO_RENSPA_EMISOR: TStringField
      FieldName = 'NRO_RENSPA_EMISOR'
    end
    object QCompraCabCODIGOBARRA_AFIP: TStringField
      FieldName = 'CODIGOBARRA_AFIP'
      Size = 40
    end
    object QCompraCabCUIT_AUTORIZADO: TStringField
      FieldName = 'CUIT_AUTORIZADO'
      Size = 13
    end
    object QCompraCabNOMBRE_AUTORIZADO: TStringField
      FieldName = 'NOMBRE_AUTORIZADO'
      Size = 50
    end
    object QCompraCabTIPO_LIQUIDACION: TStringField
      FieldName = 'TIPO_LIQUIDACION'
      FixedChar = True
      Size = 1
    end
    object QCompraCabCUIT_AUTORIZADO_RECEP: TStringField
      FieldName = 'CUIT_AUTORIZADO_RECEP'
      Size = 13
    end
    object QCompraCabID_CPBTE_ANULADO_LIQ: TIntegerField
      FieldName = 'ID_CPBTE_ANULADO_LIQ'
    end
    object QCompraCabRETENCION_IVA: TFloatField
      FieldName = 'RETENCION_IVA'
      Required = True
    end
  end
  object QComprobantePorDefecto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'compraventa'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DesglozaIva'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select id_comprobante from comprobantes where'
      'tipo_comprob=:tipo and '
      'compra_venta=:compraventa and '
      'Sucursal=:sucursal and '
      'desgloza_iva=:DesglozaIva and'
      'defecto='#39'S'#39' and en_uso='#39'S'#39)
    SQLConnection = SQLConectionMain
    Left = 32
    Top = 549
    object QComprobantePorDefectoID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
  end
  object QCompraDet: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select d.*,  m.signo as MuestraMoneda,'
      's.REEMPLAZO_STK as MuestraCodAlternativo '
      'from FcCompDet d'
      '  left join stock s on s.codigo_stk=d.codigoarticulo'
      '  left join monedas m on m.id=d.id_moneda'
      'where d.Id_CabFac= :id')
    SQLConnection = SQLConectionMain
    Left = 176
    Top = 255
    object QCompraDetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCompraDetID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCompraDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object QCompraDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object QCompraDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QCompraDetCODIGOPROVEEDOR: TStringField
      FieldName = 'CODIGOPROVEEDOR'
      Required = True
      Size = 6
    end
    object QCompraDetRENGLON: TFMTBCDField
      FieldName = 'RENGLON'
      Precision = 15
      Size = 3
    end
    object QCompraDetFECHACOMPRA: TSQLTimeStampField
      FieldName = 'FECHACOMPRA'
      Required = True
    end
    object QCompraDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object QCompraDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object QCompraDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object QCompraDetCANTIDAD: TFMTBCDField
      FieldName = 'CANTIDAD'
      Required = True
      Precision = 15
      Size = 3
    end
    object QCompraDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCompraDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCompraDetIVA_TASA: TFMTBCDField
      FieldName = 'IVA_TASA'
      Precision = 15
      Size = 3
    end
    object QCompraDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Required = True
    end
    object QCompraDetIVA_SOBRETASA: TFMTBCDField
      FieldName = 'IVA_SOBRETASA'
      Precision = 15
      Size = 3
    end
    object QCompraDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Required = True
    end
    object QCompraDetDESCUENTO: TFMTBCDField
      FieldName = 'DESCUENTO'
      Precision = 15
      Size = 3
    end
    object QCompraDetTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 15
      Size = 3
    end
    object QCompraDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object QCompraDetMARGEN: TFMTBCDField
      FieldName = 'MARGEN'
      Precision = 15
      Size = 3
    end
    object QCompraDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCompraDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCompraDetCOSTO_IMP_INTERNO: TFMTBCDField
      FieldName = 'COSTO_IMP_INTERNO'
      Precision = 15
      Size = 3
    end
    object QCompraDetUNIDADES_IMP_INTERNOS: TFMTBCDField
      FieldName = 'UNIDADES_IMP_INTERNOS'
      Precision = 15
      Size = 3
    end
    object QCompraDetUNITARIO_IMP_INTERNO: TFMTBCDField
      FieldName = 'UNITARIO_IMP_INTERNO'
      Precision = 15
      Size = 3
    end
    object QCompraDetCON_NRO_SERIE: TStringField
      FieldName = 'CON_NRO_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCompraDetID_RECEPCION_CAB: TIntegerField
      FieldName = 'ID_RECEPCION_CAB'
    end
    object QCompraDetID_RECEPCION_DET: TIntegerField
      FieldName = 'ID_RECEPCION_DET'
    end
    object QCompraDetNRORECEPCION: TStringField
      FieldName = 'NRORECEPCION'
      Size = 13
    end
    object QCompraDetGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      FixedChar = True
      Size = 1
    end
    object QCompraDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
    end
    object QCompraDetCOTIZACION: TFMTBCDField
      FieldName = 'COTIZACION'
      Precision = 15
      Size = 3
    end
    object QCompraDetMUESTRAMONEDA: TStringField
      FieldName = 'MUESTRAMONEDA'
      ProviderFlags = []
      Size = 5
    end
    object QCompraDetUNIDADES_TOTAL: TFloatField
      FieldName = 'UNIDADES_TOTAL'
    end
    object QCompraDetUNIDADES_EXENTO: TFloatField
      FieldName = 'UNIDADES_EXENTO'
    end
    object QCompraDetUNIDADES_GRAVADO: TFloatField
      FieldName = 'UNIDADES_GRAVADO'
    end
    object QCompraDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
    end
    object QCompraDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
    end
    object QCompraDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
    end
    object QCompraDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
    end
    object QCompraDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
    end
    object QCompraDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
    end
    object QCompraDetMUESTRACODALTERNATIVO: TStringField
      FieldName = 'MUESTRACODALTERNATIVO'
      ProviderFlags = []
    end
    object QCompraDetCONTROL_TRAZABILIDAD: TStringField
      FieldName = 'CONTROL_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCompraDetCANTIDAD_UNIDADES: TFMTBCDField
      FieldName = 'CANTIDAD_UNIDADES'
      Required = True
      Precision = 15
      Size = 3
    end
    object QCompraDetPRESENTACION_CANT: TFMTBCDField
      FieldName = 'PRESENTACION_CANT'
      Required = True
      Precision = 15
      Size = 3
    end
    object QCompraDetDETALLE_ADICIONAL: TStringField
      FieldName = 'DETALLE_ADICIONAL'
      Size = 300
    end
    object QCompraDetTIPO_LIQUI: TIntegerField
      FieldName = 'TIPO_LIQUI'
    end
    object QCompraDetCODIGO_RAZA: TIntegerField
      FieldName = 'CODIGO_RAZA'
    end
    object QCompraDetDETALLE_RAZA: TStringField
      FieldName = 'DETALLE_RAZA'
      Size = 40
    end
    object QCompraDetTROPA: TIntegerField
      FieldName = 'TROPA'
    end
    object QCompraDetCABEZAS: TIntegerField
      FieldName = 'CABEZAS'
    end
  end
  object QCondPago: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from condicionespago where id_fc=:id')
    SQLConnection = SQLConectionMain
    Left = 251
    Top = 263
    object QCondPagoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCondPagoID_FC: TIntegerField
      FieldName = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCondPagoTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object QCondPagoNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object QCondPagoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object QCondPagoITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object QCondPagoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QCondPagoDSCTO: TFMTBCDField
      FieldName = 'DSCTO'
      Precision = 15
      Size = 3
    end
    object QCondPagoIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      Precision = 15
      Size = 3
    end
    object QCondPagoCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      FixedChar = True
      Size = 2
    end
  end
  object QImpuestosComp: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from FcCompImpuesto where Id_FcCompCab=:id')
    SQLConnection = SQLConectionMain
    Left = 328
    Top = 255
    object QImpuestosCompID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QImpuestosCompCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
      Required = True
    end
    object QImpuestosCompDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object QImpuestosCompID_FCCOMPCAB: TIntegerField
      FieldName = 'ID_FCCOMPCAB'
      Required = True
    end
    object QImpuestosCompNETO: TFMTBCDField
      FieldName = 'NETO'
      Precision = 15
      Size = 3
    end
    object QImpuestosCompTASA: TFMTBCDField
      FieldName = 'TASA'
      Precision = 15
      Size = 3
    end
    object QImpuestosCompIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      Precision = 15
      Size = 3
    end
  end
  object QPercepcionIva: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from FcCompPercepcionIVA where Id_FcCompCab=:id')
    SQLConnection = SQLConectionMain
    Left = 396
    Top = 255
    object QPercepcionIvaID_PERCEPCION: TIntegerField
      FieldName = 'ID_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPercepcionIvaCODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPercepcionIvaDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object QPercepcionIvaID_FCCOMPCAB: TIntegerField
      FieldName = 'ID_FCCOMPCAB'
      Required = True
    end
    object QPercepcionIvaNETO: TFMTBCDField
      FieldName = 'NETO'
      Precision = 15
      Size = 3
    end
    object QPercepcionIvaTASA: TFMTBCDField
      FieldName = 'TASA'
      Precision = 15
      Size = 3
    end
    object QPercepcionIvaIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      Precision = 15
      Size = 3
    end
    object QPercepcionIvaCODIGOREGIMEN: TIntegerField
      FieldName = 'CODIGOREGIMEN'
    end
  end
  object QPercepcionIB: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from FcCompPercepcionIB where Id_FcCompCab=:id')
    SQLConnection = SQLConectionMain
    Left = 464
    Top = 255
    object QPercepcionIBID_PERCEPCION: TIntegerField
      FieldName = 'ID_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPercepcionIBCODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPercepcionIBDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object QPercepcionIBID_FCCOMPCAB: TIntegerField
      FieldName = 'ID_FCCOMPCAB'
      Required = True
    end
    object QPercepcionIBNETO: TFMTBCDField
      FieldName = 'NETO'
      Precision = 15
      Size = 3
    end
    object QPercepcionIBTASA: TFMTBCDField
      FieldName = 'TASA'
      Precision = 15
      Size = 3
    end
    object QPercepcionIBIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      Precision = 15
      Size = 3
    end
    object QPercepcionIBJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
    end
  end
  object QCompSubDetalle: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * from FcCompSubDetalle where Id_detFac = :id ')
    SQLConnection = SQLConectionMain
    Left = 544
    Top = 199
    object QCompSubDetalleID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCompSubDetalleID_DETFAC: TIntegerField
      FieldName = 'ID_DETFAC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QCompSubDetalleID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QCompSubDetalleTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object QCompSubDetalleCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QCompSubDetalleFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object QCompSubDetalleNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QCompSubDetalleCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Size = 8
    end
    object QCompSubDetalleSERIE: TStringField
      FieldName = 'SERIE'
      Size = 50
    end
    object QCompSubDetalleDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
  end
  object QDepositoPorSucursal: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select min(d.id) as Deposito from  '
      'depositos d where d.sucursal= :sucursal')
    SQLConnection = SQLConectionMain
    Left = 108
    Top = 304
    object QDepositoPorSucursalDEPOSITO: TIntegerField
      DisplayWidth = 10
      FieldName = 'DEPOSITO'
    end
  end
  object QLdrCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from LdrCliente Where Codigo_Cliente=:Codigo'
      'order by codigo_ldr')
    SQLConnection = SQLConectionMain
    Left = 32
    Top = 155
    object QLdrClienteCODIGO_CLIENTE: TStringField
      FieldName = 'CODIGO_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QLdrClienteCODIGO_LDR: TIntegerField
      FieldName = 'CODIGO_LDR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLdrClienteNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object QLdrClienteDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object QLdrClienteCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object QLdrClienteLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 40
    end
  end
  object QRecibo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select r.*,'
      '  s.detalle as MuestraSucursal ,'
      '  c.denominacion as MuestraComprobante,'
      '  c.id_comprobante as id_tipocomprobante,'
      '  p.nombre as MuestraVendedor,'
      '  i.detalle as MuestraIva,'
      '  fc.nrocpbte as MuestraNCredito,'
      '  cl.cheques as MuestraCheques'
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
      'where r.id_rc=:id')
    SQLConnection = SQLConectionMain
    Left = 396
    Top = 304
    object QReciboID_RC: TIntegerField
      FieldName = 'ID_RC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QReciboTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object QReciboCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QReciboNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QReciboCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object QReciboLETRARC: TStringField
      FieldName = 'LETRARC'
      Size = 1
    end
    object QReciboSUCRC: TStringField
      FieldName = 'SUCRC'
      Size = 4
    end
    object QReciboNUMERORC: TStringField
      FieldName = 'NUMERORC'
      Size = 8
    end
    object QReciboNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object QReciboRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object QReciboDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object QReciboCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object QReciboLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object QReciboTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
    end
    object QReciboCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object QReciboFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QReciboANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object QReciboVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 6
    end
    object QReciboSALDO_APLICAR: TFMTBCDField
      FieldName = 'SALDO_APLICAR'
      Precision = 15
      Size = 3
    end
    object QReciboIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Size = 1
    end
    object QReciboOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Size = 60
    end
    object QReciboOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Size = 60
    end
    object QReciboSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object QReciboZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object QReciboTOTAL_NETO: TFMTBCDField
      FieldName = 'TOTAL_NETO'
      Precision = 15
      Size = 3
    end
    object QReciboPORCENTAJE_DSCTO: TFMTBCDField
      FieldName = 'PORCENTAJE_DSCTO'
      Precision = 15
      Size = 3
    end
    object QReciboIMPORTE_DSCTO: TFMTBCDField
      FieldName = 'IMPORTE_DSCTO'
      Precision = 15
      Size = 3
    end
    object QReciboTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 15
      Size = 3
    end
    object QReciboUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object QReciboFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object QReciboCPBTE_MANUAL: TStringField
      FieldName = 'CPBTE_MANUAL'
      FixedChar = True
      Size = 1
    end
    object QReciboNC_ID: TIntegerField
      FieldName = 'NC_ID'
    end
    object QReciboNC_TIPOCPBTE: TStringField
      FieldName = 'NC_TIPOCPBTE'
      FixedChar = True
      Size = 2
    end
    object QReciboNC_CLASECPBTE: TStringField
      FieldName = 'NC_CLASECPBTE'
      FixedChar = True
      Size = 2
    end
    object QReciboNC_NROCOMPROB: TStringField
      FieldName = 'NC_NROCOMPROB'
      Size = 13
    end
    object QReciboN_OPERACION2: TFMTBCDField
      FieldName = 'N_OPERACION2'
      Precision = 15
      Size = 3
    end
    object QReciboMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object QReciboMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object QReciboID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
    end
    object QReciboMUESTRAVENDEDOR: TStringField
      FieldName = 'MUESTRAVENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object QReciboMUESTRAIVA: TStringField
      FieldName = 'MUESTRAIVA'
      ProviderFlags = []
      Size = 15
    end
    object QReciboNUMERO_OPERACION: TStringField
      FieldName = 'NUMERO_OPERACION'
      Size = 8
    end
    object QReciboNRO_RECIBO_INTERMO: TIntegerField
      FieldName = 'NRO_RECIBO_INTERMO'
    end
    object QReciboID_REC_CUPON: TIntegerField
      FieldName = 'ID_REC_CUPON'
    end
    object QReciboIMPORTE_RECARGO: TFMTBCDField
      FieldName = 'IMPORTE_RECARGO'
      Precision = 15
      Size = 3
    end
    object QReciboLOTE_COBRO_TC: TStringField
      FieldName = 'LOTE_COBRO_TC'
      Size = 8
    end
    object QReciboMUESTRANCREDITO: TStringField
      FieldName = 'MUESTRANCREDITO'
      ProviderFlags = []
      Size = 13
    end
    object QReciboMUESTRACHEQUES: TStringField
      FieldName = 'MUESTRACHEQUES'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
  end
  object QMovAplicaCCVta: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Tipo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select M.*,'
      '  f.fechavta as MuestraFechaCpbte,'
      '  f.total as MuestraTotalFC'
      'from MovAplicaCCVta M'
      
        'left join fcvtacab f on f.id_fc=m.aplica_id_cpbte and f.tipocpbt' +
        'e=m.aplica_tipocpbte'
      'Where M.id_cpbte=:id and M.tipoCpbte=:Tipo'
      'order by m.id_mov')
    SQLConnection = SQLConectionMain
    Left = 32
    Top = 352
    object QMovAplicaCCVtaID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovAplicaCCVtaID_MOVCCVTA: TIntegerField
      FieldName = 'ID_MOVCCVTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovAplicaCCVtaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QMovAplicaCCVtaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Required = True
      Size = 6
    end
    object QMovAplicaCCVtaID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Required = True
    end
    object QMovAplicaCCVtaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QMovAplicaCCVtaCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QMovAplicaCCVtaNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object QMovAplicaCCVtaIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      Precision = 15
      Size = 3
    end
    object QMovAplicaCCVtaAPLICA_ID_CPBTE: TIntegerField
      FieldName = 'APLICA_ID_CPBTE'
      Required = True
    end
    object QMovAplicaCCVtaAPLICA_TIPOCPBTE: TStringField
      FieldName = 'APLICA_TIPOCPBTE'
      Size = 2
    end
    object QMovAplicaCCVtaAPLICA_CLASECPBTE: TStringField
      FieldName = 'APLICA_CLASECPBTE'
      Size = 2
    end
    object QMovAplicaCCVtaAPLICA_NROCPBTE: TStringField
      FieldName = 'APLICA_NROCPBTE'
      Size = 13
    end
    object QMovAplicaCCVtaDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object QMovAplicaCCVtaCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QMovAplicaCCVtaMUESTRAFECHACPBTE: TSQLTimeStampField
      FieldName = 'MUESTRAFECHACPBTE'
      ProviderFlags = []
    end
    object QMovAplicaCCVtaMUESTRATOTALFC: TFMTBCDField
      FieldName = 'MUESTRATOTALFC'
      ProviderFlags = []
      Precision = 15
      Size = 3
    end
  end
  object QMovCCVta: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
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
      '  (m.Saldo>0.01) order by m.fechavta, m.nrocpbte')
    SQLConnection = SQLConectionMain
    Left = 624
    Top = 303
    object QMovCCVtaID_MOVCCVTA: TIntegerField
      FieldName = 'ID_MOVCCVTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovCCVtaID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
    end
    object QMovCCVtaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 6
    end
    object QMovCCVtaFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
    end
    object QMovCCVtaFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
    end
    object QMovCCVtaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object QMovCCVtaCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QMovCCVtaNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QMovCCVtaDEBE: TFMTBCDField
      FieldName = 'DEBE'
      Precision = 15
      Size = 3
    end
    object QMovCCVtaHABER: TFMTBCDField
      FieldName = 'HABER'
      Precision = 15
      Size = 3
    end
    object QMovCCVtaSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 15
      Size = 3
    end
    object QMovCCVtaDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object QMovCCVtaMUESTRAAPAGAR: TFMTBCDField
      FieldName = 'MUESTRAAPAGAR'
      ProviderFlags = []
      Precision = 15
      Size = 3
    end
    object QMovCCVtaNRO_CUOTA: TIntegerField
      FieldName = 'NRO_CUOTA'
      Required = True
    end
    object QMovCCVtaMUESTRAGRUPO: TIntegerField
      FieldName = 'MUESTRAGRUPO'
      ProviderFlags = []
    end
    object QMovCCVtaMUESTRATOTAL: TFMTBCDField
      FieldName = 'MUESTRATOTAL'
      ProviderFlags = []
      Precision = 15
      Size = 2
    end
    object QMovCCVtaMUESTRATIPOVTA: TStringField
      FieldName = 'MUESTRATIPOVTA'
      ProviderFlags = []
      Size = 1
    end
  end
  object QTRetencion: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from T_retenciones where id_retencion=:id')
    SQLConnection = SQLConectionMain
    Left = 464
    Top = 408
    object QTRetencionID_RETENCION: TIntegerField
      FieldName = 'ID_RETENCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTRetencionDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object QTRetencionTIPO: TSmallintField
      FieldName = 'TIPO'
    end
  end
  object QStock_EditDetalle: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select s.editadetalle from stock s where  s.codigo_stk = :codigo')
    SQLConnection = SQLConectionMain
    Left = 116
    Top = 394
  end
  object QTasaPercep_Retencion_IIBB: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'cuit'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select cuit,tasa_percepcion,tasa_retencion,desde,hasta'
      'from TABLA_PERCEPCION_RETENCION where cuit=:cuit')
    SQLConnection = SQLConectionMain
    Left = 464
    Top = 304
    object QTasaPercep_Retencion_IIBBCUIT: TStringField
      FieldName = 'CUIT'
      Required = True
      Size = 13
    end
    object QTasaPercep_Retencion_IIBBTASA_PERCEPCION: TFMTBCDField
      FieldName = 'TASA_PERCEPCION'
      Precision = 15
      Size = 3
    end
    object QTasaPercep_Retencion_IIBBTASA_RETENCION: TFMTBCDField
      FieldName = 'TASA_RETENCION'
      Precision = 15
      Size = 3
    end
    object QTasaPercep_Retencion_IIBBDESDE: TSQLTimeStampField
      FieldName = 'DESDE'
    end
    object QTasaPercep_Retencion_IIBBHASTA: TSQLTimeStampField
      FieldName = 'HASTA'
    end
  end
  object QGrupoCpbteComp: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_COMPROBANTE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        ' select td.id_cab from tabla_cpbte_cccomp_det td where td.id_cpb' +
        'te=:ID_COMPROBANTE')
    SQLConnection = SQLConectionMain
    Left = 32
    Top = 451
    object QGrupoCpbteCompID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Required = True
    end
  end
  object QOrdenCompCab: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'TipoCpbte'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
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
      ' '
      ' ')
    SQLConnection = SQLConectionMain
    Left = 328
    Top = 404
    object QOrdenCompCabID_OC: TIntegerField
      FieldName = 'ID_OC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOrdenCompCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 2
    end
    object QOrdenCompCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QOrdenCompCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QOrdenCompCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object QOrdenCompCabLETRA: TStringField
      FieldName = 'LETRA'
      Size = 1
    end
    object QOrdenCompCabSUC: TStringField
      FieldName = 'SUC'
      Size = 4
    end
    object QOrdenCompCabNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object QOrdenCompCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object QOrdenCompCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object QOrdenCompCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object QOrdenCompCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object QOrdenCompCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object QOrdenCompCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
    end
    object QOrdenCompCabCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object QOrdenCompCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QOrdenCompCabFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
    end
    object QOrdenCompCabCONDICIONCOMPRA: TIntegerField
      FieldName = 'CONDICIONCOMPRA'
    end
    object QOrdenCompCabANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object QOrdenCompCabN_OPERACION2: TFMTBCDField
      FieldName = 'N_OPERACION2'
      Precision = 15
      Size = 3
    end
    object QOrdenCompCabNETOGRAV1: TFMTBCDField
      FieldName = 'NETOGRAV1'
      Precision = 15
      Size = 3
    end
    object QOrdenCompCabNETOGRAV2: TFMTBCDField
      FieldName = 'NETOGRAV2'
      Precision = 15
      Size = 3
    end
    object QOrdenCompCabDSTO: TFMTBCDField
      FieldName = 'DSTO'
      Precision = 15
      Size = 3
    end
    object QOrdenCompCabDSTOIMPORTE: TFMTBCDField
      FieldName = 'DSTOIMPORTE'
      Precision = 15
      Size = 3
    end
    object QOrdenCompCabNETOEXEN1: TFMTBCDField
      FieldName = 'NETOEXEN1'
      Precision = 15
      Size = 3
    end
    object QOrdenCompCabNETOEXEN2: TFMTBCDField
      FieldName = 'NETOEXEN2'
      Precision = 15
      Size = 3
    end
    object QOrdenCompCabIMPORTEEXCLUIDO1: TFMTBCDField
      FieldName = 'IMPORTEEXCLUIDO1'
      Precision = 15
      Size = 3
    end
    object QOrdenCompCabIMPORTEEXCLUIDO2: TFMTBCDField
      FieldName = 'IMPORTEEXCLUIDO2'
      Precision = 15
      Size = 3
    end
    object QOrdenCompCabNETOMONOTRIBUTO1: TFMTBCDField
      FieldName = 'NETOMONOTRIBUTO1'
      Precision = 15
      Size = 3
    end
    object QOrdenCompCabNETOMONOTRIBUTO2: TFMTBCDField
      FieldName = 'NETOMONOTRIBUTO2'
      Precision = 15
      Size = 3
    end
    object QOrdenCompCabTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 15
      Size = 3
    end
    object QOrdenCompCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Size = 1
    end
    object QOrdenCompCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object QOrdenCompCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object QOrdenCompCabAUTORIZO: TStringField
      FieldName = 'AUTORIZO'
      Size = 6
    end
    object QOrdenCompCabREALIZO: TStringField
      FieldName = 'REALIZO'
      Size = 6
    end
    object QOrdenCompCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object QOrdenCompCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Size = 1
    end
    object QOrdenCompCabESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object QOrdenCompCabFECHAAUTORIZACION: TSQLTimeStampField
      FieldName = 'FECHAAUTORIZACION'
    end
    object QOrdenCompCabFECHACUMPLIDA: TSQLTimeStampField
      FieldName = 'FECHACUMPLIDA'
    end
    object QOrdenCompCabOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 1
    end
    object QOrdenCompCabNOTAS: TStringField
      FieldName = 'NOTAS'
      Size = 200
    end
    object QOrdenCompCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object QOrdenCompCabTRANSPORTE: TIntegerField
      FieldName = 'TRANSPORTE'
    end
    object QOrdenCompCabTIPO: TSmallintField
      FieldName = 'TIPO'
      Required = True
    end
    object QOrdenCompCabTIPO_PROVEEDOR: TStringField
      FieldName = 'TIPO_PROVEEDOR'
      FixedChar = True
      Size = 1
    end
    object QOrdenCompCabID_PRESUPUESTO_OC: TIntegerField
      FieldName = 'ID_PRESUPUESTO_OC'
    end
    object QOrdenCompCabTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
      Size = 25
    end
    object QOrdenCompCabMUESTRACONDCOMPRA: TStringField
      FieldName = 'MUESTRACONDCOMPRA'
      ProviderFlags = []
    end
    object QOrdenCompCabMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      ProviderFlags = []
      Size = 25
    end
    object QOrdenCompCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object QOrdenCompCabMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object QOrdenCompCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
    end
    object QOrdenCompCabMUESTRAREALIZO: TStringField
      FieldName = 'MUESTRAREALIZO'
      ProviderFlags = []
      Size = 50
    end
    object QOrdenCompCabMUESTRAAUTORIZO: TStringField
      FieldName = 'MUESTRAAUTORIZO'
      ProviderFlags = []
      Size = 50
    end
    object QOrdenCompCabMUESTRANUMEROPRESOC: TStringField
      FieldName = 'MUESTRANUMEROPRESOC'
      ProviderFlags = []
      Size = 8
    end
    object QOrdenCompCabMUESTRAID_PRESOC: TIntegerField
      FieldName = 'MUESTRAID_PRESOC'
      ProviderFlags = []
    end
    object QOrdenCompCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object QOrdenCompCabID_OCOMPRA_PREV: TIntegerField
      FieldName = 'ID_OCOMPRA_PREV'
      Required = True
    end
    object QOrdenCompCabNRO_OC_ANTERIOR: TStringField
      FieldName = 'NRO_OC_ANTERIOR'
      Size = 13
    end
    object QOrdenCompCabID_OCOMPRA_NEXT: TIntegerField
      FieldName = 'ID_OCOMPRA_NEXT'
      Required = True
    end
    object QOrdenCompCabNRO_OC_SIGUIEN: TStringField
      FieldName = 'NRO_OC_SIGUIEN'
      Size = 13
    end
    object QOrdenCompCabMUESTRACORREO: TStringField
      FieldName = 'MUESTRACORREO'
      ProviderFlags = []
      Size = 100
    end
  end
  object QOrdenCompDet: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select d.*,s.presentacion_cantidad as MuestraPresCant,'
      '       s.presentacion_unidad as MuestraPresUni,'
      
        '       m.signo as MuestraMoneda,s.reemplazo_stk as MuestraCodAlt' +
        'ernativo from OrdenCompraDet d'
      'left join stock s on s.codigo_stk=d.codigoarticulo'
      'left join monedas m on m.id=d.id_moneda'
      'where d.id_caboc= :id')
    SQLConnection = SQLConectionMain
    Left = 396
    Top = 409
    object QOrdenCompDetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOrdenCompDetID_CABOC: TIntegerField
      FieldName = 'ID_CABOC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QOrdenCompDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object QOrdenCompDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QOrdenCompDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QOrdenCompDetRENGLON: TFMTBCDField
      FieldName = 'RENGLON'
      Precision = 15
      Size = 3
    end
    object QOrdenCompDetFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QOrdenCompDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Size = 8
    end
    object QOrdenCompDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object QOrdenCompDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object QOrdenCompDetCANTIDADPEDIDA: TFMTBCDField
      FieldName = 'CANTIDADPEDIDA'
      Precision = 15
      Size = 3
    end
    object QOrdenCompDetCANTIDADAUTORIZADA: TFMTBCDField
      FieldName = 'CANTIDADAUTORIZADA'
      Precision = 15
      Size = 3
    end
    object QOrdenCompDetCANTIDADRECIBIDA: TFMTBCDField
      FieldName = 'CANTIDADRECIBIDA'
      Precision = 15
      Size = 3
    end
    object QOrdenCompDetUNITARIO_TOTAL: TFMTBCDField
      FieldName = 'UNITARIO_TOTAL'
      Precision = 15
      Size = 3
    end
    object QOrdenCompDetUNITARIO_GRAVADO: TFMTBCDField
      FieldName = 'UNITARIO_GRAVADO'
      Precision = 15
      Size = 3
    end
    object QOrdenCompDetUNITARIO_EXENTO: TFMTBCDField
      FieldName = 'UNITARIO_EXENTO'
      Precision = 15
      Size = 3
    end
    object QOrdenCompDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Size = 1
    end
    object QOrdenCompDetIVA_TASA: TFMTBCDField
      FieldName = 'IVA_TASA'
      Precision = 15
      Size = 3
    end
    object QOrdenCompDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
    end
    object QOrdenCompDetIVA_SOBRETASA: TFMTBCDField
      FieldName = 'IVA_SOBRETASA'
      Precision = 15
      Size = 3
    end
    object QOrdenCompDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
    end
    object QOrdenCompDetSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object QOrdenCompDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object QOrdenCompDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object QOrdenCompDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Size = 1
    end
    object QOrdenCompDetTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 15
      Size = 3
    end
    object QOrdenCompDetID_COMP_REC: TIntegerField
      FieldName = 'ID_COMP_REC'
      Required = True
    end
    object QOrdenCompDetTIPO_COMP_REC: TStringField
      FieldName = 'TIPO_COMP_REC'
      Size = 2
    end
    object QOrdenCompDetCLASE_COMP_REC: TStringField
      FieldName = 'CLASE_COMP_REC'
      Size = 2
    end
    object QOrdenCompDetNRO_COMP_REC: TStringField
      FieldName = 'NRO_COMP_REC'
      Size = 13
    end
    object QOrdenCompDetMUESTRAPRESCANT: TFMTBCDField
      FieldName = 'MUESTRAPRESCANT'
      ProviderFlags = []
      Precision = 15
      Size = 3
    end
    object QOrdenCompDetMUESTRAPRESUNI: TStringField
      FieldName = 'MUESTRAPRESUNI'
      ProviderFlags = []
      Size = 3
    end
    object QOrdenCompDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
    end
    object QOrdenCompDetCOTIZACION: TFMTBCDField
      FieldName = 'COTIZACION'
      Precision = 15
      Size = 3
    end
    object QOrdenCompDetMUESTRAMONEDA: TStringField
      FieldName = 'MUESTRAMONEDA'
      ProviderFlags = []
      Size = 5
    end
    object QOrdenCompDetMUESTRACODALTERNATIVO: TStringField
      FieldName = 'MUESTRACODALTERNATIVO'
      ProviderFlags = []
    end
    object QOrdenCompDetDETALLE_ADICIONAL: TStringField
      FieldName = 'DETALLE_ADICIONAL'
      Size = 300
    end
  end
  object QImpuestoOrdenComp: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from ordencompraImpuesto where Id_ocCab=:id')
    SQLConnection = SQLConectionMain
    Left = 552
    Top = 345
    object QImpuestoOrdenCompID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QImpuestoOrdenCompCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
      Required = True
    end
    object QImpuestoOrdenCompDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object QImpuestoOrdenCompID_OCCAB: TIntegerField
      FieldName = 'ID_OCCAB'
      Required = True
    end
    object QImpuestoOrdenCompNETO: TFMTBCDField
      FieldName = 'NETO'
      Precision = 15
      Size = 3
    end
    object QImpuestoOrdenCompTASA: TFMTBCDField
      FieldName = 'TASA'
      Precision = 15
      Size = 3
    end
    object QImpuestoOrdenCompIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      Precision = 15
      Size = 3
    end
  end
  object QOrdenCompVtos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from ordencompraVtos where Id_ocCab=:id')
    SQLConnection = SQLConectionMain
    Left = 544
    Top = 409
    object QOrdenCompVtosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOrdenCompVtosID_OCCAB: TIntegerField
      FieldName = 'ID_OCCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOrdenCompVtosDIAS: TSmallintField
      FieldName = 'DIAS'
      Required = True
    end
    object QOrdenCompVtosFECHA_VENCIMIEMTO: TSQLTimeStampField
      FieldName = 'FECHA_VENCIMIEMTO'
      Required = True
    end
    object QOrdenCompVtosIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      Required = True
      Precision = 15
      Size = 3
    end
  end
  object QCondVentaCli: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select CV.*,'
      '  FP.Detalle,'
      '  FP.Dias,'
      '  FP.Descuento as Descuento_FPago'
      'from CondVenta CV'
      '  inner join F_Pago FP on FP.Codigo=CV.CodigoPago'
      'where CV.CodigoCliente= :Codigo  ')
    SQLConnection = SQLConectionMain
    Left = 108
    Top = 511
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
    object QCondVentaCliDESCUENTO: TFMTBCDField
      FieldName = 'DESCUENTO'
      Precision = 15
      Size = 3
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
    object QCondVentaCliDESCUENTO_FPAGO: TFMTBCDField
      FieldName = 'DESCUENTO_FPAGO'
      ProviderFlags = []
      Precision = 15
      Size = 3
    end
  end
  object QCondCompraProv: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select CC.*,'
      'FP.Detalle,'
      'FP.Dias,'
      'FP.Descuento as Descuento_FPago from CondCompra CC'
      'inner join F_Pago FP on FP.Codigo=CC.CodigoPago'
      'where  CC.CodigoProvee = :Codigo')
    SQLConnection = SQLConectionMain
    Left = 32
    Top = 500
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
    object QCondCompraProvDESCUENTO: TFMTBCDField
      FieldName = 'DESCUENTO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
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
    object QCondCompraProvDESCUENTO_FPAGO: TFMTBCDField
      FieldName = 'DESCUENTO_FPAGO'
      Precision = 15
      Size = 3
    end
  end
  object QRtoObraDet: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'Select rd.*,m.moneda as MuestraMoneda,m.signo as MuestraSigno fr' +
        'om Rto_ObraDet rd'
      'left join stock s on s.codigo_stk=rd.codigo'
      'left join monedas m on m.id=rd.id_moneda'
      'where rd.Id_CabRto= :id')
    SQLConnection = SQLConectionMain
    Left = 328
    Top = 463
    object QRtoObraDetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRtoObraDetID_CABRTO: TIntegerField
      FieldName = 'ID_CABRTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRtoObraDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object QRtoObraDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QRtoObraDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QRtoObraDetRENGLON: TFMTBCDField
      FieldName = 'RENGLON'
      Precision = 15
      Size = 3
    end
    object QRtoObraDetFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QRtoObraDetCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 8
    end
    object QRtoObraDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object QRtoObraDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object QRtoObraDetCANTIDAD: TFMTBCDField
      FieldName = 'CANTIDAD'
      Precision = 15
      Size = 3
    end
    object QRtoObraDetUNITARIO_TOTAL: TFMTBCDField
      FieldName = 'UNITARIO_TOTAL'
      Precision = 15
      Size = 3
    end
    object QRtoObraDetUNITARIO_GRAVADO: TFMTBCDField
      FieldName = 'UNITARIO_GRAVADO'
      Precision = 15
      Size = 3
    end
    object QRtoObraDetUNITARIO_EXENTO: TFMTBCDField
      FieldName = 'UNITARIO_EXENTO'
      Precision = 15
      Size = 3
    end
    object QRtoObraDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Size = 1
    end
    object QRtoObraDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Size = 1
    end
    object QRtoObraDetIVA_TASA: TFMTBCDField
      FieldName = 'IVA_TASA'
      Precision = 15
      Size = 3
    end
    object QRtoObraDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
    end
    object QRtoObraDetIVA_SOBRETASA: TFMTBCDField
      FieldName = 'IVA_SOBRETASA'
      Precision = 15
      Size = 3
    end
    object QRtoObraDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
    end
    object QRtoObraDetCOSTO_GRAVADO: TFMTBCDField
      FieldName = 'COSTO_GRAVADO'
      Precision = 15
      Size = 3
    end
    object QRtoObraDetCOSTO_EXENTO: TFMTBCDField
      FieldName = 'COSTO_EXENTO'
      Precision = 15
      Size = 3
    end
    object QRtoObraDetCOSTO_TOTAL: TFMTBCDField
      FieldName = 'COSTO_TOTAL'
      Precision = 15
      Size = 3
    end
    object QRtoObraDetTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 15
      Size = 3
    end
    object QRtoObraDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object QRtoObraDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Size = 1
    end
    object QRtoObraDetCON_NRO_SERIE: TStringField
      FieldName = 'CON_NRO_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRtoObraDetCON_CODIGO_BARRA: TStringField
      FieldName = 'CON_CODIGO_BARRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRtoObraDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Required = True
    end
    object QRtoObraDetCOTIZACION: TFMTBCDField
      FieldName = 'COTIZACION'
      Required = True
      Precision = 15
      Size = 3
    end
    object QRtoObraDetMUESTRAMONEDA: TStringField
      FieldName = 'MUESTRAMONEDA'
      ProviderFlags = []
      Size = 15
    end
    object QRtoObraDetMUESTRASIGNO: TStringField
      FieldName = 'MUESTRASIGNO'
      ProviderFlags = []
      Size = 5
    end
  end
  object QRtoObraCab: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TipoCpbte'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
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
    SQLConnection = SQLConectionMain
    Left = 396
    Top = 463
    object QRtoObraCabID_RTO: TIntegerField
      FieldName = 'ID_RTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRtoObraCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QRtoObraCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QRtoObraCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QRtoObraCabCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object QRtoObraCabLETRARTO: TStringField
      FieldName = 'LETRARTO'
      Size = 1
    end
    object QRtoObraCabSUCRTO: TStringField
      FieldName = 'SUCRTO'
      Size = 4
    end
    object QRtoObraCabNUMERORTO: TStringField
      FieldName = 'NUMERORTO'
      Size = 8
    end
    object QRtoObraCabLISTAPRECIO: TIntegerField
      FieldName = 'LISTAPRECIO'
    end
    object QRtoObraCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QRtoObraCabFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
    end
    object QRtoObraCabESTADO: TStringField
      FieldName = 'ESTADO'
      Required = True
      Size = 1
    end
    object QRtoObraCabANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object QRtoObraCabNROFACT: TStringField
      FieldName = 'NROFACT'
      Size = 13
    end
    object QRtoObraCabN_OPERACION2: TFMTBCDField
      FieldName = 'N_OPERACION2'
      Precision = 15
      Size = 3
    end
    object QRtoObraCabTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 15
      Size = 3
    end
    object QRtoObraCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Required = True
      Size = 1
    end
    object QRtoObraCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Size = 60
    end
    object QRtoObraCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Size = 60
    end
    object QRtoObraCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
    end
    object QRtoObraCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object QRtoObraCabNROENTREGA: TIntegerField
      FieldName = 'NROENTREGA'
    end
    object QRtoObraCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object QRtoObraCabRENGLONES: TSmallintField
      FieldName = 'RENGLONES'
    end
    object QRtoObraCabMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      ProviderFlags = []
      Size = 25
    end
    object QRtoObraCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object QRtoObraCabMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object QRtoObraCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
    end
    object QRtoObraCabMUESTRAOBRA: TStringField
      FieldName = 'MUESTRAOBRA'
      ProviderFlags = []
      Size = 100
    end
  end
  object QRtoObraSubDet: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select r.* from rto_obrasubdet r where r.id_rtocab= :id')
    SQLConnection = SQLConectionMain
    Left = 466
    Top = 463
    object QRtoObraSubDetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRtoObraSubDetID_RTODET: TIntegerField
      FieldName = 'ID_RTODET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRtoObraSubDetID_RTOCAB: TIntegerField
      FieldName = 'ID_RTOCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRtoObraSubDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 4
    end
    object QRtoObraSubDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 4
    end
    object QRtoObraSubDetFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object QRtoObraSubDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QRtoObraSubDetCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 8
    end
    object QRtoObraSubDetSERIE: TStringField
      FieldName = 'SERIE'
      Size = 50
    end
    object QRtoObraSubDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object QRtoObraSubDetTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QEstadoCaja: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select estado from caja_cab where id_caja=:id ')
    SQLConnection = SQLConectionMain
    Left = 464
    Top = 519
    object QEstadoCajaESTADO: TIntegerField
      FieldName = 'ESTADO'
      Required = True
    end
  end
  object QOPago: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select o.*, s.detalle as MuestraSucursal,c.denominacion as Muest' +
        'raComprobante,'
      '       c.id_comprobante as id_tipoComprobante,'
      '       p.correo as MuestraCorreo from OrdenPago o'
      'left join sucursal s on s.codigo=o.sucursal'
      'left join poveedor p on p.codigo=o.codigo'
      'left join comprobantes c on c.clase_comprob=O.ClaseCpbte and'
      '          c.letra=o.LetraOp and'
      '          c.sucursal=o.sucursal and'
      '          c.tipo_comprob=o.tipocpbte and'
      '          c.compra_venta='#39'C'#39
      'where o.id_op=:id'
      'and o.tipocpbte='#39'OP'#39)
    SQLConnection = SQLConectionMain
    Left = 740
    Top = 8
    object QOPagoID_OP: TIntegerField
      FieldName = 'ID_OP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOPagoTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object QOPagoCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QOPagoNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QOPagoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object QOPagoLETRAOP: TStringField
      FieldName = 'LETRAOP'
      Size = 1
    end
    object QOPagoSUCOP: TStringField
      FieldName = 'SUCOP'
      Size = 4
    end
    object QOPagoNUMEROOP: TStringField
      FieldName = 'NUMEROOP'
      Size = 8
    end
    object QOPagoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object QOPagoRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object QOPagoDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object QOPagoCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object QOPagoLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object QOPagoTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
    end
    object QOPagoCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object QOPagoNRO_IIBB: TStringField
      FieldName = 'NRO_IIBB'
      Size = 15
    end
    object QOPagoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QOPagoANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object QOPagoN_OPERACION2: TFMTBCDField
      FieldName = 'N_OPERACION2'
      Precision = 15
      Size = 3
    end
    object QOPagoTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 15
      Size = 3
    end
    object QOPagoSALDO_APLICAR: TFMTBCDField
      FieldName = 'SALDO_APLICAR'
      Precision = 15
      Size = 3
    end
    object QOPagoOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Size = 60
    end
    object QOPagoOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Size = 60
    end
    object QOPagoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object QOPagoDESCUENTO: TFMTBCDField
      FieldName = 'DESCUENTO'
      Precision = 15
      Size = 3
    end
    object QOPagoDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Size = 1
    end
    object QOPagoNC_ID_FC: TIntegerField
      FieldName = 'NC_ID_FC'
    end
    object QOPagoNC_LETRAFAC: TStringField
      FieldName = 'NC_LETRAFAC'
      Size = 1
    end
    object QOPagoNC_SUCFAC: TStringField
      FieldName = 'NC_SUCFAC'
      Size = 4
    end
    object QOPagoNC_NUMEROFAC: TStringField
      FieldName = 'NC_NUMEROFAC'
      Size = 8
    end
    object QOPagoTASA_PERCEPCIONIVA: TFMTBCDField
      FieldName = 'TASA_PERCEPCIONIVA'
      Precision = 15
      Size = 3
    end
    object QOPagoTASA_PERCEPCIONIB: TFMTBCDField
      FieldName = 'TASA_PERCEPCIONIB'
      Precision = 15
      Size = 3
    end
    object QOPagoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object QOPagoTOTAL_NETO_GRAVADO: TFMTBCDField
      FieldName = 'TOTAL_NETO_GRAVADO'
      Precision = 15
      Size = 3
    end
    object QOPagoTOTAL_PAGOS_DEL_MES: TFMTBCDField
      FieldName = 'TOTAL_PAGOS_DEL_MES'
      Precision = 15
      Size = 3
    end
    object QOPagoTOTAL_RETENIDO_MES: TFMTBCDField
      FieldName = 'TOTAL_RETENIDO_MES'
      Precision = 15
      Size = 3
    end
    object QOPagoTASA_RETENCION_GANACIA: TFMTBCDField
      FieldName = 'TASA_RETENCION_GANACIA'
      Precision = 15
      Size = 3
    end
    object QOPagoMINIMO_NO_IMPONIBLE_GANANCIA: TFMTBCDField
      FieldName = 'MINIMO_NO_IMPONIBLE_GANANCIA'
      Precision = 15
      Size = 3
    end
    object QOPagoRETIENE_GANACIAS: TStringField
      FieldName = 'RETIENE_GANACIAS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOPagoRETENCION_GANACIA_GENERADO: TStringField
      FieldName = 'RETENCION_GANACIA_GENERADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOPagoCODIGO_REGIMENA_GANANCIA: TIntegerField
      FieldName = 'CODIGO_REGIMENA_GANANCIA'
    end
    object QOPagoCONCEPTO_RETENCION_GANACIA: TStringField
      FieldName = 'CONCEPTO_RETENCION_GANACIA'
      Size = 25
    end
    object QOPagoIMPUESTO_MINIMO_GANANCIA: TFMTBCDField
      FieldName = 'IMPUESTO_MINIMO_GANANCIA'
      Precision = 15
      Size = 3
    end
    object QOPagoRETIENE_IIBB: TStringField
      FieldName = 'RETIENE_IIBB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOPagoTASA_RETENCION_IIBB: TFMTBCDField
      FieldName = 'TASA_RETENCION_IIBB'
      Required = True
      Precision = 15
      Size = 3
    end
    object QOPagoMINIMO_IMPONIBLE_RET_IIBB: TFMTBCDField
      FieldName = 'MINIMO_IMPONIBLE_RET_IIBB'
      Required = True
      Precision = 15
      Size = 3
    end
    object QOPagoFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object QOPagoMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object QOPagoMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object QOPagoID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
    end
    object QOPagoDESCUENTO_PORCENTAJE: TFMTBCDField
      FieldName = 'DESCUENTO_PORCENTAJE'
      Precision = 15
      Size = 3
    end
    object QOPagoTOTAL_NETO: TFMTBCDField
      FieldName = 'TOTAL_NETO'
      Precision = 15
      Size = 3
    end
    object QOPagoNUMERO_OPERACION: TStringField
      FieldName = 'NUMERO_OPERACION'
      Size = 8
    end
    object QOPagoMUESTRACORREO: TStringField
      FieldName = 'MUESTRACORREO'
      ProviderFlags = []
      Size = 100
    end
    object QOPagoPERMITIR_MODIF_TOTAL: TStringField
      FieldName = 'PERMITIR_MODIF_TOTAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOPagoRET_GAN_X_ESCALA: TStringField
      FieldName = 'RET_GAN_X_ESCALA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOPagoID_ESCALA_RET: TIntegerField
      FieldName = 'ID_ESCALA_RET'
      Required = True
    end
    object QOPagoGANC_ESCALA_DESDE: TFMTBCDField
      FieldName = 'GANC_ESCALA_DESDE'
      Precision = 15
      Size = 3
    end
    object QOPagoGANC_ESCALA_HASTA: TFMTBCDField
      FieldName = 'GANC_ESCALA_HASTA'
      Precision = 15
      Size = 3
    end
    object QOPagoGANC_ESCALA_VARIAC: TFMTBCDField
      FieldName = 'GANC_ESCALA_VARIAC'
      Precision = 15
      Size = 3
    end
    object QOPagoGANC_ESCALA_FIJO: TFMTBCDField
      FieldName = 'GANC_ESCALA_FIJO'
      Precision = 15
      Size = 3
    end
    object QOPagoGANC_ESCALA_EXCED: TFMTBCDField
      FieldName = 'GANC_ESCALA_EXCED'
      Precision = 15
      Size = 3
    end
    object QOPagoRETIENE_IVA: TStringField
      FieldName = 'RETIENE_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOPagoIVA_ACUMULADO: TFMTBCDField
      FieldName = 'IVA_ACUMULADO'
      Required = True
      Precision = 15
      Size = 3
    end
    object QOPagoTASA_RET_IVA: TFMTBCDField
      FieldName = 'TASA_RET_IVA'
      Required = True
      Precision = 15
      Size = 3
    end
    object QOPagoCOD_RET_IVA: TIntegerField
      FieldName = 'COD_RET_IVA'
      Required = True
    end
    object QOPagoCONCEPTO_RET_IVA: TStringField
      FieldName = 'CONCEPTO_RET_IVA'
      Required = True
      Size = 50
    end
  end
  object QMovAplicaCCCompra: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Tipo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select m.*,'
      '  f.FechaCompra as MuestraFechaCpbte,'
      '  f.total as MuestraTotalFactura from MovAplicaCCCompra  m'
      
        '  left join FcCompCab f on f.id_fc=m.aplica_id_cpbte and f.tipoc' +
        'pbte=m.aplica_tipocpbte'
      'Where m.id_cpbte = :id and m.tipoCpbte = :Tipo')
    SQLConnection = SQLConectionMain
    Left = 719
    Top = 64
    object QMovAplicaCCCompraID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovAplicaCCCompraID_MOVCCCOMPRA: TIntegerField
      FieldName = 'ID_MOVCCCOMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovAplicaCCCompraFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QMovAplicaCCCompraPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Required = True
      Size = 6
    end
    object QMovAplicaCCCompraID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Required = True
    end
    object QMovAplicaCCCompraTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QMovAplicaCCCompraCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QMovAplicaCCCompraNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object QMovAplicaCCCompraIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      Precision = 15
      Size = 3
    end
    object QMovAplicaCCCompraAPLICA_ID_CPBTE: TIntegerField
      FieldName = 'APLICA_ID_CPBTE'
      Required = True
    end
    object QMovAplicaCCCompraAPLICA_TIPOCPBTE: TStringField
      FieldName = 'APLICA_TIPOCPBTE'
      Size = 2
    end
    object QMovAplicaCCCompraAPLICA_CLASECPBTE: TStringField
      FieldName = 'APLICA_CLASECPBTE'
      Size = 2
    end
    object QMovAplicaCCCompraAPLICA_NROCPBTE: TStringField
      FieldName = 'APLICA_NROCPBTE'
      Size = 13
    end
    object QMovAplicaCCCompraAPLICA_NETO: TFMTBCDField
      FieldName = 'APLICA_NETO'
      Precision = 15
      Size = 3
    end
    object QMovAplicaCCCompraDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object QMovAplicaCCCompraMUESTRAFECHACPBTE: TSQLTimeStampField
      FieldName = 'MUESTRAFECHACPBTE'
      ProviderFlags = []
    end
    object QMovAplicaCCCompraMUESTRATOTALFACTURA: TFMTBCDField
      FieldName = 'MUESTRATOTALFACTURA'
      ProviderFlags = []
      Precision = 15
      Size = 3
    end
    object QMovAplicaCCCompraCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QMovAplicaCCCompraAPLICA_IVA: TFMTBCDField
      FieldName = 'APLICA_IVA'
      Required = True
      Precision = 15
      Size = 3
    end
  end
  object QMovCCCompra: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select m.*,m.saldo as MuestraAPagar,'
      
        '( select g.id_grupo from mov_ctacte_comp_grupo ( m.id_movcccompr' +
        'a ) g ) as Grupo,'
      
        '( select g2.fiscal from mov_ctacte_comp_grupo ( m.id_movcccompra' +
        ' ) g2 ) as fiscal'
      'from movcccompra M'
      'where (m.proveedor=:Codigo) and (m.Saldo>0) order by '
      'm.fechacompra,m.nrocpbte')
    SQLConnection = SQLConectionMain
    Left = 716
    Top = 111
    object QMovCCCompraID_MOVCCCOMPRA: TIntegerField
      FieldName = 'ID_MOVCCCOMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovCCCompraID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Required = True
    end
    object QMovCCCompraPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 6
    end
    object QMovCCCompraFECHACOMPRA: TSQLTimeStampField
      FieldName = 'FECHACOMPRA'
    end
    object QMovCCCompraFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
    end
    object QMovCCCompraTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object QMovCCCompraCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QMovCCCompraNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QMovCCCompraDEBE: TFMTBCDField
      FieldName = 'DEBE'
      Precision = 15
      Size = 3
    end
    object QMovCCCompraHABER: TFMTBCDField
      FieldName = 'HABER'
      Precision = 15
      Size = 3
    end
    object QMovCCCompraSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Precision = 15
      Size = 3
    end
    object QMovCCCompraDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object QMovCCCompraMUESTRAAPAGAR: TFMTBCDField
      FieldName = 'MUESTRAAPAGAR'
      ProviderFlags = []
      Precision = 15
      Size = 3
    end
    object QMovCCCompraGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object QMovCCCompraFISCAL: TStringField
      FieldName = 'FISCAL'
      Size = 1
    end
  end
  object QEgresoCajaDetalle: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select ed.*, r.detalle as MuestraRubro,ct.Detalle as MuestraCuen' +
        'ta from egr_caja_detalle ed'
      'left join gastos_rubros r on r.codigo=ed.rubrogasto'
      
        'left join gastos_cuentas ct on ct.codigo=ed.codigogasto and ed.r' +
        'ubrogasto=ct.codigo_rubro'
      'where ed.id_cpbte=:id')
    SQLConnection = SQLConectionMain
    Left = 712
    Top = 160
    object QEgresoCajaDetalleID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QEgresoCajaDetalleID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QEgresoCajaDetalleTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 4
    end
    object QEgresoCajaDetalleCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 4
    end
    object QEgresoCajaDetalleNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QEgresoCajaDetalleFECHACPBTE: TSQLTimeStampField
      FieldName = 'FECHACPBTE'
    end
    object QEgresoCajaDetalleFECHAGASTO: TSQLTimeStampField
      FieldName = 'FECHAGASTO'
    end
    object QEgresoCajaDetalleRUBROGASTO: TStringField
      FieldName = 'RUBROGASTO'
      Size = 3
    end
    object QEgresoCajaDetalleCODIGOGASTO: TStringField
      FieldName = 'CODIGOGASTO'
      Size = 6
    end
    object QEgresoCajaDetalleDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 100
    end
    object QEgresoCajaDetalleIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      Precision = 15
      Size = 3
    end
    object QEgresoCajaDetalleSUCURSALVENTA: TIntegerField
      FieldName = 'SUCURSALVENTA'
    end
    object QEgresoCajaDetalleMUESTRARUBRO: TStringField
      FieldName = 'MUESTRARUBRO'
      ProviderFlags = []
      Size = 50
    end
    object QEgresoCajaDetalleMUESTRACUENTA: TStringField
      FieldName = 'MUESTRACUENTA'
      ProviderFlags = []
      Size = 50
    end
  end
  object QEgresoCaja: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Tipo'
        ParamType = ptInput
      end>
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
    SQLConnection = SQLConectionMain
    Left = 713
    Top = 212
    object QEgresoCajaID_EGRESO: TIntegerField
      FieldName = 'ID_EGRESO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QEgresoCajaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object QEgresoCajaCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 4
    end
    object QEgresoCajaLETRA: TStringField
      FieldName = 'LETRA'
      Required = True
      Size = 1
    end
    object QEgresoCajaSUC: TStringField
      FieldName = 'SUC'
      Required = True
      Size = 4
    end
    object QEgresoCajaNUMERO: TStringField
      FieldName = 'NUMERO'
      Required = True
      Size = 8
    end
    object QEgresoCajaSUCURSALVENTA: TIntegerField
      FieldName = 'SUCURSALVENTA'
      Required = True
    end
    object QEgresoCajaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object QEgresoCajaCODIGO_GASTO: TStringField
      FieldName = 'CODIGO_GASTO'
      Size = 6
    end
    object QEgresoCajaRUBRO_GASTO: TStringField
      FieldName = 'RUBRO_GASTO'
      Size = 3
    end
    object QEgresoCajaIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      Precision = 15
      Size = 3
    end
    object QEgresoCajaDETALLE2: TStringField
      FieldName = 'DETALLE'
      Size = 100
    end
    object QEgresoCajaNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object QEgresoCajaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object QEgresoCajaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object QEgresoCajaFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object QEgresoCajaMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object QEgresoCajaMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object QEgresoCajaID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
    end
    object QEgresoCajaNUMERO_OPERACION: TStringField
      FieldName = 'NUMERO_OPERACION'
      Size = 8
    end
  end
  object QObras: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from obras where codigo=:codigo')
    SQLConnection = SQLConectionMain
    Left = 714
    Top = 271
    object QObrasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QObrasDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 100
    end
    object QObrasFEHCHAINCIO: TSQLTimeStampField
      FieldName = 'FEHCHAINCIO'
      Required = True
    end
    object QObrasFECHAFINAL: TSQLTimeStampField
      FieldName = 'FECHAFINAL'
    end
    object QObrasESTADO: TStringField
      FieldName = 'ESTADO'
      Required = True
      Size = 1
    end
    object QObrasRESPONSABLE: TStringField
      FieldName = 'RESPONSABLE'
      Size = 60
    end
    object QObrasDIREECION: TStringField
      FieldName = 'DIREECION'
      Size = 60
    end
    object QObrasLISTAPRECIOS: TIntegerField
      FieldName = 'LISTAPRECIOS'
      Required = True
    end
  end
  object QProvincia: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from provincia'
      'where id_pro=:id')
    SQLConnection = SQLConectionMain
    Left = 784
    Top = 332
    object QProvinciaID_PRO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_PRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QProvinciaNOMBRE: TStringField
      DisplayWidth = 20
      FieldName = 'NOMBRE'
    end
  end
  object QAnulacionOPago: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
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
    SQLConnection = SQLConectionMain
    Left = 800
    Top = 119
    object QAnulacionOPagoID_ANULACION: TIntegerField
      FieldName = 'ID_ANULACION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAnulacionOPagoTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 4
    end
    object QAnulacionOPagoCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 4
    end
    object QAnulacionOPagoNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object QAnulacionOPagoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object QAnulacionOPagoLETRA: TStringField
      FieldName = 'LETRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QAnulacionOPagoSUC: TStringField
      FieldName = 'SUC'
      Required = True
      Size = 4
    end
    object QAnulacionOPagoNUMERO: TStringField
      FieldName = 'NUMERO'
      Required = True
      Size = 8
    end
    object QAnulacionOPagoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object QAnulacionOPagoRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object QAnulacionOPagoCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object QAnulacionOPagoLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object QAnulacionOPagoTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
    end
    object QAnulacionOPagoCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object QAnulacionOPagoFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object QAnulacionOPagoTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 15
      Size = 3
    end
    object QAnulacionOPagoOBSERVACIONES1: TStringField
      FieldName = 'OBSERVACIONES1'
      Size = 60
    end
    object QAnulacionOPagoOBSERVACIONES2: TStringField
      FieldName = 'OBSERVACIONES2'
      Size = 60
    end
    object QAnulacionOPagoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
    end
    object QAnulacionOPagoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object QAnulacionOPagoMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object QAnulacionOPagoMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object QAnulacionOPagoID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
    end
  end
  object QComprobantes: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select c.*, cc.denominacion as MuestraDenominacion from comproba' +
        'ntes c '
      'left join comprobantes cc on cc.id_comprobante=c.toma_nro_de'
      'where c.id_comprobante=:id')
    SQLConnection = SQLConectionMain
    Left = 1060
    Top = 712
    object QComprobantesID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QComprobantesTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QComprobantesCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object QComprobantesDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Size = 15
    end
    object QComprobantesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object QComprobantesLETRA: TStringField
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object QComprobantesPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Size = 4
    end
    object QComprobantesNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object QComprobantesNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object QComprobantesTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
    end
    object QComprobantesAFECTA_IVA: TStringField
      FieldName = 'AFECTA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesCOMPRA_VENTA: TStringField
      FieldName = 'COMPRA_VENTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesCOPIAS: TIntegerField
      FieldName = 'COPIAS'
    end
    object QComprobantesREPORTE: TStringField
      FieldName = 'REPORTE'
      Size = 100
    end
    object QComprobantesIMPRIME: TStringField
      FieldName = 'IMPRIME'
      FixedChar = True
      Size = 1
    end
    object QComprobantesFISCAL: TStringField
      FieldName = 'FISCAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesNOMBREIMPRESORA: TStringField
      FieldName = 'NOMBREIMPRESORA'
      Size = 15
    end
    object QComprobantesPENDIENTEIMPRESION: TStringField
      FieldName = 'PENDIENTEIMPRESION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesLINEAS_DETALLE: TSmallintField
      FieldName = 'LINEAS_DETALLE'
      Required = True
    end
    object QComprobantesCALCULA_IVA_ARTICULOS: TStringField
      FieldName = 'CALCULA_IVA_ARTICULOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesDEFECTO: TStringField
      FieldName = 'DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesMUESTRADENOMINACION: TStringField
      FieldName = 'MUESTRADENOMINACION'
      ProviderFlags = []
      Size = 15
    end
    object QComprobantesCAJA_DEFECTO: TIntegerField
      FieldName = 'CAJA_DEFECTO'
      Required = True
    end
    object QComprobantesDIVIDE_IVA: TStringField
      FieldName = 'DIVIDE_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesFACTURAELECTRONICA: TStringField
      FieldName = 'FACTURAELECTRONICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesEN_USO: TStringField
      FieldName = 'EN_USO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesCODIGO_AFIP: TStringField
      FieldName = 'CODIGO_AFIP'
      Size = 3
    end
    object QComprobantesID_AJUSTECC: TIntegerField
      FieldName = 'ID_AJUSTECC'
    end
    object QComprobantesCENTRO_COSTO: TIntegerField
      FieldName = 'CENTRO_COSTO'
    end
    object QComprobantesDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object QComprobantesULTIMONRO: TIntegerField
      FieldName = 'ULTIMONRO'
    end
    object QComprobantesEDITAR_NRO: TStringField
      FieldName = 'EDITAR_NRO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesCONTROLADOR_NROREG: TStringField
      FieldName = 'CONTROLADOR_NROREG'
    end
  end
  object QListaPrecioPorDefecto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select id,f_pago from  listaprecioespecialcab where pordefecto='#39 +
        'S'#39)
    SQLConnection = SQLConectionMain
    Left = 816
    Top = 208
    object QListaPrecioPorDefectoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QListaPrecioPorDefectoF_PAGO: TIntegerField
      FieldName = 'F_PAGO'
    end
  end
  object QPrimeraListaPrecios: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select Min(id) from  listaprecioespecialcab where'
      ' uso_administrador='#39'N'#39)
    SQLConnection = SQLConectionMain
    Left = 808
    Top = 264
  end
  object QJuridiccionPorSucursal: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select j.*,l.id_juridicion as MuestraJuridiccion from juridiccio' +
        'n_excepciones j'
      
        'left join juridicion_localidad l on l.id=j.id_juridicion_localid' +
        'ad'
      'where j.sucursal=:sucursal')
    SQLConnection = SQLConectionMain
    Left = 176
    Top = 520
    object QJuridiccionPorSucursalSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
    end
    object QJuridiccionPorSucursalID_JURIDICION_LOCALIDAD: TIntegerField
      FieldName = 'ID_JURIDICION_LOCALIDAD'
      Required = True
    end
    object QJuridiccionPorSucursalMUESTRAJURIDICCION: TIntegerField
      FieldName = 'MUESTRAJURIDICCION'
    end
  end
  object QOrdenTrabajoCab: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'TipoCpbte'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
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
      '  rm.nrocpbte as MuestraNroAjuste'
      'from OrdenTrabajoCab Ot'
      '  left join clientes cli on cli.codigo=ot.codigo'
      
        '  left join comprobantes cpfc on cpfc.id_comprobante=ot.factura_' +
        'id_comprobante'
      '  left join F_Pago Fp on Fp.Codigo=Ot.CondicionVta'
      '  left join personal v on v.codigo=Ot.responsable_ot'
      '  left join personal v2 on v2.codigo=Ot.responsable_turno'
      '  left join Depositos De  on De.Id=Ot.Deposito'
      '  left join Sucursal Su  on Su.Codigo=Ot.Sucursal'
      '  left join inscripcion ins on ins.codigo=Ot.TipoIva'
      
        '  left join LdrCliente Ldr on ((Ldr.Codigo_Cliente=Ot.Codigo) an' +
        'd (Ldr.Codigo_Ldr=Ot.Ldr))'
      '  left join rtomercacab rm on rm.id_rto=ot.id_ajuste_stock'
      
        '  left join comprobantes cp on cp.clase_comprob=Ot.ClaseCpbte an' +
        'd'
      '            cp.letra=Ot.LetraOt and'
      '            cp.sucursal=Ot.sucursal and'
      '            cp.tipo_comprob=Ot.tipocpbte and'
      '            cp.Compra_venta='#39'V'#39
      'where Ot.TipoCpbte= :TipoCpbte and Ot.id_Ot=:id'
      ''
      ''
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    SQLConnection = SQLConectionMain
    Left = 992
    Top = 365
    object QOrdenTrabajoCabID_OT: TIntegerField
      FieldName = 'ID_OT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOrdenTrabajoCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QOrdenTrabajoCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QOrdenTrabajoCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QOrdenTrabajoCabDESCRIPCION: TMemoField
      FieldName = 'DESCRIPCION'
      BlobType = ftMemo
      Size = 1
    end
    object QOrdenTrabajoCabPRODUCTO: TIntegerField
      FieldName = 'PRODUCTO'
    end
    object QOrdenTrabajoCabLETRAOT: TStringField
      FieldName = 'LETRAOT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOrdenTrabajoCabSUCOT: TStringField
      FieldName = 'SUCOT'
      Size = 4
    end
    object QOrdenTrabajoCabNUMEROOT: TStringField
      FieldName = 'NUMEROOT'
      Size = 8
    end
    object QOrdenTrabajoCabFECHAINICIO: TSQLTimeStampField
      FieldName = 'FECHAINICIO'
      Required = True
    end
    object QOrdenTrabajoCabFECHAESTIMADA: TSQLTimeStampField
      FieldName = 'FECHAESTIMADA'
    end
    object QOrdenTrabajoCabFECHAFINAL: TSQLTimeStampField
      FieldName = 'FECHAFINAL'
    end
    object QOrdenTrabajoCabCONDICIONVTA: TIntegerField
      FieldName = 'CONDICIONVTA'
    end
    object QOrdenTrabajoCabANULADO: TStringField
      FieldName = 'ANULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOrdenTrabajoCabNRORTO: TStringField
      FieldName = 'NRORTO'
    end
    object QOrdenTrabajoCabNETOGRAV1: TFMTBCDField
      FieldName = 'NETOGRAV1'
      Precision = 15
      Size = 3
    end
    object QOrdenTrabajoCabNETOGRAV2: TFMTBCDField
      FieldName = 'NETOGRAV2'
      Precision = 15
      Size = 3
    end
    object QOrdenTrabajoCabDSTO: TFMTBCDField
      FieldName = 'DSTO'
      Precision = 15
      Size = 3
    end
    object QOrdenTrabajoCabDSTOIMPORTE: TFMTBCDField
      FieldName = 'DSTOIMPORTE'
      Precision = 15
      Size = 3
    end
    object QOrdenTrabajoCabNETOEXEN1: TFMTBCDField
      FieldName = 'NETOEXEN1'
      Precision = 15
      Size = 3
    end
    object QOrdenTrabajoCabNETOEXEN2: TFMTBCDField
      FieldName = 'NETOEXEN2'
      Precision = 15
      Size = 3
    end
    object QOrdenTrabajoCabTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 15
      Size = 3
    end
    object QOrdenTrabajoCabDEBE: TFMTBCDField
      FieldName = 'DEBE'
      Precision = 15
      Size = 3
    end
    object QOrdenTrabajoCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOrdenTrabajoCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
    end
    object QOrdenTrabajoCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object QOrdenTrabajoCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      FixedChar = True
      Size = 1
    end
    object QOrdenTrabajoCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      FixedChar = True
      Size = 1
    end
    object QOrdenTrabajoCabRESPONSABLE_OT: TStringField
      FieldName = 'RESPONSABLE_OT'
      Size = 6
    end
    object QOrdenTrabajoCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object QOrdenTrabajoCabESTADO: TIntegerField
      FieldName = 'ESTADO'
      Required = True
    end
    object QOrdenTrabajoCabPRIORIDAD_INICIAL: TSmallintField
      FieldName = 'PRIORIDAD_INICIAL'
    end
    object QOrdenTrabajoCabDELTA_PRIORIDAD: TSmallintField
      FieldName = 'DELTA_PRIORIDAD'
    end
    object QOrdenTrabajoCabPRIORIDAD: TSmallintField
      FieldName = 'PRIORIDAD'
    end
    object QOrdenTrabajoCabENTREGADO: TStringField
      FieldName = 'ENTREGADO'
      FixedChar = True
      Size = 1
    end
    object QOrdenTrabajoCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object QOrdenTrabajoCabLDR: TIntegerField
      FieldName = 'LDR'
    end
    object QOrdenTrabajoCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object QOrdenTrabajoCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object QOrdenTrabajoCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object QOrdenTrabajoCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
    end
    object QOrdenTrabajoCabCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object QOrdenTrabajoCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object QOrdenTrabajoCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object QOrdenTrabajoCabZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object QOrdenTrabajoCabFACTURA_ID_COMPROBANTE: TIntegerField
      FieldName = 'FACTURA_ID_COMPROBANTE'
    end
    object QOrdenTrabajoCabFACTURANRO: TStringField
      FieldName = 'FACTURANRO'
      Size = 13
    end
    object QOrdenTrabajoCabFACTURA_ID: TIntegerField
      FieldName = 'FACTURA_ID'
    end
    object QOrdenTrabajoCabFACTURA_TIPO: TStringField
      FieldName = 'FACTURA_TIPO'
      Size = 2
    end
    object QOrdenTrabajoCabFACTURA_CLASE: TStringField
      FieldName = 'FACTURA_CLASE'
      Size = 2
    end
    object QOrdenTrabajoCabFECHAFACTURA: TSQLTimeStampField
      FieldName = 'FECHAFACTURA'
    end
    object QOrdenTrabajoCabRESPONSABLE_TURNO: TStringField
      FieldName = 'RESPONSABLE_TURNO'
      Size = 6
    end
    object QOrdenTrabajoCabARCHIVADA: TStringField
      FieldName = 'ARCHIVADA'
      FixedChar = True
      Size = 1
    end
    object QOrdenTrabajoCabRECLAMADA: TStringField
      FieldName = 'RECLAMADA'
      FixedChar = True
      Size = 1
    end
    object QOrdenTrabajoCabTOTALHORAS: TSQLTimeStampField
      FieldName = 'TOTALHORAS'
    end
    object QOrdenTrabajoCabPUNTOS: TFMTBCDField
      FieldName = 'PUNTOS'
      Precision = 15
      Size = 3
    end
    object QOrdenTrabajoCabOBSERVACION1: TMemoField
      FieldName = 'OBSERVACION1'
      BlobType = ftMemo
      Size = 1
    end
    object QOrdenTrabajoCabLISTAPRECIO: TIntegerField
      FieldName = 'LISTAPRECIO'
    end
    object QOrdenTrabajoCabMAILENVIADO: TStringField
      FieldName = 'MAILENVIADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOrdenTrabajoCabSENIA: TFMTBCDField
      FieldName = 'SENIA'
      Required = True
      Precision = 15
      Size = 3
    end
    object QOrdenTrabajoCabMUESTRACONDVENTA: TStringField
      FieldName = 'MUESTRACONDVENTA'
      ProviderFlags = []
    end
    object QOrdenTrabajoCabMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      ProviderFlags = []
      Size = 25
    end
    object QOrdenTrabajoCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object QOrdenTrabajoCabMUESTRALDR: TStringField
      FieldName = 'MUESTRALDR'
      ProviderFlags = []
      Size = 35
    end
    object QOrdenTrabajoCabMUESTRAIVA: TStringField
      FieldName = 'MUESTRAIVA'
      ProviderFlags = []
      Size = 15
    end
    object QOrdenTrabajoCabMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object QOrdenTrabajoCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
    end
    object QOrdenTrabajoCabMUESTRARESPONSABLEOT: TStringField
      FieldName = 'MUESTRARESPONSABLEOT'
      ProviderFlags = []
      Size = 50
    end
    object QOrdenTrabajoCabMUESTRARESPONSABLETURNO: TStringField
      FieldName = 'MUESTRARESPONSABLETURNO'
      ProviderFlags = []
      Size = 50
    end
    object QOrdenTrabajoCabMUESTRATIPOFACTURA: TStringField
      FieldName = 'MUESTRATIPOFACTURA'
      ProviderFlags = []
      Size = 15
    end
    object QOrdenTrabajoCabMUESTRATELEFONO1: TStringField
      FieldName = 'MUESTRATELEFONO1'
      ProviderFlags = []
      Size = 10
    end
    object QOrdenTrabajoCabMUESTRATELEFONO2: TStringField
      FieldName = 'MUESTRATELEFONO2'
      ProviderFlags = []
      Size = 10
    end
    object QOrdenTrabajoCabOT_ANTERIOR_ID: TIntegerField
      FieldName = 'OT_ANTERIOR_ID'
      Required = True
    end
    object QOrdenTrabajoCabOT_ANTERIOR_NROCPBTE: TStringField
      FieldName = 'OT_ANTERIOR_NROCPBTE'
      Size = 13
    end
    object QOrdenTrabajoCabTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Size = 10
    end
    object QOrdenTrabajoCabTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Size = 10
    end
    object QOrdenTrabajoCabCORREOELECTRONICO: TStringField
      FieldName = 'CORREOELECTRONICO'
      Size = 100
    end
    object QOrdenTrabajoCabMUESTRACELULAR: TStringField
      FieldName = 'MUESTRACELULAR'
      ProviderFlags = []
      Size = 11
    end
    object QOrdenTrabajoCabMUESTRANRODOC: TStringField
      FieldName = 'MUESTRANRODOC'
      ProviderFlags = []
      Size = 15
    end
    object QOrdenTrabajoCabDESCRIPCIONPRODUCTO: TStringField
      FieldName = 'DESCRIPCIONPRODUCTO'
      Required = True
      Size = 100
    end
    object QOrdenTrabajoCabIDENTIFICADORPRODUCTO: TStringField
      FieldName = 'IDENTIFICADORPRODUCTO'
      Required = True
      Size = 50
    end
    object QOrdenTrabajoCabMOTIVO_OTRABAJO: TIntegerField
      FieldName = 'MOTIVO_OTRABAJO'
      Required = True
    end
    object QOrdenTrabajoCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object QOrdenTrabajoCabFECHAESTIMADAFIN: TSQLTimeStampField
      FieldName = 'FECHAESTIMADAFIN'
    end
    object QOrdenTrabajoCabTELEFONO_CELULAR: TStringField
      FieldName = 'TELEFONO_CELULAR'
      Size = 11
    end
    object QOrdenTrabajoCabID_AJUSTE_STOCK: TIntegerField
      FieldName = 'ID_AJUSTE_STOCK'
      Required = True
    end
    object QOrdenTrabajoCabMUESTRANROAJUSTE: TStringField
      FieldName = 'MUESTRANROAJUSTE'
      ProviderFlags = []
      Size = 13
    end
    object QOrdenTrabajoCabOBSERVACION2: TMemoField
      FieldName = 'OBSERVACION2'
      BlobType = ftMemo
      Size = 1
    end
    object QOrdenTrabajoCabPROBLEMA: TMemoField
      FieldName = 'PROBLEMA'
      BlobType = ftMemo
      Size = 1
    end
  end
  object QOrdenTrabajoDet: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * from ordentrabajoDet where Id_CabOt= :id ')
    SQLConnection = SQLConectionMain
    Left = 176
    Top = 568
    object QOrdenTrabajoDetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOrdenTrabajoDetID_CABOT: TIntegerField
      FieldName = 'ID_CABOT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOrdenTrabajoDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QOrdenTrabajoDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QOrdenTrabajoDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QOrdenTrabajoDetRENGLON: TFMTBCDField
      FieldName = 'RENGLON'
      Precision = 15
      Size = 3
    end
    object QOrdenTrabajoDetFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Required = True
    end
    object QOrdenTrabajoDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object QOrdenTrabajoDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object QOrdenTrabajoDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object QOrdenTrabajoDetCANTIDAD: TFMTBCDField
      FieldName = 'CANTIDAD'
      Precision = 15
      Size = 3
    end
    object QOrdenTrabajoDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOrdenTrabajoDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOrdenTrabajoDetIVA_TASA: TFMTBCDField
      FieldName = 'IVA_TASA'
      Precision = 15
      Size = 3
    end
    object QOrdenTrabajoDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Required = True
    end
    object QOrdenTrabajoDetIVA_SOBRETASA: TFMTBCDField
      FieldName = 'IVA_SOBRETASA'
      Precision = 15
      Size = 3
    end
    object QOrdenTrabajoDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Required = True
    end
    object QOrdenTrabajoDetDESCUENTO: TFMTBCDField
      FieldName = 'DESCUENTO'
      Precision = 15
      Size = 3
    end
    object QOrdenTrabajoDetTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 15
      Size = 3
    end
    object QOrdenTrabajoDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object QOrdenTrabajoDetMARGEN: TFMTBCDField
      FieldName = 'MARGEN'
      Precision = 15
      Size = 3
    end
    object QOrdenTrabajoDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QOrdenTrabajoDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      FixedChar = True
      Size = 1
    end
    object QOrdenTrabajoDetGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      FixedChar = True
      Size = 1
    end
    object QOrdenTrabajoDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
    end
    object QOrdenTrabajoDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
    end
    object QOrdenTrabajoDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
    end
    object QOrdenTrabajoDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
    end
    object QOrdenTrabajoDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
    end
    object QOrdenTrabajoDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
    end
    object QOrdenTrabajoDetCOTIZACION: TFMTBCDField
      FieldName = 'COTIZACION'
      Required = True
      Precision = 15
      Size = 3
    end
    object QOrdenTrabajoDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Required = True
    end
    object QOrdenTrabajoDetCON_NROSERIE: TStringField
      FieldName = 'CON_NROSERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QImpuestoOrdenTabajo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * from ordentrabajoImpuesto Where Id_OtCab=:id')
    SQLConnection = SQLConectionMain
    Left = 696
    Top = 457
    object QImpuestoOrdenTabajoID_OTCAB: TIntegerField
      FieldName = 'ID_OTCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QImpuestoOrdenTabajoID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QImpuestoOrdenTabajoCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
      Required = True
    end
    object QImpuestoOrdenTabajoDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object QImpuestoOrdenTabajoNETO: TFMTBCDField
      FieldName = 'NETO'
      Precision = 15
      Size = 3
    end
    object QImpuestoOrdenTabajoTASA: TFMTBCDField
      FieldName = 'TASA'
      Precision = 15
      Size = 3
    end
    object QImpuestoOrdenTabajoIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      Precision = 15
      Size = 3
    end
  end
  object QOrdenTrabajoMovimientos: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from ordentrabajomov where Id_otCab=:id')
    SQLConnection = SQLConectionMain
    Left = 464
    Top = 568
    object QOrdenTrabajoMovimientosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOrdenTrabajoMovimientosID_OTCAB: TIntegerField
      FieldName = 'ID_OTCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOrdenTrabajoMovimientosFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QOrdenTrabajoMovimientosDETALLE: TMemoField
      FieldName = 'DETALLE'
      BlobType = ftMemo
      Size = 1
    end
    object QOrdenTrabajoMovimientosHORAINICIO: TSQLTimeStampField
      FieldName = 'HORAINICIO'
    end
    object QOrdenTrabajoMovimientosHORAFINAL: TSQLTimeStampField
      FieldName = 'HORAFINAL'
    end
    object QOrdenTrabajoMovimientosPRUDUCTO: TIntegerField
      FieldName = 'PRUDUCTO'
    end
    object QOrdenTrabajoMovimientosTOTALTIEMPO: TSQLTimeStampField
      FieldName = 'TOTALTIEMPO'
    end
    object QOrdenTrabajoMovimientosCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 6
    end
    object QOrdenTrabajoMovimientosOPERARIO: TStringField
      FieldName = 'OPERARIO'
      Size = 6
    end
    object QOrdenTrabajoMovimientosMAILENVIADO: TStringField
      FieldName = 'MAILENVIADO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QProductos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
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
    SQLConnection = SQLConectionMain
    Left = 572
    Top = 569
    object QProductosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QProductosID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
    end
    object QProductosIDENTIFICADOR: TStringField
      FieldName = 'IDENTIFICADOR'
      Size = 50
    end
    object QProductosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
    object QProductosPROPIETARIO: TStringField
      FieldName = 'PROPIETARIO'
      Size = 6
    end
    object QProductosOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object QProductosMUESTRACATEGORIA: TStringField
      FieldName = 'MUESTRACATEGORIA'
      ProviderFlags = []
      Size = 50
    end
    object QProductosMUESTRAPROPIETARIO: TStringField
      FieldName = 'MUESTRAPROPIETARIO'
      ProviderFlags = []
      Size = 35
    end
    object QProductosMUESTRAMARCA: TStringField
      FieldName = 'MUESTRAMARCA'
      Size = 25
    end
    object QProductosMARCA: TStringField
      FieldName = 'MARCA'
      Size = 5
    end
    object QProductosMODELO: TStringField
      FieldName = 'MODELO'
      Size = 50
    end
    object QProductosPASSWORD: TStringField
      FieldName = 'PASSWORD'
      Size = 30
    end
    object QProductosPATRON: TStringField
      FieldName = 'PATRON'
      Size = 100
    end
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
    Left = 928
    Top = 56
    object CDSPrecioXCantCANTIDAD: TFMTBCDField
      DisplayLabel = 'Cant.'
      FieldName = 'CANTIDAD'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSPrecioXCantPRECIO: TFloatField
      DisplayLabel = 'Pr.Final'
      FieldName = 'PRECIO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSPrecioXCantPRECIO_SINIVA: TFloatField
      DisplayLabel = 'Pr.S/Iva'
      FieldName = 'PRECIO_SINIVA'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
  object DSPPrecioXCant: TDataSetProvider
    DataSet = QPrecioXCant
    Left = 872
    Top = 8
  end
  object QPrecioXCant: TSQLQuery
    MaxBlobSize = -1
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
    SQLConnection = SQLConectionMain
    Left = 936
    Top = 8
  end
  object DSPrecioXCant: TDataSource
    DataSet = CDSPrecioXCant
    Left = 872
    Top = 56
  end
  object QCotizacionCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Cliente'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'moneda'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select cc.cotizacion from clientes_cotizacion_moneda cc'
      'where cc.cliente = :Cliente and'
      'cc.moneda = :moneda')
    SQLConnection = SQLConectionMain
    Left = 1048
    Top = 184
    object QCotizacionClienteCOTIZACION: TFMTBCDField
      FieldName = 'COTIZACION'
      Required = True
      Precision = 15
      Size = 3
    end
  end
  object QListaDefectoSuc: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select l.lista,l.sucursal from lprecio_sucursal l'
      'where l.sucursal=:sucursal')
    SQLConnection = SQLConectionMain
    Left = 896
    Top = 104
    object QListaDefectoSucLISTA: TIntegerField
      FieldName = 'LISTA'
      Required = True
    end
    object QListaDefectoSucSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
    end
  end
  object QRevNroRto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'update rtocab r set r.nrofact=(select f.nrocpbte from fcvtacab f' +
        ' where f.id_fc=r.idfactura)'
      'where Not(r.idfactura is null)')
    SQLConnection = SQLConectionMain
    Left = 1032
    Top = 264
  end
  object QClienteContrato: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT C.* '
      'FROM Clientes_contrato C'
      'where (c.codigo=:codigo)')
    SQLConnection = SQLConectionMain
    Left = 32
    Top = 303
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
    object QClienteContratoCOSTO_INICAL: TFMTBCDField
      FieldName = 'COSTO_INICAL'
      Precision = 15
      Size = 3
    end
    object QClienteContratoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
  end
  object QClientesAnexos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from clientes_anexos Where Cliente=:Codigo')
    SQLConnection = SQLConectionMain
    Left = 328
    Top = 304
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
  object SPAplicarLibroIva: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Precision = 1
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = SQLConectionMain
    StoredProcName = 'APLICAR_LIBRO_IVA'
    Left = 808
    Top = 600
  end
  object QMov_Carnes: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select dc.* from fcvtadet_carnes dc where dc.id_det = :id')
    SQLConnection = SQLConectionMain
    Left = 928
    Top = 253
    object QMov_CarnesID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMov_CarnesID_DET: TIntegerField
      FieldName = 'ID_DET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMov_CarnesID_CAB: TIntegerField
      FieldName = 'ID_CAB'
    end
    object QMov_CarnesCLASIFICACION: TStringField
      FieldName = 'CLASIFICACION'
      Size = 2
    end
    object QMov_CarnesNRO_TROPA: TStringField
      FieldName = 'NRO_TROPA'
      Size = 6
    end
    object QMov_CarnesT_KILOS: TIntegerField
      FieldName = 'T_KILOS'
      Required = True
    end
    object QMov_CarnesT_MEDIAS: TIntegerField
      FieldName = 'T_MEDIAS'
      Required = True
    end
    object QMov_CarnesMEDIA_1: TIntegerField
      FieldName = 'MEDIA_1'
    end
    object QMov_CarnesMEDIA_2: TIntegerField
      FieldName = 'MEDIA_2'
    end
    object QMov_CarnesMEDIA_3: TIntegerField
      FieldName = 'MEDIA_3'
    end
    object QMov_CarnesMEDIA_4: TIntegerField
      FieldName = 'MEDIA_4'
    end
    object QMov_CarnesMEDIA_5: TIntegerField
      FieldName = 'MEDIA_5'
    end
    object QMov_CarnesMEDIA_6: TIntegerField
      FieldName = 'MEDIA_6'
    end
    object QMov_CarnesMEDIA_7: TIntegerField
      FieldName = 'MEDIA_7'
    end
    object QMov_CarnesMEDIA_8: TIntegerField
      FieldName = 'MEDIA_8'
    end
  end
  object QBuscaNroFac_borrar: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Letra'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'sucfac'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'numfac'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo2'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select f.id_fc,f.codigo,f.nombre,f.fechavta,f.total from fcvtaca' +
        'b f'
      'where f.letrafac=:Letra and'
      '      f.sucfac=:sucfac and'
      '      f.numerofac=:numfac and'
      '      f.sucursal=:sucursal and      '
      '      (f.tipocpbte=:tipo or f.tipocpbte=:tipo2  ) ')
    SQLConnection = SQLConectionMain
    Left = 1050
    Top = 49
    object IntegerField1: TIntegerField
      FieldName = 'ID_FC'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object StringField2: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Required = True
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'TOTAL'
      Required = True
      Precision = 15
      Size = 3
    end
  end
  object QBuscaFac_x_Nro: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Letra'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'sucfac'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'numfac'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo2'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select f.id_fc,f.codigo,f.nombre,f.fechavta,f.total from fcvtaca' +
        'b f'
      'where f.letrafac=:Letra and'
      '           f.sucfac=:sucfac and'
      '           f.numerofac=:numfac and'
      '          (f.tipocpbte=:tipo or f.tipocpbte=:tipo2) ')
    SQLConnection = SQLConectionMain
    Left = 1050
    Top = 105
    object IntegerField2: TIntegerField
      FieldName = 'ID_FC'
      Required = True
    end
    object StringField5: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object StringField6: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object SQLTimeStampField3: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Required = True
    end
    object FMTBCDField3: TFMTBCDField
      FieldName = 'TOTAL'
      Required = True
      Precision = 15
      Size = 3
    end
  end
  object QCompPorTipoUsuario: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'compraventa'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DesglozaIva'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'usuario'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select cpbte.id_comprobante from comprobantes_usuarios c'
      
        'left join comprobantes cpbte on cpbte.id_comprobante=c.id_compro' +
        'bante  where'
      'cpbte.tipo_comprob=:tipo and'
      'cpbte.compra_venta=:compraventa and '
      'cpbte.Sucursal=:sucursal and '
      'cpbte.desgloza_iva=:DesglozaIva and '
      'c.id_usuario=:usuario and'
      'cpbte.afecta_iva='#39'S'#39
      'order by cpbte.id_comprobante asc')
    SQLConnection = SQLConectionMain
    Left = 544
    Top = 679
  end
  object DSPCompPorTipoUsuario: TDataSetProvider
    DataSet = QCompPorTipoUsuario
    Left = 648
    Top = 679
  end
  object CDSCompPorTipoUsuario: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'compraventa'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DesglozaIva'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'usuario'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCompPorTipoUsuario'
    Left = 776
    Top = 507
  end
  object QAbrir_CerrarCaja: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'estado'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_caja'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'update caja_cab cb set cb.estado = :estado where cb.id_caja = :i' +
        'd_caja')
    SQLConnection = SQLConectionMain
    Left = 984
    Top = 464
  end
  object QBuscaOP_PorFc: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select min(op.id) from ordenproduccion_cab op where op.id_fcvta=' +
        ':id')
    SQLConnection = SQLConectionMain
    Left = 907
    Top = 530
  end
  object spAgregarPedidoBorrador: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Precision = 8
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 45
        Name = 'DETALLE'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 8
        NumericScale = 2
        Name = 'CANTIDAD'
        ParamType = ptInput
      end>
    SQLConnection = SQLConectionMain
    StoredProcName = 'AGRE_BORRADOR_PEDIDO'
    Left = 984
    Top = 416
  end
  object QCodRipsa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select c.* from clientes_codripsa  c where c.codigo = :codigo')
    SQLConnection = SQLConectionMain
    Left = 988
    Top = 512
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
  object ADOConnection1: TADOConnection
    Left = 1048
    Top = 600
  end
  object QClientesGarantes: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from clientes_garantes Where codigoCliente=:Codigo')
    SQLConnection = SQLConectionMain
    Left = 251
    Top = 312
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
  object QCompLotes: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * from FCCOMP_LOTES where Id_det = :id ')
    SQLConnection = SQLConectionMain
    Left = 624
    Top = 247
    object QCompLotesID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCompLotesID_DET: TIntegerField
      FieldName = 'ID_DET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QCompLotesID_FC: TIntegerField
      FieldName = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QCompLotesCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 8
    end
    object QCompLotesLOTE: TStringField
      FieldName = 'LOTE'
      Size = 15
    end
    object QCompLotesCANTIDAD: TFMTBCDField
      FieldName = 'CANTIDAD'
      Precision = 15
      Size = 3
    end
    object QCompLotesFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QCompLotesFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
    end
    object QCompLotesDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object QCompLotesTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Size = 2
    end
    object QCompLotesID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      Required = True
    end
    object QCompLotesDESPACHO: TStringField
      FieldName = 'DESPACHO'
    end
  end
  object QVentaLote: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * from FCvta_LOTES where Id_det = :id ')
    SQLConnection = SQLConectionMain
    Left = 612
    Top = 12
    object QVentaLoteID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QVentaLoteID_DET: TIntegerField
      FieldName = 'ID_DET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QVentaLoteID_FC: TIntegerField
      FieldName = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QVentaLoteCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 8
    end
    object QVentaLoteLOTE: TStringField
      FieldName = 'LOTE'
      Size = 15
    end
    object QVentaLoteCANTIDAD: TFMTBCDField
      FieldName = 'CANTIDAD'
      Precision = 15
      Size = 3
    end
    object QVentaLoteFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QVentaLoteFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
    end
    object QVentaLoteDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object QVentaLoteTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Size = 2
    end
    object QVentaLoteID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      Required = True
    end
    object QVentaLoteDESPACHO: TStringField
      FieldName = 'DESPACHO'
    end
  end
  object QStockLote: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'idLote'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select s.* from stock_lotes_impo s where s.id = :idLote')
    SQLConnection = SQLConectionMain
    Left = 252
    Top = 464
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
    object QStockLoteCANTIDAD: TFMTBCDField
      FieldName = 'CANTIDAD'
      Precision = 15
      Size = 3
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
    object QStockLoteSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Required = True
      Precision = 15
      Size = 3
    end
  end
  object QAjustesLote: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'Select * from rtomerca_LOTES where Id_det = :id ')
    SQLConnection = SQLConectionMain
    Left = 328
    Top = 152
    object QAjustesLoteID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAjustesLoteID_DET: TIntegerField
      FieldName = 'ID_DET'
    end
    object QAjustesLoteID_FC: TIntegerField
      FieldName = 'ID_FC'
    end
    object QAjustesLoteID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      Required = True
    end
    object QAjustesLoteCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 8
    end
    object QAjustesLoteLOTE: TStringField
      FieldName = 'LOTE'
      Size = 15
    end
    object QAjustesLoteDESPACHO: TStringField
      FieldName = 'DESPACHO'
    end
    object QAjustesLoteCANTIDAD: TFMTBCDField
      FieldName = 'CANTIDAD'
      Precision = 15
      Size = 3
    end
    object QAjustesLoteFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QAjustesLoteFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
    end
    object QAjustesLoteDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object QAjustesLoteTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Size = 2
    end
  end
  object QExistencia: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'unidad'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'fisico'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'fisico'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'usuario'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select codigo_stk,detalle_stk,fisico,comprometido,fisico-comprom' +
        'etido-en_transito as Saldo,'
      'deposito_stk,en_transito,'
      
        'deposito_nombre,sec,ubic,fultajuste  from existencia_stk_unitari' +
        'o(:unidad,:codigo)'
      
        'where ((fisico-comprometido-en_transito <> :fisico ) or ( :fisic' +
        'o = 1 ))'
      
        'and  existencia_stk_unitario.deposito_stk in (select u.deposito ' +
        'from deposito_usuario u where u.id_usuario = :usuario)'
      'order by deposito_stk')
    SQLConnection = SQLConectionMain
    Left = 32
    Top = 598
    object QExistenciaCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Size = 8
    end
    object QExistenciaDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object QExistenciaFISICO: TFMTBCDField
      FieldName = 'FISICO'
      Precision = 15
      Size = 3
    end
    object QExistenciaCOMPROMETIDO: TFMTBCDField
      FieldName = 'COMPROMETIDO'
      Precision = 15
      Size = 3
    end
    object QExistenciaSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object QExistenciaDEPOSITO_STK: TIntegerField
      FieldName = 'DEPOSITO_STK'
    end
    object QExistenciaEN_TRANSITO: TFMTBCDField
      FieldName = 'EN_TRANSITO'
      Precision = 15
      Size = 3
    end
    object QExistenciaDEPOSITO_NOMBRE: TStringField
      FieldName = 'DEPOSITO_NOMBRE'
      Size = 25
    end
    object QExistenciaFULTAJUSTE: TSQLTimeStampField
      FieldName = 'FULTAJUSTE'
    end
    object QExistenciaSEC: TStringField
      DisplayLabel = 'Sec.'
      FieldName = 'SEC'
      Size = 2
    end
    object QExistenciaUBIC: TStringField
      DisplayLabel = 'Ubic.'
      FieldName = 'UBIC'
      Size = 3
    end
  end
  object QUpRto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'idfactura'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'numero'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update rtocab set idfactura=:idfactura, nrofact=:numero'
      'where id_rto=:id')
    SQLConnection = SQLConectionMain
    Left = 176
    Top = 624
  end
  object QRemitoTroqueles: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select t.id,t.id_rto,t.id_troquel,t.nro_troquel,t.fecha from rto' +
        '_troqueles t'
      'where t.id_rto = :id')
    SQLConnection = SQLConectionMain
    Left = 412
    Top = 650
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
  object QCompraTributos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select Ft.* from fccomptributo ft where Ft.id_fc=:id'
      ''
      ' ')
    SQLConnection = SQLConectionMain
    Left = 32
    Top = 648
    object QCompraTributosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCompraTributosID_FC: TIntegerField
      FieldName = 'ID_FC'
    end
    object QCompraTributosCODTRIBUTO: TIntegerField
      FieldName = 'CODTRIBUTO'
    end
    object QCompraTributosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 50
    end
    object QCompraTributosBASEIMPONIBLE: TFloatField
      FieldName = 'BASEIMPONIBLE'
      Required = True
    end
    object QCompraTributosALICUOTA: TFloatField
      FieldName = 'ALICUOTA'
      Required = True
    end
    object QCompraTributosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Required = True
    end
  end
  object QCompraGastos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select Ft.* from fccompgastos ft where Ft.id_fc=:id'
      ''
      ' ')
    SQLConnection = SQLConectionMain
    Left = 176
    Top = 696
    object QCompraGastosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCompraGastosID_FC: TIntegerField
      FieldName = 'ID_FC'
    end
    object QCompraGastosCODGASTO: TIntegerField
      FieldName = 'CODGASTO'
    end
    object QCompraGastosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 60
    end
    object QCompraGastosBASEIMPONIBLE: TFloatField
      FieldName = 'BASEIMPONIBLE'
    end
    object QCompraGastosALICUOTA: TFloatField
      FieldName = 'ALICUOTA'
    end
    object QCompraGastosALICUOTAIVA: TFloatField
      FieldName = 'ALICUOTAIVA'
    end
    object QCompraGastosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
  end
  object QComp_DET: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select Ft.* from FCCOMPNRODTE ft where Ft.id_fc=:id'
      ''
      ' ')
    SQLConnection = SQLConectionMain
    Left = 256
    Top = 696
    object QComp_DETID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QComp_DETID_FC: TIntegerField
      FieldName = 'ID_FC'
    end
    object QComp_DETNRO_DET: TStringField
      FieldName = 'NRO_DET'
    end
    object QComp_DETNRO_RENSPA: TStringField
      FieldName = 'NRO_RENSPA'
    end
  end
end

object DatosListaPrecioEspecial: TDatosListaPrecioEspecial
  OnDestroy = DataModuleDestroy
  Height = 651
  Width = 790
  object spBorrarClones: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'BORRAR_LISTAS_CLONADAS'
    Left = 488
    Top = 17
    ParamData = <
      item
        Position = 1
        Name = 'ID_LISTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object spControlRub_Sub: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'CONTROL_RUBRO_SUB_LISTAPRECIOS'
    Left = 490
    Top = 79
  end
  object spRecalcular: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'RECALCULAR_LISTAPRECIOS'
    Left = 594
    Top = 142
    ParamData = <
      item
        Position = 1
        Name = 'LISTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object spActualizaClones: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'ACTUALIZA_LISTA_CLONADA'
    Left = 480
    Top = 142
    ParamData = <
      item
        Position = 1
        Name = 'LISTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object spPasaOriginal: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'CONVERTIR_LISTACLONADA_ORIGINAL'
    Left = 600
    Top = 79
    ParamData = <
      item
        Position = 1
        Name = 'ID_LISTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object spActualizarCosto: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'TOOLS_PASA_COSTO_A_LISTAPRECIOS'
    Left = 584
    Top = 17
    ParamData = <
      item
        Position = 1
        Name = 'LISTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object spActualizarRecClones: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'ACTUALIZA_REC_LST_CLON'
    Left = 704
    Top = 17
    ParamData = <
      item
        Position = 1
        Name = 'LISTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object spAplicarRec: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'APLICAR_REC_LISTAS'
    Left = 712
    Top = 79
    ParamData = <
      item
        Position = 1
        Name = 'LISTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QExportaRubro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.codigo_rubro,s.codigo_subrubro,s.detalle_subrubro,'
      'r.detalle_rubro from  subrubros s'
      'left join rubros r on r.codigo_rubro=s.codigo_rubro')
    Left = 480
    Top = 219
  end
  object DSPExportaRubro: TDataSetProvider
    DataSet = QExportaRubro
    Left = 617
    Top = 219
  end
  object CDSExportaRubro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPExportaRubro'
    OnCalcFields = CDSExportaRubroCalcFields
    Left = 712
    Top = 219
    object CDSExportaRubroCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      Size = 3
    end
    object CDSExportaRubroCODIGO_SUBRUBRO: TStringField
      FieldName = 'CODIGO_SUBRUBRO'
      Origin = 'CODIGO_SUBRUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 5
    end
    object CDSExportaRubroDETALLE_SUBRUBRO: TStringField
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      Size = 40
    end
    object CDSExportaRubroDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      ProviderFlags = []
    end
    object CDSExportaRubroCODIGO_SUBRUBRO_2: TStringField
      FieldKind = fkCalculated
      FieldName = 'CODIGO_SUBRUBRO_2'
      Calculated = True
    end
    object CDSExportaRubroCODIGO_RUBRO_2: TStringField
      FieldKind = fkCalculated
      FieldName = 'CODIGO_RUBRO_2'
      Size = 3
      Calculated = True
    end
    object CDSExportaRubroVACIO: TStringField
      FieldKind = fkCalculated
      FieldName = 'VACIO'
      Calculated = True
    end
  end
  object CDSExportaTxt: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPExportaTxt'
    OnCalcFields = CDSExportaTxtCalcFields
    Left = 712
    Top = 296
    object CDSExportaTxtCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 8
    end
    object CDSExportaTxtDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSExportaTxtRUBRO_STK: TStringField
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      Size = 3
    end
    object CDSExportaTxtDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      ProviderFlags = []
      Size = 30
    end
    object CDSExportaTxtSUBRUBRO_STK: TStringField
      FieldName = 'SUBRUBRO_STK'
      Origin = 'SUBRUBRO_STK'
      Size = 5
    end
    object CDSExportaTxtDETALLE_SUBRUBRO: TStringField
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      ProviderFlags = []
      Size = 30
    end
    object CDSExportaTxtPRECIO: TFloatField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSExportaTxtPRECIOTXT: TStringField
      FieldKind = fkCalculated
      FieldName = 'PRECIOTXT'
      Size = 12
      Calculated = True
    end
    object CDSExportaTxtSUBRUBRO_STK_TRIM: TStringField
      FieldKind = fkCalculated
      FieldName = 'SUBRUBRO_STK_TRIM'
      Size = 3
      Calculated = True
    end
    object CDSExportaTxtvacio: TStringField
      FieldKind = fkCalculated
      FieldName = 'vacio'
      Calculated = True
    end
    object CDSExportaTxtCODIGO_STK_LIMPIO: TStringField
      FieldKind = fkCalculated
      FieldName = 'CODIGO_STK_LIMPIO'
      Size = 8
      Calculated = True
    end
    object CDSExportaTxtPRECIO2: TFloatField
      FieldName = 'PRECIO2'
      Origin = 'PRECIO2'
      ProviderFlags = []
      Required = True
    end
    object CDSExportaTxtPRECIOTXTFUTURO: TStringField
      FieldKind = fkCalculated
      FieldName = 'PRECIOTXTFUTURO'
      Calculated = True
    end
    object CDSExportaTxtCOEFICIENTE_RECARGO: TFloatField
      FieldName = 'COEFICIENTE_RECARGO'
      Origin = 'COEFICIENTE_RECARGO'
      ProviderFlags = []
    end
    object CDSExportaTxtPRECIOCOSTO_STOCK: TFloatField
      FieldName = 'PRECIOCOSTO_STOCK'
      Origin = 'FIJACION_PRECIO_TOTAL'
      Required = True
    end
    object CDSExportaTxtPRECIOCOSTO_LISTA: TFloatField
      FieldName = 'PRECIOCOSTO_LISTA'
      Origin = 'COSTO_TOTAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSExportaTxtPRECIOSINIVA: TFloatField
      FieldName = 'PRECIOSINIVA'
      Origin = 'PRECIOSINIVA'
      ProviderFlags = []
    end
    object CDSExportaTxtPRECIOSINIVATXT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'PRECIOSINIVATXT'
    end
    object CDSExportaTxtIVA_IMPORTE: TFloatField
      FieldName = 'IVA_IMPORTE'
      Origin = 'IVA_IMPORTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSExportaTxtRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DSPExportaTxt: TDataSetProvider
    DataSet = QExportaTxt
    Left = 617
    Top = 296
  end
  object QExportaTxt: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.codigo_stk,s.detalle_stk,s.rubro_stk,r.detalle_rubro,'
      '       s.subrubro_stk,sr.detalle_subrubro,'
      '       p.precio as precio,'
      
        '       (s.costo_gravado_sombra+s.costo_exento_sombra) AS Precio2' +
        ','
      '       (1+(p.recargo*0.01)) as Coeficiente_recargo,'
      '       s.fijacion_precio_total as PrecioCosto_Stock,'
      '       p.costo_total as PrecioCosto_lista,p.iva_importe,'
      
        '       (p.precio_exento+p.precio_gravado) as PrecioSinIva,p.reca' +
        'rgo from stock s'
      '    left join rubros r on r.codigo_rubro=s.rubro_stk'
      '    left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk'
      
        '    left join listaprecioespecialart p on p.codigoarticulo=s.cod' +
        'igo_stk'
      'where p.id_cab=:id')
    Left = 480
    Top = 264
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QExportaConStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.codigo_stk,s.detalle_stk,s.rubro_stk,r.detalle_rubro,'
      '       s.subrubro_stk,sr.detalle_subrubro,'
      '       p.precio  AS precio, sum(dpk.fisico) as Stk_Actual'
      '       from depositostk dpk'
      '    left join stock s on s.codigo_stk = dpk.codigo_stk'
      '    left join rubros r on r.codigo_rubro=s.rubro_stk'
      '    left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk'
      
        '    left join listaprecioespecialart p on p.codigoarticulo=s.cod' +
        'igo_stk'
      
        'where (( dpk.codigo_deposito = :deposito or :deposito = -1 ) and' +
        ' dpk.codigo_stk=s.codigo_stk) and'
      
        '      p.id_cab=:id and s.clase_articulo in (1,3) AND s.imprimir_' +
        'lstprecios='#39'S'#39
      'group by'
      's.codigo_stk,s.detalle_stk,s.rubro_stk,r.detalle_rubro,'
      '       s.subrubro_stk,sr.detalle_subrubro,p.precio')
    Left = 480
    Top = 312
    ParamData = <
      item
        Position = 2
        Name = 'deposito'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPExportaConStock: TDataSetProvider
    DataSet = QExportaConStock
    Left = 617
    Top = 368
  end
  object CDSExportaConStock: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'deposito'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'deposito'
        ParamType = ptInput
      end>
    ProviderName = 'DSPExportaConStock'
    Left = 712
    Top = 368
    object CDSExportaConStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = []
      Required = True
      Size = 8
    end
    object CDSExportaConStockDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
    object CDSExportaConStockRUBRO_STK: TStringField
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      ProviderFlags = []
      Required = True
      Size = 3
    end
    object CDSExportaConStockDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      ProviderFlags = []
      Size = 35
    end
    object CDSExportaConStockSUBRUBRO_STK: TStringField
      FieldName = 'SUBRUBRO_STK'
      Origin = 'SUBRUBRO_STK'
      ProviderFlags = []
      Required = True
      Size = 5
    end
    object CDSExportaConStockDETALLE_SUBRUBRO: TStringField
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      ProviderFlags = []
      Size = 45
    end
    object CDSExportaConStockPRECIO: TFloatField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSExportaConStockSTK_ACTUAL: TFloatField
      FieldName = 'STK_ACTUAL'
      Origin = 'STK_ACTUAL'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object CDSClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPClientes'
    OnCalcFields = CDSClientesCalcFields
    Left = 712
    Top = 440
    object CDSClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
    object CDSClientesDIRECCION_COMERCIAL: TStringField
      FieldName = 'DIRECCION_COMERCIAL'
      Origin = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object CDSClientesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object CDSClientesVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 6
    end
    object CDSClientesMUESTRAVENDEDOR: TStringField
      FieldName = 'MUESTRAVENDEDOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object CDSClientesVacio: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'Vacio'
    end
    object CDSClientesCodVendedor: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CodVendedor'
    end
  end
  object DSPClientes: TDataSetProvider
    DataSet = QClie
    Left = 617
    Top = 440
  end
  object QClie: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.codigo,c.nombre,c.direccion_comercial,  c.localidad,c.v' +
        'endedor,p.nombre as MuestraVendedor from clientes c'
      'left join personal p on p.codigo= c.vendedor')
    Left = 480
    Top = 376
  end
  object QPasarOriginal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      ' update listaprecioespecialcab l set l.clonada='#39'N'#39','
      '                                      l.id_lista_clonada = -1,'
      '                                      l.coeficiente=0'
      '    where l.id = :id_lista')
    Left = 32
    Top = 17
    ParamData = <
      item
        Name = 'ID_LISTA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QClones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select l.*  from listaprecioespecialcab l '
      'where l.ID_LISTA_CLONADA=:id')
    Left = 32
    Top = 80
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QClonesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QClonesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
    object QClonesRECARGOBASE: TFloatField
      FieldName = 'RECARGOBASE'
      Origin = 'RECARGOBASE'
    end
    object QClonesPORDEFECTO: TStringField
      FieldName = 'PORDEFECTO'
      Origin = 'PORDEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClonesF_PAGO: TIntegerField
      FieldName = 'F_PAGO'
      Origin = 'F_PAGO'
    end
    object QClonesUSO_ADMINISTRADOR: TStringField
      FieldName = 'USO_ADMINISTRADOR'
      Origin = 'USO_ADMINISTRADOR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClonesCLONADA: TStringField
      FieldName = 'CLONADA'
      Origin = 'CLONADA'
      FixedChar = True
      Size = 1
    end
    object QClonesID_LISTA_CLONADA: TIntegerField
      FieldName = 'ID_LISTA_CLONADA'
      Origin = 'ID_LISTA_CLONADA'
    end
    object QClonesCOEFICIENTE: TFloatField
      FieldName = 'COEFICIENTE'
      Origin = 'COEFICIENTE'
    end
    object QClonesEXCLUSIVO_EFECTIVO: TStringField
      FieldName = 'EXCLUSIVO_EFECTIVO'
      Origin = 'EXCLUSIVO_EFECTIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClonesFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
  end
  object QArticulos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.codigo_stk,s.detalle_stk, s.rubro_stk,subrubro_stk,'
      
        's.fijacion_precio_total, s.fijacion_precio_gravado, s.fijacion_p' +
        'recio_exento,'
      
        's.tasa_iva,s.sobretasa_iva,g1.tasa as MustraTasaIva,g2.tasa as M' +
        'uestraSobreTasaIva,'
      's.contenido_compra,s.modo_gravamen from stock s'
      'left join gravamen g1 on g1.codigo=s.tasa_iva'
      'left join gravamen g2 on g2.codigo=s.sobretasa_iva')
    Left = 40
    Top = 200
    object QArticulosCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QArticulosDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object QArticulosRUBRO_STK: TStringField
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      Required = True
      Size = 3
    end
    object QArticulosSUBRUBRO_STK: TStringField
      FieldName = 'SUBRUBRO_STK'
      Origin = 'SUBRUBRO_STK'
      Required = True
      Size = 5
    end
    object QArticulosFIJACION_PRECIO_TOTAL: TFloatField
      FieldName = 'FIJACION_PRECIO_TOTAL'
      Origin = 'FIJACION_PRECIO_TOTAL'
      Required = True
    end
    object QArticulosFIJACION_PRECIO_GRAVADO: TFloatField
      FieldName = 'FIJACION_PRECIO_GRAVADO'
      Origin = 'FIJACION_PRECIO_GRAVADO'
      Required = True
    end
    object QArticulosFIJACION_PRECIO_EXENTO: TFloatField
      FieldName = 'FIJACION_PRECIO_EXENTO'
      Origin = 'FIJACION_PRECIO_EXENTO'
      Required = True
    end
    object QArticulosTASA_IVA: TIntegerField
      FieldName = 'TASA_IVA'
      Origin = 'TASA_IVA'
      Required = True
    end
    object QArticulosSOBRETASA_IVA: TIntegerField
      FieldName = 'SOBRETASA_IVA'
      Origin = 'SOBRETASA_IVA'
    end
    object QArticulosMUSTRATASAIVA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUSTRATASAIVA'
      Origin = 'TASA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QArticulosMUESTRASOBRETASAIVA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASOBRETASAIVA'
      Origin = 'TASA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QArticulosCONTENIDO_COMPRA: TFloatField
      FieldName = 'CONTENIDO_COMPRA'
      Origin = 'CONTENIDO_COMPRA'
      Required = True
    end
    object QArticulosMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      Size = 1
    end
  end
  object QSubRubros: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from subrubros')
    Left = 32
    Top = 272
    object QSubRubrosCODIGO_SUBRUBRO: TStringField
      FieldName = 'CODIGO_SUBRUBRO'
      Origin = 'CODIGO_SUBRUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object QSubRubrosDETALLE_SUBRUBRO: TStringField
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      Required = True
      Size = 45
    end
    object QSubRubrosCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      Required = True
      Size = 3
    end
    object QSubRubrosCONTROL_SUBRUBRO: TStringField
      FieldName = 'CONTROL_SUBRUBRO'
      Origin = 'CONTROL_SUBRUBRO'
      FixedChar = True
      Size = 1
    end
    object QSubRubrosFUERA_PROMO: TStringField
      FieldName = 'FUERA_PROMO'
      Origin = 'FUERA_PROMO'
      FixedChar = True
      Size = 1
    end
  end
  object QRubros: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from Rubros')
    Left = 32
    Top = 336
    object QRubrosCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object QRubrosDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      Required = True
      Size = 35
    end
    object QRubrosCONTROL_RUBRO: TStringField
      FieldName = 'CONTROL_RUBRO'
      Origin = 'CONTROL_RUBRO'
      Size = 1
    end
    object QRubrosFUERA_PROMO: TStringField
      FieldName = 'FUERA_PROMO'
      Origin = 'FUERA_PROMO'
      FixedChar = True
      Size = 1
    end
  end
end

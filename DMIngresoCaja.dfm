object DatosIngresoCaja: TDatosIngresoCaja
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Left = 199
  Top = 217
  Height = 540
  Width = 783
  object wwCDSIngCaja: TwwClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPIngcaja'
    ValidateWithMask = True
    Left = 64
    Top = 24
    object wwCDSIngCajaID_INGRESO: TIntegerField
      FieldName = 'ID_INGRESO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object wwCDSIngCajaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object wwCDSIngCajaCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      OnSetText = wwCDSIngCajaCLASECPBTESetText
      Size = 2
    end
    object wwCDSIngCajaLETRA: TStringField
      FieldName = 'LETRA'
      Size = 3
    end
    object wwCDSIngCajaSUC: TStringField
      FieldName = 'SUC'
      OnSetText = wwCDSIngCajaSUCSetText
      Size = 4
    end
    object wwCDSIngCajaNUMERO: TStringField
      FieldName = 'NUMERO'
      OnSetText = wwCDSIngCajaNUMEROSetText
      Size = 8
    end
    object wwCDSIngCajaSUCURSALVENTA: TIntegerField
      FieldName = 'SUCURSALVENTA'
      OnSetText = wwCDSIngCajaSUCURSALVENTASetText
    end
    object wwCDSIngCajaFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object wwCDSIngCajaID_CUENTA: TStringField
      FieldName = 'ID_CUENTA'
      OnSetText = wwCDSIngCajaID_CUENTASetText
      Size = 5
    end
    object wwCDSIngCajaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object wwCDSIngCajaDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 100
    end
    object wwCDSIngCajaID_SUB_CUENTA: TStringField
      FieldName = 'ID_SUB_CUENTA'
      OnSetText = wwCDSIngCajaID_SUB_CUENTASetText
      Size = 5
    end
    object wwCDSIngCajaMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object wwCDSIngCajaMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object wwCDSIngCajaMUESTRASUBCUENTA: TStringField
      FieldName = 'MUESTRASUBCUENTA'
      ProviderFlags = []
      Size = 30
    end
    object wwCDSIngCajaMUESTRACUENTA: TStringField
      FieldName = 'MUESTRACUENTA'
      ProviderFlags = []
      Size = 30
    end
    object wwCDSIngCajaNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 15
    end
  end
  object wwQIngCaja: TwwQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select ing.*,s.detalle as MuestraSucursal ,'
      '            c.denominacion as MuestraComprobante,'
      '            sc.detalle as MuestraSubCuenta,'
      '            ct.Detalle as MuestraCuenta from ing_caja ing'
      'left join sucursal s on s.codigo=ing.sucursalventa'
      'left join Comprobantes c on c.clase_comprob=ing.clasecpbte'
      
        'left join sub_cuenta sc on sc.id_cuenta=ing.id_cuenta and sc.id_' +
        'sub_cuenta=ing.id_sub_cuenta'
      'left join cuenta ct on ct.id_cuenta=ing.id_cuenta'
      'where ing.id_ingreso=:Id'
      ''
      ''
      ' ')
    ValidateWithMask = True
    Left = 280
    Top = 24
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    object wwQIngCajaID_INGRESO: TIntegerField
      FieldName = 'ID_INGRESO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object wwQIngCajaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object wwQIngCajaCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object wwQIngCajaLETRA: TStringField
      FieldName = 'LETRA'
      Size = 3
    end
    object wwQIngCajaSUC: TStringField
      FieldName = 'SUC'
      Size = 4
    end
    object wwQIngCajaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object wwQIngCajaSUCURSALVENTA: TIntegerField
      FieldName = 'SUCURSALVENTA'
    end
    object wwQIngCajaFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object wwQIngCajaID_CUENTA: TStringField
      FieldName = 'ID_CUENTA'
      Size = 5
    end
    object wwQIngCajaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object wwQIngCajaDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 100
    end
    object wwQIngCajaID_SUB_CUENTA: TStringField
      FieldName = 'ID_SUB_CUENTA'
      Size = 5
    end
    object wwQIngCajaMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object wwQIngCajaMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object wwQIngCajaMUESTRASUBCUENTA: TStringField
      FieldName = 'MUESTRASUBCUENTA'
      ProviderFlags = []
      Size = 30
    end
    object wwQIngCajaMUESTRACUENTA: TStringField
      FieldName = 'MUESTRACUENTA'
      ProviderFlags = []
      Size = 30
    end
    object wwQIngCajaNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 15
    end
  end
  object DSPIngcaja: TDataSetProvider
    DataSet = wwQIngCaja
    Constraints = True
    Left = 176
    Top = 24
  end
  object IBGIdIngreso_Caja: TIBGenerator
    Database = 'DBMain'
    GeneratorName = 'NEXT_ID_INGRESO_CAJA'
    SystemGenerators = False
    Left = 384
    Top = 24
  end
  object DSPSucrusal: TDataSetProvider
    DataSet = DMMain.wwQSucursal
    Constraints = True
    Left = 104
    Top = 95
  end
  object wwCDSSucursal: TwwClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPSucrusal'
    ValidateWithMask = True
    Left = 216
    Top = 111
    object wwCDSSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object wwCDSSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object QComprob: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select * from comprobantes'
      'where clase_comprob=:clase and'
      '      Sucursal=:Suc and'
      '      compra_venta='#39'V'#39' and'
      '      tipo_comprob='#39'IC'#39
      ' ')
    Left = 216
    Top = 160
    ParamData = <
      item
        DataType = ftString
        Name = 'clase'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Suc'
        ParamType = ptUnknown
      end>
    object QComprobTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Size = 2
    end
    object QComprobCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Size = 2
    end
    object QComprobDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Size = 15
    end
    object QComprobLETRA: TStringField
      FieldName = 'LETRA'
      Size = 1
    end
  end
  object QSubCta: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select * from Sub_Cuenta'
      'where id_cuenta=:id_cta and id_sub_cuenta=:id_subcta')
    Left = 216
    Top = 216
    ParamData = <
      item
        DataType = ftString
        Name = 'id_cta'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'id_subcta'
        ParamType = ptUnknown
      end>
    object QSubCtaDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 30
    end
  end
  object QCta: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select * from Cuenta'
      'where id_cuenta=:id_cta')
    Left = 216
    Top = 272
    ParamData = <
      item
        DataType = ftString
        Name = 'id_cta'
        ParamType = ptUnknown
      end>
    object QCtaDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DBMAIN.CUENTA.DETALLE'
      Size = 30
    end
  end
end

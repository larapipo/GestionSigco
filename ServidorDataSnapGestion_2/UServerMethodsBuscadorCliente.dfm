object ServerModuleBuscadorCliente: TServerModuleBuscadorCliente
  OldCreateOrder = False
  Height = 334
  Width = 418
  object QSucursal: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select codigo,detalle from sucursal')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 56
    Top = 46
    object QSucursalCODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
    end
    object QSucursalDETALLE: TStringField
      DisplayWidth = 35
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object DSPSucursal: TDataSetProvider
    DataSet = QSucursal
    Left = 128
    Top = 46
  end
  object QCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dato'
        ParamType = ptInput
        Size = 1
        Value = ''
      end>
    SQL.Strings = (
      'select c.codigo,c.nombre,c.razon_social,c.direccion_comercial,'
      '       c.nro_de_cuit,c.nrodocumento,C.telefono_comercial_1,'
      '       C.telefono_comercial_2,'
      '       C.telefono_celular,'
      '       c.limite_credito,'
      
        '       c.sucursal,c.activo,c.localidad,i.detalle as MuestraIva f' +
        'rom clientes c'
      'left join inscripcion i on i.codigo=c.condicion_iva'
      'where ( c.activo in ( '#39'S'#39' ) ) and '
      '  ( c.sucursal = :suc  or  :suc = -1 )'
      '       and c.nombre = :dato')
    SQLConnection = ServerContainer.GestionPtoVta
    Left = 56
    Top = 126
  end
  object DSPClientes: TDataSetProvider
    DataSet = QCliente
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 120
    Top = 118
  end
end

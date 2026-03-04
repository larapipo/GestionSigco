object DatosResumenVtas: TDatosResumenVtas
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Height = 530
  Width = 1105
  object QMovimientos_2_old: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'anio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cliente'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'mes'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT v.*  FROM VTAS_ANUAL_ARTIC_2( :anio, :codigo, :cliente,:s' +
        'uc,:mes ) v')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 997
    Top = 58
  end
  object QEntregas_old: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'anio'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select e.* from entregas e where extract(year from e.fechavta) =' +
        ' :anio')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 1012
    Top = 114
  end
  object QVentas_old: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'anio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from ventas_mensuales (:anio,:suc)')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 1016
    Top = 170
  end
  object QVentasFiltrada_old: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'anio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'grupo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from ventas_mensuales_con_filtros (:anio, :grupo,:suc)')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 888
    Top = 58
  end
  object QVentasDiaria_old: TSQLQuery
    MaxBlobSize = -1
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
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from ventas_mensuales_diaria (:desde,:hasta,:suc)')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 896
    Top = 106
  end
  object QSucursales_old: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select s.codigo,s.detalle from sucursal s '
      'where (s.codigo = :codigo)  or( :codigo = -1'
      ')order by s.codigo')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 896
    Top = 162
  end
  object QSaldoGastos_old: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Hasta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'caja'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'caja'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Rubro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Rubro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select egc.nrocpbte,egc.id_egreso,egc.tipocpbte,egc.clasecpbte, ' +
        'eg.rubrogasto, eg.codigogasto,'
      
        'eg.detalle,rb.detalle as MuestraRubro,cpbte.id_comprobante as Mu' +
        'estraIdComprobante,'
      
        'cta.detalle as MuestraCta,eg.importe,eg.FechaGasto,cm.id_cuenta_' +
        'caja,cc.nombre,eg.id from Egr_caja_detalle eg'
      
        'left join gastos_cuentas cta on (cta.codigo=eg.codigogasto and c' +
        'ta.codigo_rubro=eg.rubrogasto)'
      'left join gastos_rubros rb on rb.codigo=eg.rubrogasto'
      'left join egr_caja egc on egc.id_egreso=eg.id_cpbte'
      'left join caja_mov cm on cm.tipo_comprob=egc.tipocpbte and'
      '                         cm.clase_comprob=egc.clasecpbte and'
      '                         cm.id_comprobante=egc.id_egreso'
      'left join cuenta_caja cc on cc.id_cuenta=cm.id_cuenta_caja'
      
        'left join comprobantes cpbte on cpbte.tipo_comprob=egc.tipocpbte' +
        ' and'
      
        '                                cpbte.clase_comprob=egc.clasecpb' +
        'te and'
      '                                cpbte.letra=egc.letra and'
      
        '                                cpbte.sucursal=egc.sucursalventa' +
        ' and'
      '                                cpbte.compra_venta='#39'C'#39
      'where eg.fechagasto between :desde and :Hasta'
      ' and ((egc.sucursalventa = :suc ) or ( :suc = -1 ))'
      
        ' and ((cm.id_cuenta_caja = :caja ) or ( :caja = -1 )) and (cm.id' +
        '_cuenta_caja<>0)'
      ' and ((eg.rubrogasto = :Rubro) or ( :Rubro = '#39'***'#39' ) )'
      ' and ((eg.codigogasto = :codigo ) or ( :codigo = '#39'******'#39' ))'
      ''
      
        'group by egc.nrocpbte,egc.id_egreso,egc.tipocpbte,egc.clasecpbte' +
        ', eg.rubrogasto, eg.codigogasto,'
      
        'eg.detalle,rb.detalle,cpbte.id_comprobante,cta.detalle,eg.import' +
        'e, eg.FechaGasto,cm.id_cuenta_caja,cc.nombre,eg.id'
      ' order by eg.rubrogasto,eg.codigogasto,eg.FechaGasto')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 904
    Top = 226
  end
  object QGasto_Compra_old: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'Hasta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Rubro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'caja'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select * from test_saldos (:desde,:hasta,:suc,:rubro,:codigo,:ca' +
        'ja)')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 904
    Top = 290
  end
  object QFinanciero_old: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'anio'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select  i.*  from informe_financiero (:anio) i')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 1012
    Top = 242
  end
  object QInfCruzado_old: TSQLQuery
    MaxBlobSize = -1
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
    SQL.Strings = (
      
        'select f.id_fc,f.tipocpbte,f.clasecpbte,f.nrocpbte,f.codigo,f.no' +
        'mbre,f.sucursal,s.detalle as MuestraSucursal,c.denominacion as M' +
        'uestraComprob,'
      
        '       extract(year from f.fechavta) as Anio,extract(month from ' +
        'f.fechavta) as Mes,(f.netograv2+f.netoexen2) as TotalNeto,f.tota' +
        'l'
      'from fcvtacab f'
      'left join sucursal s on s.codigo=f.sucursal'
      'left join comprobantes c on c.letra=f.letrafac and'
      '                            c.tipo_comprob=f.tipocpbte and'
      '                            c.clase_comprob=f.clasecpbte and'
      '                            c.sucursal =f.sucursal and'
      '                            c.compra_venta='#39'V'#39
      'where f.fechavta between :desde and :hasta and f.anulado<>'#39'S'#39)
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 1016
    Top = 312
  end
end

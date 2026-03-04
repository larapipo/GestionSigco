const
  //Codes64         = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz+/';
  /////  COMANDOS SQL   ///////
  SQLOptionsSel                   = 'select * from opciones op where op.opcion=:option';
  SQLOptionsUpd                   = 'update opciones op set op.valor=:Valor where op.opcion=:option';
  SQLBuscaClientePorTarjeta       = 'select c.codigo from clientes c where c.tarjeta_cliente=:codigo';
  SQLBuscaClientePorCUIT          = 'select max(c.codigo) as Codigo  from clientes c where c.nro_de_cuit = :cuit';
  SQLBuscaClientePorDocumento     = 'select max(c.codigo) as Codigo  from clientes c where c.condicion_iva=3 and c.nrodocumento = :documento';
  SQLBuscaCodigoStk               = 'select s.codigo_stk as Codigo_stk,s.clase_articulo as Clase,s.detalle_stk as Descripcion,m.descripcion_marca as Marca from stock s '+
                                    '  left join marcas m on m.marca_stk=s.marca_stk '+
                                    ' where ( s.codigo_stk=:codigo )';
  SQLBuscaCodigoAlternativo       = 'select s.codigo_stk as Codigo , s.reemplazo_stk as CodAlternativo, s.detalle_stk as Detalle,'+
                                            'coalesce( lc.Nombre,''-'') as Proveedor,m.descripcion_marca as Marca from stock s ' +
                                      'left join lista_precios_prov_detalle lp on lp.codigo=s.codigo_stk ' +
                                      'left join lista_precios_prov_cabecera lc on lc.id=lp.id_cab ' +
                                      'left join marcas m on m.marca_stk=s.marca_stk '+
                                      'where ( s.reemplazo_stk = :codigo )';
  SQLBuscaCodigoProveedor         = 'select s.codigo_stk , ld.codigo_proveedor as CodAlt, s.detalle_stk as Detalle, lc.Nombre as Proveedor  from stock s '+
                                      'left join lista_precios_prov_detalle ld on ld.codigo=s.codigo_stk '+
                                      'left join lista_precios_prov_cabecera lc on lc.id=ld.id_cab '+
                                     ' where ( ld.codigo_proveedor = :codigo and lc.codigo_provee = :proveedor )';

  SQLBuscaCodigoBarra             = 'select codigo_stk from codigobarra where codigobarra = :codigoBarra';
  SQLBuscaCodigoSerie             = 'select ss.codigo_stk from stock_series ss where ( ss.codigoserie = :codigoserie ) and ( ss.id_cpbte_egreso is null )';

  SQLBuscaFC                      = 'select f.id_fc,f.codigo,f.nombre,f.fechavta,f.total from fcvtacab f  ' +
                                      'where f.letrafac=:Letra   and f.sucfac=:sucfac     and             ' +
                                      '      f.numerofac=:numfac and f.sucursal=:sucursal and             ' +
                                      '      f.tipocpbte=:tipo   and f.clasecpbte=:clase                  ';

  SQLBuscaFCPorNro                = 'select f.id_fc,f.codigo,f.nombre,f.fechavta,f.total from fcvtacab f                ' +
                                      'where f.letrafac=:Letra and f.sucfac=:sucfac and  f.numerofac=:numfac       and  ' +
                                      '      f.tipocpbte=:tipo or ((:tipo2 is not null) and (f.tipocpbte=:tipo2))) and  ' +
                                      '     ((:Sucursal is null) or (:Sucursal = -1) or (f.Sucursal = :Sucursal))';

  SQLBuscaRto                     = 'select r.id_rto,r.codigo,r.nombre,r.fechavta,r.total from rtocab r  ' +
                                      'where r.letrarto=:Letra and                                       ' +
                                      '      r.sucrto=:sucfac and                                        ' +
                                      '      r.numerorto=:numfac and                                     ' +
                                      '      r.sucursal=:sucursal and                                    ' +
                                      '      ( r.tipocpbte=:tipo ) and                                   ' +
                                      '      ( r.clasecpbte=:clase )                                     ';


  SQLBuscaPLU                     = 'select s.codigo_stk as Codigo_stk,s.clase_articulo,s.detalle_stk from stock s where ( s.PLU=:codigo or  s.PLU_2=:codigo )';
  SQLBuscaOP_PorFc                = 'select min(op.id) from ordenproduccion_cab op where op.id_fcvta=:id';
  SQLGrupoCpbteVta                = ' select td.id_cab from tabla_cpbte_ccvta_det td where td.id_cpbte=:ID_COMPROBANTE';
  SQLGrupoCpbteCompras            = ' select td.id_cab from tabla_cpbte_cccomp_det td where td.id_cpbte=:ID_COMPROBANTE';

  SQLAplicPorCtroCosto            = 'select ap.*,cc.descripcion from aplica_ctro_costo ap ' +
                                      ' left join centro_costo cc on cc.id=ap.ctro_costo '  +
                                      ' where ap.id_cpbte= :id and ap.tipocpbte=:tipocpbte and ap.tipo=:tipo';

//  SQLUpdateRto                    = 'update rtocab set idfactura=:idfactura, nrofact=:numero where id_rto=:id';
  SQLStockEditDetalle             = 'select s.editadetalle from stock s where  s.codigo_stk = :codigo';
  SQLListaPorDefecto              = 'select id,f_pago from  listaprecioespecialcab where pordefecto=''S'' ';
  SQLListaPorDefectoSuc           = 'select l.lista,l.sucursal from lprecio_sucursal l where l.sucursal=:sucursal';
  SQLListaPrimera                 = 'select Min(id) from  listaprecioespecialcab where uso_administrador=''N'' ';

  SQLRevNroRto                    = 'update rtocab r set r.nrofact=(select f.nrocpbte from fcvtacab f where f.id_fc=r.idfactura) ' +
                                      'where Not(r.idfactura is null)';

  SQLCotizacionCliente            = 'select cc.cotizacion from clientes_cotizacion_moneda cc  where cc.cliente = :Cliente and cc.moneda = :moneda';
  SQLDsctoUsuario                 = 'select * from descuentos_usuarios  where id_usuario=:id';

  //SQLRes3668                      = 'select list(distinct subrubro,'','') from excluidos_rg3668 ';

  SQLRes3668                      = 'select Max(e.id) from excluidos_rg3668 e where e.subrubro = :subrubro';

  SQLTasaPercep_Reten_IIBB        = 'select cuit,tasa_percepcion,tasa_retencion,desde,hasta from TABLA_PERCEPCION_RETENCION where cuit = :cuit ';

  SQLCpbtePorDefecto              = 'select id_comprobante from comprobantes where ' +
                                      'tipo_comprob = :tipo and ' +
                                      'compra_venta = :compraventa and ' +
                                      'Sucursal     = :sucursal and ' +
                                      'desgloza_iva = :DesglozaIva and ' +
                                      'en_uso       = ''S'' order by defecto ';
//                                      'defecto = ''S'' and en_uso= ''S'' ';
  SQLCpbtePorTipo                 = 'select (id_comprobante) from comprobantes where  ' +
                                      'tipo_comprob = :tipo and ' +
                                      'compra_venta = :compraventa and ' +
                                      'Sucursal     = :sucursal and ' +
                                      'desgloza_iva = :DesglozaIva and ' +
                                      'afecta_iva   = ''S'' ';
  SQLCpbtePorTipoUsuario          = 'select cpbte.id_comprobante from comprobantes_usuarios c ' +
                                      'left join comprobantes cpbte on cpbte.id_comprobante = c.id_comprobante  where ' +
                                      'cpbte.tipo_comprob = :tipo and         ' +
                                      'cpbte.compra_venta = :compraventa and  ' +
                                      'cpbte.Sucursal     = :sucursal and     ' +
                                      'cpbte.desgloza_iva = :DesglozaIva and  ' +
                                      'c.id_usuario       = :usuario and      ' +
                                      'cpbte.defecto = ''S'' ' +
                                      'order by  cpbte.id_comprobante asc ';
  SQLJurisdiccionPorSucursal      = 'select l.id, j.*,l.id_juridicion as MuestraJuridiccion from juridiccion_excepciones j ' +
                                      'left join juridicion_localidad l on l.id=j.id_juridicion_localidad            ' +
                                      'where j.sucursal=:sucursal                                                    ';

  SQLDepositoPorSucursal          = 'select min(d.id) as Deposito from depositos d where d.sucursal= :sucursal';

  SQLEstadoCaja                   = 'select estado from caja_cab where id_caja=:id ';
  SQLLdrNombre                    = 'select l.nombre from ldrcliente l where l.codigo_cliente=:codigo and l.codigo_ldr=:ldr';
  SQLLdrDireccion                 = 'select l.direccion from ldrcliente l where l.codigo_cliente=:codigo and l.codigo_ldr=:ldr';

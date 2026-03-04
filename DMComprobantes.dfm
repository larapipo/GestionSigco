object DatosComprobantes: TDatosComprobantes
  OnDestroy = DataModuleDestroy
  Height = 735
  Width = 936
  object QBuscaAjustes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.* from comprobantes c'
      'where c.tipo_comprob='#39'AJ'#39' and c.compra_venta='#39'V'#39
      ' and c.sucursal = :suc'
      ' order by c.denominacion')
    Left = 40
    Top = 148
    ParamData = <
      item
        Position = 1
        Name = 'SUC'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPBuscaAjustes: TDataSetProvider
    DataSet = QBuscaAjustes
    Options = []
    Left = 128
    Top = 148
  end
  object CDSBuscaAjustes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'SUC'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscaAjustes'
    Left = 216
    Top = 148
    object CDSBuscaAjustesID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSBuscaAjustesDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
  end
  object DSBuscaAjustes: TDataSource
    DataSet = CDSBuscaAjustes
    Left = 304
    Top = 148
  end
  object DSPBuscaSuc: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Options = []
    Left = 634
    Top = 88
  end
  object CDSBuscaSucu: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSuc'
    Left = 738
    Top = 88
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object DSBuscaSuc: TDataSource
    DataSet = CDSBuscaSucu
    Left = 840
    Top = 88
  end
  object DSPCtaCaja: TDataSetProvider
    DataSet = QCtaCaja
    Options = []
    Left = 128
    Top = 208
  end
  object CDSCtaCaja: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCtaCaja'
    Left = 216
    Top = 208
    object CDSCtaCajaID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
      Origin = 'ID_CUENTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCtaCajaID_TIPO_CTA: TIntegerField
      FieldName = 'ID_TIPO_CTA'
      Origin = 'ID_TIPO_CTA'
      Required = True
    end
    object CDSCtaCajaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object CDSCtaCajaNRO_CUENTA: TStringField
      FieldName = 'NRO_CUENTA'
      Origin = 'NRO_CUENTA'
      Size = 15
    end
    object CDSCtaCajaID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
    end
    object CDSCtaCajaCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object CDSCtaCajaRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
  end
  object DSCtaCaja: TDataSource
    AutoEdit = False
    DataSet = CDSCtaCaja
    Left = 304
    Top = 208
  end
  object QCtaCaja: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from cuenta_caja where id_tipo_cta=1')
    Left = 40
    Top = 208
  end
  object DSPControlRepetido: TDataSetProvider
    DataSet = QControlRepetido
    Options = []
    Left = 128
    Top = 304
  end
  object CDSControlRepetido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPControlRepetido'
    Left = 216
    Top = 304
    object CDSControlRepetidoDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 15
    end
    object CDSControlRepetidoTIPOCPBTE: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSControlRepetidoCLASECPBTE: TStringField
      DisplayLabel = 'Clase'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSControlRepetidoLETRACPBTE: TStringField
      DisplayLabel = 'Let'
      FieldName = 'LETRACPBTE'
      Origin = 'LETRACPBTE'
      Size = 1
    end
    object CDSControlRepetidoSUCURSALCPBTE: TIntegerField
      DisplayLabel = 'Suc.'
      FieldName = 'SUCURSALCPBTE'
      Origin = 'SUCURSALCPBTE'
    end
    object CDSControlRepetidoCV: TStringField
      DisplayLabel = 'C/V'
      FieldName = 'CV'
      Origin = 'CV'
      Size = 1
    end
    object CDSControlRepetidoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
  end
  object DSControlRepetido: TDataSource
    DataSet = CDSControlRepetido
    Left = 312
    Top = 304
  end
  object QControlRepetido: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from CONTROL_CPBTE_REPETIDO')
    Left = 40
    Top = 304
  end
  object DSControlCompra: TDataSource
    DataSet = CDSControlCompra
    Left = 304
    Top = 400
  end
  object DSPControlCompra: TDataSetProvider
    DataSet = QControlCompra
    Options = []
    Left = 128
    Top = 400
  end
  object CDSControlCompra: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPControlCompra'
    Left = 216
    Top = 400
    object CDSControlCompraDETALLE: TStringField
      DisplayLabel = 'Sucursal'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object CDSControlCompraSUCURSALCOMPRA: TIntegerField
      DisplayLabel = 'Sucursal'
      FieldName = 'SUCURSALCOMPRA'
      Origin = 'SUCURSALCOMPRA'
      Required = True
    end
    object CDSControlCompraTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSControlCompraCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSControlCompraLETRAFAC: TStringField
      DisplayLabel = 'Letra'
      FieldName = 'LETRAFAC'
      Origin = 'LETRAFAC'
      FixedChar = True
      Size = 1
    end
    object CDSControlCompraDENOMINACION: TStringField
      DisplayLabel = 'Denominacion'
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      Size = 15
    end
  end
  object QControlCompra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select f.tipocpbte,f.clasecpbte,f.letrafac,f.sucursalcompra,c.de' +
        'nominacion,s.detalle from fccompcab f'
      'left join comprobantes c on c.tipo_comprob=f.tipocpbte and'
      '                            c.clase_comprob=f.clasecpbte and'
      '                            c.letra=f.letrafac and'
      '                            c.sucursal=f.sucursalcompra and'
      '                            c.compra_venta='#39'C'#39
      'left join sucursal s on s.codigo=f.sucursalcompra'
      
        'group by f.tipocpbte,f.clasecpbte,f.letrafac,f.sucursalcompra,c.' +
        'denominacion,s.detalle'
      'order by f.sucursalcompra,f.tipocpbte')
    Left = 40
    Top = 400
  end
  object DSControlVta: TDataSource
    DataSet = CDSControlVta
    Left = 304
    Top = 472
  end
  object DSPControlVta: TDataSetProvider
    DataSet = QControlVta
    Options = []
    Left = 128
    Top = 472
  end
  object CDSControlVta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPControlVta'
    Left = 216
    Top = 472
    object CDSControlVtaDETALLE: TStringField
      DisplayLabel = 'Sucursal'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object CDSControlVtaSUCURSAL: TIntegerField
      DisplayLabel = 'Sucursal'
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object StringField2: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object StringField3: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object StringField4: TStringField
      DisplayLabel = 'Letra'
      FieldName = 'LETRAFAC'
      Origin = 'LETRAFAC'
      FixedChar = True
      Size = 1
    end
    object StringField5: TStringField
      DisplayLabel = 'Denominacion'
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      Size = 15
    end
  end
  object QControlVta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select f.tipocpbte,f.clasecpbte,f.letrafac,f.sucursal,c.denomina' +
        'cion,s.detalle from fcVtacab f'
      'left join comprobantes c on c.tipo_comprob=f.tipocpbte and'
      '                            c.clase_comprob=f.clasecpbte and'
      '                            c.letra=f.letrafac and'
      '                            c.sucursal=f.sucursal and'
      '                            c.compra_venta='#39'V'#39
      'left join sucursal s on s.codigo=f.sucursal'
      
        'group by f.tipocpbte,f.clasecpbte,f.letrafac,f.sucursal,c.denomi' +
        'nacion,s.detalle'
      'order by f.sucursal,f.tipocpbte')
    Left = 40
    Top = 472
  end
  object CDSDepositos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPDepositos'
    Left = 752
    Top = 224
    object CDSDepositosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDepositosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
  end
  object DSDepositos: TDataSource
    DataSet = CDSDepositos
    Left = 824
    Top = 216
  end
  object DSPDepositos: TDataSetProvider
    DataSet = QDepositos
    Left = 696
    Top = 224
  end
  object QDepositos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from depositos')
    Left = 632
    Top = 224
  end
  object DSPCompFiscales: TDataSetProvider
    DataSet = QCompFiscales
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 528
  end
  object CDSCompFiscales: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Sucursal'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCompFiscales'
    BeforePost = CDSCompFiscalesBeforePost
    Left = 216
    Top = 528
    object CDSCompFiscalesID_COMPROBANTE: TIntegerField
      DisplayLabel = 'Cod.Com.'
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCompFiscalesTIPO_COMPROB: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSCompFiscalesCLASE_COMPROB: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object CDSCompFiscalesDENOMINACION: TStringField
      DisplayLabel = 'Denominacion'
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object CDSCompFiscalesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSCompFiscalesLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSCompFiscalesPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Origin = 'PREFIJO'
      Size = 4
    end
    object CDSCompFiscalesNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      Origin = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object CDSCompFiscalesNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object CDSCompFiscalesTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
      Origin = 'TOMA_NRO_DE'
    end
    object CDSCompFiscalesFISCAL: TStringField
      FieldName = 'FISCAL'
      Origin = 'FISCAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompFiscalesNOMBREIMPRESORA: TStringField
      DisplayLabel = 'Nom.Impresora'
      FieldName = 'NOMBREIMPRESORA'
      Origin = 'NOMBREIMPRESORA'
      ProviderFlags = []
      Size = 15
    end
    object CDSCompFiscalesMUESTRASUCURSAL: TStringField
      DisplayLabel = 'Sucursal'
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object CDSCompFiscalesMUESTRADETALLETIPO: TStringField
      FieldName = 'MUESTRADETALLETIPO'
      Origin = 'DETALLE'
      ProviderFlags = []
    end
  end
  object DSCompFiscales: TDataSource
    DataSet = CDSCompFiscales
    Left = 304
    Top = 528
  end
  object QCompFiscales: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id_comprobante,c.tipo_comprob,c.clase_comprob,c.sucursa' +
        'l,c.letra,c.prefijo,'
      
        '       c.numero,c.numerarcion_propia,c.toma_nro_de,c.fiscal,c.no' +
        'mbreimpresora,'
      
        '       s.detalle as MuestraSucursal, t.detalle as MuestraDetalle' +
        'Tipo,c.denominacion  from comprobantes c'
      'left join sucursal s on s.codigo=c.sucursal'
      'left join tipo_comprobante t on t.sigla=c.tipo_comprob'
      
        'where c.fiscal='#39'S'#39' and (c.sucursal = :Sucursal or :Sucursal = -1' +
        ' )'
      'order by c.sucursal,c.tipo_comprob')
    Left = 40
    Top = 528
    ParamData = <
      item
        Position = 1
        Name = 'Sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'Sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPCompElec: TDataSetProvider
    DataSet = QCompElec
    Options = []
    Left = 128
    Top = 584
  end
  object CDSCompElec: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Sucursal'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCompElec'
    Left = 216
    Top = 584
    object CDSCompElecID_COMPROBANTE: TIntegerField
      DisplayLabel = 'Cod.Comp'
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCompElecTIPO_COMPROB: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSCompElecCLASE_COMPROB: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object CDSCompElecSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSCompElecLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSCompElecPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Origin = 'PREFIJO'
      Size = 4
    end
    object CDSCompElecNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object CDSCompElecNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      Origin = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object CDSCompElecTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
      Origin = 'TOMA_NRO_DE'
    end
    object CDSCompElecFISCAL: TStringField
      FieldName = 'FISCAL'
      Origin = 'FISCAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSCompElecNOMBREIMPRESORA: TStringField
      DisplayLabel = 'Nom.Impresora'
      FieldName = 'NOMBREIMPRESORA'
      Origin = 'NOMBREIMPRESORA'
      Size = 15
    end
    object CDSCompElecMUESTRASUCURSAL: TStringField
      DisplayLabel = 'Sucrusal'
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object CDSCompElecDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
    end
    object CDSCompElecDENOMINACION: TStringField
      DisplayLabel = 'Denomincion'
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
  end
  object DSCompElect: TDataSource
    DataSet = CDSCompElec
    Left = 304
    Top = 584
  end
  object QCompElec: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id_comprobante,c.tipo_comprob,c.clase_comprob,c.sucursa' +
        'l,c.letra,c.prefijo,'
      
        'c.numero,c.numerarcion_propia,c.toma_nro_de,c.fiscal,c.nombreimp' +
        'resora,'
      
        's.detalle as MuestraSucursal,t.detalle,c.denominacion  from comp' +
        'robantes c'
      'left join sucursal s on s.codigo=c.sucursal'
      'left join tipo_comprobante t on t.sigla=c.tipo_comprob'
      
        'where c.facturaelectronica='#39'S'#39' and (c.sucursal = :Sucursal or :S' +
        'ucursal = -1 )'
      'order by c.sucursal,c.tipo_comprob')
    Left = 40
    Top = 592
    ParamData = <
      item
        Position = 1
        Name = 'Sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'Sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPBuscaCompAfip: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCompAfip
    Left = 552
    Top = 360
  end
  object CDSBuscaCompAfip: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaCompAfip'
    Left = 624
    Top = 360
    object StringField6: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 3
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object StringField7: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 100
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
  end
  object DSBuscaCompAfip: TDataSource
    AutoEdit = False
    DataSet = CDSBuscaCompAfip
    Left = 696
    Top = 360
  end
  object DSPTipoComprob: TDataSetProvider
    DataSet = QTipoComp
    Options = []
    Left = 128
    Top = 96
  end
  object CDSTipoComprob: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPTipoComprob'
    Left = 216
    Top = 96
    object CDSTipoComprobID_TIPO: TIntegerField
      FieldName = 'ID_TIPO'
      Origin = 'ID_TIPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSTipoComprobDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSTipoComprobSIGLA: TStringField
      FieldName = 'SIGLA'
      Origin = 'SIGLA'
      Size = 2
    end
    object CDSTipoComprobDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Origin = 'DESGLOZA_IVA'
      FixedChar = True
      Size = 1
    end
    object CDSTipoComprobAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Origin = 'AFECTA_CC'
      FixedChar = True
      Size = 1
    end
    object CDSTipoComprobAFECTA_LIBRO_IVA: TStringField
      FieldName = 'AFECTA_LIBRO_IVA'
      Origin = 'AFECTA_LIBRO_IVA'
      FixedChar = True
      Size = 1
    end
    object CDSTipoComprobTIPO_DE_OPERACION: TStringField
      FieldName = 'TIPO_DE_OPERACION'
      Origin = 'TIPO_DE_OPERACION'
      FixedChar = True
      Size = 1
    end
  end
  object DSTipoComprobante: TDataSource
    DataSet = CDSTipoComprob
    Left = 304
    Top = 96
  end
  object QTipoComp: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from tipo_comprobante where sigla <>'#39'DP'#39' order by detal' +
        'le')
    Left = 40
    Top = 96
  end
  object QTipoComprob_Uno: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select desgloza_iva,afecta_cc,afecta_libro_iva,Tipo_de_Operacion' +
        ' from tipo_comprobante'
      'where sigla=:sigla')
    Left = 728
    Top = 552
    ParamData = <
      item
        Name = 'SIGLA'
        DataType = ftString
        ParamType = ptInput
        Size = 2
        Value = Null
      end>
    object QTipoComprob_UnoDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Origin = 'DESGLOZA_IVA'
      FixedChar = True
      Size = 1
    end
    object QTipoComprob_UnoAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Origin = 'AFECTA_CC'
      FixedChar = True
      Size = 1
    end
    object QTipoComprob_UnoAFECTA_LIBRO_IVA: TStringField
      FieldName = 'AFECTA_LIBRO_IVA'
      Origin = 'AFECTA_LIBRO_IVA'
      FixedChar = True
      Size = 1
    end
    object QTipoComprob_UnoTIPO_DE_OPERACION: TStringField
      FieldName = 'TIPO_DE_OPERACION'
      Origin = 'TIPO_DE_OPERACION'
      FixedChar = True
      Size = 1
    end
  end
  object QControlComprobantes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select id_comprobante from comprobantes'
      'where tipo_comprob=:tipo and '
      'clase_comprob=:clase and '
      'sucursal=:sucursal and'
      'compra_venta=:compraventa and '
      'letra=:letra')
    Left = 728
    Top = 488
    ParamData = <
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
        Value = Null
      end
      item
        Name = 'CLASE'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'COMPRAVENTA'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Name = 'LETRA'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end>
    object QControlComprobantesID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object QComprobanteUsado: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from tools_comprobante_usado (:tipo,:clase,:letra,:comp' +
        'ra_venta,:sucursal)'
      '')
    Left = 600
    Top = 488
    ParamData = <
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
        Value = Null
      end
      item
        Name = 'CLASE'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Name = 'LETRA'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Name = 'COMPRA_VENTA'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QComprobanteUsadoEN_USO: TStringField
      FieldName = 'EN_USO'
      Origin = 'EN_USO'
      Size = 1
    end
  end
  object QComprobantes: TFDQuery
    ObjectView = False
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.*, cc.denominacion as MuestraDenominacion from comproba' +
        'ntes c '
      'left join comprobantes cc on cc.id_comprobante=c.toma_nro_de'
      'where c.id_comprobante=:id')
    Left = 40
    Top = 24
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QComprobantesID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QComprobantesTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QComprobantesCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object QComprobantesDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object QComprobantesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QComprobantesLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object QComprobantesPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Origin = 'PREFIJO'
      Size = 4
    end
    object QComprobantesNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      Origin = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object QComprobantesNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object QComprobantesTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
      Origin = 'TOMA_NRO_DE'
    end
    object QComprobantesAFECTA_IVA: TStringField
      FieldName = 'AFECTA_IVA'
      Origin = 'AFECTA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Origin = 'AFECTA_CC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Origin = 'DESGLOZA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesCOMPRA_VENTA: TStringField
      FieldName = 'COMPRA_VENTA'
      Origin = 'COMPRA_VENTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesCOPIAS: TIntegerField
      FieldName = 'COPIAS'
      Origin = 'COPIAS'
    end
    object QComprobantesREPORTE: TStringField
      FieldName = 'REPORTE'
      Origin = 'REPORTE'
      Size = 100
    end
    object QComprobantesIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Origin = 'IMPRIME'
      FixedChar = True
      Size = 1
    end
    object QComprobantesFISCAL: TStringField
      FieldName = 'FISCAL'
      Origin = 'FISCAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesNOMBREIMPRESORA: TStringField
      FieldName = 'NOMBREIMPRESORA'
      Origin = 'NOMBREIMPRESORA'
      Size = 15
    end
    object QComprobantesPENDIENTEIMPRESION: TStringField
      FieldName = 'PENDIENTEIMPRESION'
      Origin = 'PENDIENTEIMPRESION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesLINEAS_DETALLE: TSmallintField
      FieldName = 'LINEAS_DETALLE'
      Origin = 'LINEAS_DETALLE'
      Required = True
    end
    object QComprobantesCALCULA_IVA_ARTICULOS: TStringField
      FieldName = 'CALCULA_IVA_ARTICULOS'
      Origin = 'CALCULA_IVA_ARTICULOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesDEFECTO: TStringField
      FieldName = 'DEFECTO'
      Origin = 'DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesCAJA_DEFECTO: TIntegerField
      FieldName = 'CAJA_DEFECTO'
      Origin = 'CAJA_DEFECTO'
      Required = True
    end
    object QComprobantesDIVIDE_IVA: TStringField
      FieldName = 'DIVIDE_IVA'
      Origin = 'DIVIDE_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesEN_USO: TStringField
      FieldName = 'EN_USO'
      Origin = 'EN_USO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesCODIGO_AFIP: TStringField
      FieldName = 'CODIGO_AFIP'
      Origin = 'CODIGO_AFIP'
      Size = 3
    end
    object QComprobantesID_AJUSTECC: TIntegerField
      FieldName = 'ID_AJUSTECC'
      Origin = 'ID_AJUSTECC'
    end
    object QComprobantesCENTRO_COSTO: TIntegerField
      FieldName = 'CENTRO_COSTO'
      Origin = 'CENTRO_COSTO'
    end
    object QComprobantesFILTRO_COMPROBANTES: TStringField
      FieldName = 'FILTRO_COMPROBANTES'
      Origin = 'FILTRO_COMPROBANTES'
      FixedChar = True
      Size = 1
    end
    object QComprobantesDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QComprobantesULTIMONRO: TIntegerField
      FieldName = 'ULTIMONRO'
      Origin = 'ULTIMONRO'
    end
    object QComprobantesEDITAR_NRO: TStringField
      FieldName = 'EDITAR_NRO'
      Origin = 'EDITAR_NRO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesCONTROLADOR_NROREG: TStringField
      FieldName = 'CONTROLADOR_NROREG'
      Origin = 'CONTROLADOR_NROREG'
    end
    object QComprobantesUSAR_CAEA: TStringField
      FieldName = 'USAR_CAEA'
      Origin = 'USAR_CAEA'
      FixedChar = True
      Size = 1
    end
    object QComprobantesCAEA: TStringField
      FieldName = 'CAEA'
      Origin = 'CAEA'
      Size = 50
    end
    object QComprobantesVENCIMIENTO_CAEA_DESDE: TSQLTimeStampField
      FieldName = 'VENCIMIENTO_CAEA_DESDE'
      Origin = 'VENCIMIENTO_CAEA_DESDE'
    end
    object QComprobantesVENCIMIENTO_CAEA_HASTA: TSQLTimeStampField
      FieldName = 'VENCIMIENTO_CAEA_HASTA'
      Origin = 'VENCIMIENTO_CAEA_HASTA'
    end
    object QComprobantesMUESTRADENOMINACION: TStringField
      FieldName = 'MUESTRADENOMINACION'
      Origin = 'DENOMINACION'
      ProviderFlags = []
      Size = 15
    end
    object QComprobantesFACTURAELECTRONICA: TStringField
      FieldName = 'FACTURAELECTRONICA'
      Origin = 'FACTURAELECTRONICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesREMITO_IMPRENTA: TStringField
      FieldName = 'REMITO_IMPRENTA'
      Origin = 'REMITO_IMPRENTA'
      Size = 100
    end
    object QComprobantesREMITO_FECHA_RANGO: TStringField
      FieldName = 'REMITO_FECHA_RANGO'
      Origin = 'REMITO_FECHA_RANGO'
      Size = 100
    end
    object QComprobantesREMITO_DIRECCION: TStringField
      FieldName = 'REMITO_DIRECCION'
      Origin = 'REMITO_DIRECCION'
      Size = 100
    end
    object QComprobantesREMITO_CAI: TStringField
      FieldName = 'REMITO_CAI'
      Origin = 'REMITO_CAI'
      Size = 40
    end
    object QComprobantesREMITO_VENCIMIENTO_CAI: TStringField
      FieldName = 'REMITO_VENCIMIENTO_CAI'
      Origin = 'REMITO_VENCIMIENTO_CAI'
    end
    object QComprobantesID_MONEDA_CPBTE: TIntegerField
      FieldName = 'ID_MONEDA_CPBTE'
      Origin = 'ID_MONEDA_CPBTE'
      Required = True
    end
  end
  object QComp: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select denominacion from comprobantes'
      'where id_comprobante=:id')
    Left = 600
    Top = 568
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QCompDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
  end
  object DSPBuscaCtro: TDataSetProvider
    DataSet = QBuscaCtro
    UpdateMode = upWhereKeyOnly
    Left = 688
    Top = 296
  end
  object CDSBuscaCtro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaCtro'
    Left = 752
    Top = 296
    object CDSBuscaCtroID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSBuscaCtroDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 45
    end
  end
  object DSBuscaCtro: TDataSource
    DataSet = CDSBuscaCtro
    Left = 820
    Top = 296
  end
  object QBuscaCtro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from centro_costo'
      'order by descripcion')
    Left = 616
    Top = 296
  end
  object QActualizaImpresorara: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update comprobantes c set c.nombreimpresora = :impresora where c' +
        '.id_comprobante = :id')
    Left = 424
    Top = 528
    ParamData = <
      item
        Name = 'IMPRESORA'
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID'
        ParamType = ptInput
      end>
  end
  object QMonedas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from monedas')
    Left = 752
    Top = 640
    object QMonedasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMonedasMONEDA: TStringField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Size = 15
    end
    object QMonedasCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object QMonedasSIGNO: TStringField
      FieldName = 'SIGNO'
      Origin = 'SIGNO'
      Size = 5
    end
    object QMonedasORDEN: TSmallintField
      FieldName = 'ORDEN'
      Origin = 'ORDEN'
      Required = True
    end
    object QMonedasCOTIZACION_COMPRA: TFloatField
      FieldName = 'COTIZACION_COMPRA'
      Origin = 'COTIZACION_COMPRA'
    end
  end
  object DSMonedas: TDataSource
    DataSet = QMonedas
    Left = 656
    Top = 640
  end
end

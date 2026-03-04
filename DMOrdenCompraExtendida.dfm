object DatosOrdenCompraExtendida: TDatosOrdenCompraExtendida
  OldCreateOrder = False
  Left = 195
  Top = 178
  Height = 453
  Width = 582
  object CDSOCCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'TipoCpbte'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPOCCab'
    Left = 72
    Top = 16
    object CDSOCCabID_OC: TIntegerField
      FieldName = 'ID_OC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSOCCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      FixedChar = True
      Size = 2
    end
    object CDSOCCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      FixedChar = True
      Size = 2
    end
    object CDSOCCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSOCCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSOCCabLETRA: TStringField
      FieldName = 'LETRA'
      Size = 1
    end
    object CDSOCCabSUC: TStringField
      FieldName = 'SUC'
      OnSetText = CDSOCCabSUCSetText
      Size = 4
    end
    object CDSOCCabNUMERO: TStringField
      FieldName = 'NUMERO'
      OnSetText = CDSOCCabNUMEROSetText
      Size = 8
    end
    object CDSOCCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSOCCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSOCCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object CDSOCCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object CDSOCCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSOCCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
    end
    object CDSOCCabCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSOCCabFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object CDSOCCabFECHAVTO: TDateTimeField
      FieldName = 'FECHAVTO'
    end
    object CDSOCCabCONDICIONCOMPRA: TIntegerField
      FieldName = 'CONDICIONCOMPRA'
    end
    object CDSOCCabANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object CDSOCCabN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
    end
    object CDSOCCabNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
    end
    object CDSOCCabNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
    end
    object CDSOCCabDSTO: TFloatField
      FieldName = 'DSTO'
    end
    object CDSOCCabDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
    end
    object CDSOCCabNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
    end
    object CDSOCCabNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
    end
    object CDSOCCabIMPORTEEXCLUIDO1: TFloatField
      FieldName = 'IMPORTEEXCLUIDO1'
    end
    object CDSOCCabIMPORTEEXCLUIDO2: TFloatField
      FieldName = 'IMPORTEEXCLUIDO2'
    end
    object CDSOCCabNETOMONOTRIBUTO1: TFloatField
      FieldName = 'NETOMONOTRIBUTO1'
    end
    object CDSOCCabNETOMONOTRIBUTO2: TFloatField
      FieldName = 'NETOMONOTRIBUTO2'
    end
    object CDSOCCabTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object CDSOCCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Size = 1
    end
    object CDSOCCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSOCCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object CDSOCCabAUTORIZO: TStringField
      FieldName = 'AUTORIZO'
      Size = 6
    end
    object CDSOCCabREALIZO: TStringField
      FieldName = 'REALIZO'
      Size = 6
    end
    object CDSOCCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object CDSOCCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Size = 1
    end
    object CDSOCCabESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object CDSOCCabFECHAAUTORIZACION: TDateTimeField
      FieldName = 'FECHAAUTORIZACION'
    end
    object CDSOCCabFECHACUMPLIDA: TDateTimeField
      FieldName = 'FECHACUMPLIDA'
    end
    object CDSOCCabOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 1
    end
    object CDSOCCabNOTAS: TStringField
      FieldName = 'NOTAS'
      Size = 200
    end
    object CDSOCCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object CDSOCCabTRANSPORTE: TIntegerField
      FieldName = 'TRANSPORTE'
    end
    object CDSOCCabTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object CDSOCCabMUESTRACONDCOMPRA: TStringField
      FieldName = 'MUESTRACONDCOMPRA'
    end
    object CDSOCCabMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      Size = 25
    end
    object CDSOCCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Size = 35
    end
    object CDSOCCabMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      Size = 15
    end
    object CDSOCCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
    end
    object CDSOCCabMUESTRAREALIZO: TStringField
      FieldName = 'MUESTRAREALIZO'
      Size = 50
    end
    object CDSOCCabMUESTRAAUTORIZO: TStringField
      FieldName = 'MUESTRAAUTORIZO'
      Size = 50
    end
  end
  object DSPOCCab: TDataSetProvider
    DataSet = DMMain.QOCCab_Ext
    Left = 128
    Top = 16
  end
  object CDSOCDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPOCDet'
    Left = 72
    Top = 72
    object CDSOCDetID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSOCDetID_CABOC: TIntegerField
      FieldName = 'ID_CABOC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSOCDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSOCDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSOCDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSOCDetRENGLON: TFloatField
      FieldName = 'RENGLON'
    end
    object CDSOCDetFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object CDSOCDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Size = 8
    end
    object CDSOCDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSOCDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object CDSOCDetCANTIDADPEDIDA: TFloatField
      FieldName = 'CANTIDADPEDIDA'
    end
    object CDSOCDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
    end
    object CDSOCDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
    end
    object CDSOCDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
    end
    object CDSOCDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Size = 1
    end
    object CDSOCDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
    end
    object CDSOCDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
    end
    object CDSOCDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
    end
    object CDSOCDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
    end
    object CDSOCDetSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSOCDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object CDSOCDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object CDSOCDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Size = 1
    end
    object CDSOCDetTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object CDSOCDetID_COMP_REC: TIntegerField
      FieldName = 'ID_COMP_REC'
    end
    object CDSOCDetTIPO_COMP_REC: TStringField
      FieldName = 'TIPO_COMP_REC'
      FixedChar = True
      Size = 2
    end
    object CDSOCDetCLASE_COMP_REC: TStringField
      FieldName = 'CLASE_COMP_REC'
      FixedChar = True
      Size = 2
    end
    object CDSOCDetNRO_COMP_REC: TStringField
      FieldName = 'NRO_COMP_REC'
      Size = 13
    end
  end
  object CDSOCImpuesto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPOCImpuesto'
    Left = 72
    Top = 128
    object CDSOCImpuestoID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSOCImpuestoCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
    end
    object CDSOCImpuestoDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSOCImpuestoID_OCCAB: TIntegerField
      FieldName = 'ID_OCCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSOCImpuestoNETO: TFloatField
      FieldName = 'NETO'
    end
    object CDSOCImpuestoTASA: TFloatField
      FieldName = 'TASA'
    end
    object CDSOCImpuestoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
  end
  object CDSOCVtos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPOCVtos'
    Left = 80
    Top = 192
    object CDSOCVtosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSOCVtosID_OCCAB: TIntegerField
      FieldName = 'ID_OCCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSOCVtosDIAS: TSmallintField
      FieldName = 'DIAS'
    end
    object CDSOCVtosFECHA_VENCIMIEMTO: TDateTimeField
      FieldName = 'FECHA_VENCIMIEMTO'
    end
    object CDSOCVtosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
  end
  object DSPOCDet: TDataSetProvider
    DataSet = DMMain.QOCDet_Ext
    Left = 128
    Top = 72
  end
  object DSPOCImpuesto: TDataSetProvider
    DataSet = DMMain.QOCImpuestos_Ext
    Left = 128
    Top = 128
  end
  object DSPOCVtos: TDataSetProvider
    DataSet = DMMain.QOCVtos_Ext
    Left = 136
    Top = 192
  end
  object DSOCDet: TDataSource
    DataSet = CDSOCDet
    Left = 16
    Top = 72
  end
  object DSOCImpuesto: TDataSource
    DataSet = CDSOCImpuesto
    Left = 16
    Top = 128
  end
  object DSOCVtos: TDataSource
    DataSet = CDSOCVtos
    Left = 24
    Top = 192
  end
  object QBuscaComprob: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      
        'select * from comprobantes where sucursal=:suc and compra_venta=' +
        #39'C'#39' and'
      '(tipo_comprob='#39'OC'#39' )'
      ' '
      ' '
      '')
    Left = 28
    Top = 243
    ParamData = <
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptUnknown
      end>
  end
  object QTransportes: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select * from transportes order by nombre')
    Left = 296
    Top = 194
  end
  object DSTransportes: TDataSource
    DataSet = QTransportes
    Left = 224
    Top = 264
  end
end

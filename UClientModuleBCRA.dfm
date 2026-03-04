object CModuleBCRA: TCModuleBCRA
  OnDestroy = DataModuleDestroy
  Height = 334
  Width = 505
  object RESTClient: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 
      'http://192.168.50.253:8080/datasnap/rest/TServerMethods/GetChequ' +
      'esBCRA'
    Params = <>
    RaiseExceptionOn500 = False
    SynchronizedEvents = False
    Left = 32
    Top = 64
  end
  object RESTRequest: TRESTRequest
    Client = RESTClient
    Params = <
      item
        Name = 'cuit'
        Value = '20102184697'
      end>
    Response = RESTResponse
    SynchronizedEvents = False
    Left = 112
    Top = 56
  end
  object RESTResponse: TRESTResponse
    ContentType = 'application/json'
    Left = 200
    Top = 56
  end
  object RESTResponseDataSetAdapter: TRESTResponseDataSetAdapter
    Active = True
    Dataset = mtCheque
    FieldDefs = <>
    Response = RESTResponse
    Left = 216
    Top = 136
  end
  object mtCheque: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'cuit'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'nro_cheque'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'fecha_rechazo'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'monto'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'causal'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'muestracausa'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'fecha_levantamiento'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'ley25326_16'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'ley25326_38'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'cuit_personajuridica'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'pago_multa'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 344
    Top = 136
    object mtChequeid: TWideStringField
      FieldName = 'id'
      Size = 255
    end
    object mtChequecuit: TWideStringField
      FieldName = 'cuit'
      Size = 255
    end
    object mtChequenro_cheque: TWideStringField
      FieldName = 'nro_cheque'
      Size = 255
    end
    object mtChequefecha_rechazo: TWideStringField
      FieldName = 'fecha_rechazo'
      Size = 255
    end
    object mtChequemonto: TWideStringField
      FieldName = 'monto'
      Size = 255
    end
    object mtChequecausal: TWideStringField
      FieldName = 'causal'
      Size = 255
    end
    object mtChequemuestracausa: TWideStringField
      FieldName = 'muestracausa'
      Size = 255
    end
    object mtChequefecha_levantamiento: TWideStringField
      FieldName = 'fecha_levantamiento'
      Size = 255
    end
    object mtChequeley25326_16: TWideStringField
      FieldName = 'ley25326_16'
      Size = 255
    end
    object mtChequeley25326_38: TWideStringField
      FieldName = 'ley25326_38'
      Size = 255
    end
    object mtChequecuit_personajuridica: TWideStringField
      FieldName = 'cuit_personajuridica'
      Size = 255
    end
    object mtChequepago_multa: TWideStringField
      FieldName = 'pago_multa'
      Size = 255
    end
  end
end

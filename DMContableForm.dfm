object DMContable: TDMContable
  OnDestroy = DataModuleDestroy
  Height = 219
  Width = 454
  object QBuscadorCtasCont: TFDQuery
    Connection = fdcContables
    SQL.Strings = (
      'select * from asientoscuentas'
      'where tipocuenta='#39'C'#39
      'order by codigo')
    Left = 56
    Top = 128
    object QBuscadorCtasContID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscadorCtasContCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 15
    end
    object QBuscadorCtasContDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 40
    end
    object QBuscadorCtasContSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
    end
    object QBuscadorCtasContTIPOCUENTA: TStringField
      FieldName = 'TIPOCUENTA'
      Origin = 'TIPOCUENTA'
      FixedChar = True
      Size = 1
    end
    object QBuscadorCtasContSUMARIZA: TIntegerField
      FieldName = 'SUMARIZA'
      Origin = 'SUMARIZA'
    end
    object QBuscadorCtasContCOLUMNA: TSmallintField
      FieldName = 'COLUMNA'
      Origin = 'COLUMNA'
    end
    object QBuscadorCtasContSALDOINICIAL: TFloatField
      FieldName = 'SALDOINICIAL'
      Origin = 'SALDOINICIAL'
    end
    object QBuscadorCtasContDEBITOS: TFloatField
      FieldName = 'DEBITOS'
      Origin = 'DEBITOS'
    end
    object QBuscadorCtasContCREDITOS: TFloatField
      FieldName = 'CREDITOS'
      Origin = 'CREDITOS'
    end
    object QBuscadorCtasContCODSUM: TStringField
      FieldName = 'CODSUM'
      Origin = 'CODSUM'
      Size = 15
    end
    object QBuscadorCtasContCODANT: TStringField
      FieldName = 'CODANT'
      Origin = 'CODANT'
      Size = 15
    end
    object QBuscadorCtasContSTOCK: TStringField
      FieldName = 'STOCK'
      Origin = 'STOCK'
      FixedChar = True
      Size = 1
    end
    object QBuscadorCtasContMONETARIA: TStringField
      FieldName = 'MONETARIA'
      Origin = 'MONETARIA'
      FixedChar = True
      Size = 1
    end
    object QBuscadorCtasContIDCUENTAACTUALIZACION: TStringField
      FieldName = 'IDCUENTAACTUALIZACION'
      Origin = 'IDCUENTAACTUALIZACION'
      Size = 8
    end
    object QBuscadorCtasContRESULTADO: TStringField
      FieldName = 'RESULTADO'
      Origin = 'RESULTADO'
      FixedChar = True
      Size = 1
    end
    object QBuscadorCtasContIDCONSULTA: TIntegerField
      FieldName = 'IDCONSULTA'
      Origin = 'IDCONSULTA'
    end
    object QBuscadorCtasContORDEN: TIntegerField
      FieldName = 'ORDEN'
      Origin = 'ORDEN'
    end
  end
  object spABMCuenta: TFDStoredProc
    Connection = fdcContables
    StoredProcName = 'ABM_REALCION_CTAS'
    Left = 248
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 2
        Name = 'TABLA'
        DataType = ftString
        ParamType = ptInput
        Size = 45
      end
      item
        Position = 3
        Name = 'CUENTA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'SUBINDICE'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end>
  end
  object fdcContables: TFDConnection
    Params.Strings = (
      'Database=C:\Proyectos Delphi\ContableFD\Tabla Ib\PGC.FDB'
      'User_Name=sysdba'
      'Password=regulador'
      'SQLDialect=1'
      'DriverID=FB')
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtFmtBCD
        TargetDataType = dtDouble
      end>
    LoginPrompt = False
    Left = 48
    Top = 16
  end
  object QBuscaCta_Codigo: TFDQuery
    Connection = fdcContables
    SQL.Strings = (
      'select c.id from asientoscuentas c where c.codigo = :codigo')
    Left = 232
    Top = 120
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
        Value = Null
      end>
  end
end

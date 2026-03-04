object FormBuscarRecepcionesPendientes: TFormBuscarRecepcionesPendientes
  Left = 308
  Top = 188
  Caption = 'Recepciones Pendientes'
  ClientHeight = 732
  ClientWidth = 550
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 550
    Height = 555
    Align = alTop
    TabOrder = 0
    ExplicitTop = 1
    ExplicitWidth = 553
    object JvDBStatusLabel1: TJvDBStatusLabel
      Left = 8
      Top = 527
      Width = 96
      Height = 13
      DataSource = DSRecepDetalle
      Style = lsRecordNo
      Transparent = True
    end
    object JvDBStatusLabel2: TJvDBStatusLabel
      Left = 385
      Top = 233
      Width = 96
      Height = 13
      DataSource = DSRecepCab
      Style = lsRecordNo
      Transparent = True
    end
    object dbgRecepCab: TDBGrid
      Left = 8
      Top = 8
      Width = 529
      Height = 219
      Color = clMoneyGreen
      DataSource = DSRecepCab
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = dbgRecepCabDrawColumnCell
      OnDblClick = dbgRecepCabDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_RECMER'
          Title.Alignment = taCenter
          Title.Caption = 'Id'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHARECEPCION'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NROCPBTE'
          Title.Alignment = taCenter
          Title.Caption = 'Nro.de Recepci'#243'n'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 157
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROCESADA'
          Title.Alignment = taCenter
          Title.Caption = 'Procesada'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESRANUMEROOC'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 121
          Visible = True
        end>
    end
    object dbgRecepDet: TDBGrid
      Left = 8
      Top = 252
      Width = 529
      Height = 266
      Color = 16776176
      DataSource = DSRecepDetalle
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = dbgRecepDetDrawColumnCell
      OnDblClick = dbgRecepDetDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGOARTICULO'
          Title.Alignment = taCenter
          Title.Caption = 'Codigo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE'
          Title.Alignment = taCenter
          Title.Caption = 'Descripci'#243'n'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 329
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNIDAD'
          Title.Caption = 'Uni.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CANTIDAD'
          Title.Alignment = taCenter
          Title.Caption = 'Cant.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 77
          Visible = True
        end>
    end
    object btCerrar: TBitBtn
      Left = 462
      Top = 522
      Width = 75
      Height = 25
      Caption = '&Cerrar'
      TabOrder = 2
      OnClick = btCerrarClick
    end
  end
  object DSRecepCab: TDataSource
    DataSet = CDSRecepCab
    Left = 504
    Top = 48
  end
  object DSRecepDetalle: TDataSource
    DataSet = CDSRecepDet
    Left = 464
    Top = 280
  end
  object DSPRecepCab: TDataSetProvider
    DataSet = QRecepMercaCab
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 368
    Top = 49
  end
  object DSPRecepDet: TDataSetProvider
    DataSet = QRecepMercaDet
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 312
    Top = 217
  end
  object CDSRecepCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPRecepCab'
    AfterScroll = CDSRecepCabAfterScroll
    Left = 440
    Top = 41
    object CDSRecepCabID_RECMER: TIntegerField
      FieldName = 'ID_RECMER'
      Origin = 'ID_RECMER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSRecepCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSRecepCabORDENCOMPRA: TStringField
      FieldName = 'ORDENCOMPRA'
      Origin = 'ORDENCOMPRA'
      Size = 8
    end
    object CDSRecepCabPROCESADA: TStringField
      Alignment = taCenter
      FieldName = 'PROCESADA'
      Origin = 'PROCESADA'
      FixedChar = True
      Size = 1
    end
    object CDSRecepCabFECHARECEPCION: TSQLTimeStampField
      FieldName = 'FECHARECEPCION'
      Origin = 'FECHARECEPCION'
      Required = True
    end
    object CDSRecepCabID_ORDENCOMPRA: TIntegerField
      FieldName = 'ID_ORDENCOMPRA'
      Origin = 'ID_ORDENCOMPRA'
      ProviderFlags = []
    end
    object CDSRecepCabMUESRANUMEROOC: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nro.O.Comp.'
      FieldName = 'MUESRANUMEROOC'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      EditMask = 'a-0000-00000000;0;_'
      Size = 13
    end
  end
  object CDSRecepDet: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_CABREC'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TIPOCPBTE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CLASECPBTE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'NROCPBTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'CODIGOPROVEEDOR'
        Attributes = [faRequired]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'RENGLON'
        DataType = ftFloat
      end
      item
        Name = 'FECHARECEPCION'
        Attributes = [faRequired]
        DataType = ftTimeStamp
      end
      item
        Name = 'CODIGOARTICULO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'DETALLE'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'UNIDAD'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CANTIDAD'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'UNITARIO_TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'UNITARIO_EXENTO'
        DataType = ftFloat
      end
      item
        Name = 'UNITARIO_GRAVADO'
        DataType = ftFloat
      end
      item
        Name = 'DESGLOZAIVA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MODO_GRAVAMEN'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'IVA_TASA'
        DataType = ftFloat
      end
      item
        Name = 'TIPOIVA_TASA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'IVA_SOBRETASA'
        DataType = ftFloat
      end
      item
        Name = 'TIPOIVA_SOBRETASA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'COSTO_TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'COSTO_EXENTO'
        DataType = ftFloat
      end
      item
        Name = 'COSTO_GRAVADO'
        DataType = ftFloat
      end
      item
        Name = 'DESCUENTO'
        DataType = ftFloat
      end
      item
        Name = 'TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'DEPOSITO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'MARGEN'
        DataType = ftFloat
      end
      item
        Name = 'AFECTA_STOCK'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CALCULA_SOBRETASA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'COSTO_IMP_INTERNO'
        DataType = ftFloat
      end
      item
        Name = 'UNITARIO_IMP_INTERNO'
        DataType = ftFloat
      end
      item
        Name = 'CON_NRO_SERIE'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_FACTURA'
        DataType = ftInteger
      end
      item
        Name = 'NROFACTURA'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'MERCADERIA_CONSIGNACION'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CANTIDAD_SALDO'
        DataType = ftFloat
      end
      item
        Name = 'PRESENTACION_CANT'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'CANTIDAD_UNIDADES'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'CONTROL_TRAZABILIDAD'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPRecepDet'
    StoreDefs = True
    AfterPost = CDSRecepDetAfterPost
    AfterDelete = CDSRecepDetAfterPost
    Left = 392
    Top = 296
    object CDSRecepDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRecepDetID_CABREC: TIntegerField
      FieldName = 'ID_CABREC'
      Origin = 'ID_CABREC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRecepDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSRecepDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSRecepDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSRecepDetCODIGOPROVEEDOR: TStringField
      FieldName = 'CODIGOPROVEEDOR'
      Origin = 'CODIGOPROVEEDOR'
      Required = True
      Size = 6
    end
    object CDSRecepDetFECHARECEPCION: TSQLTimeStampField
      FieldName = 'FECHARECEPCION'
      Origin = 'FECHARECEPCION'
      Required = True
    end
    object CDSRecepDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object CDSRecepDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSRecepDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object CDSRecepDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSRecepDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSRecepDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object CDSRecepDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSRecepDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSRecepDetCON_NRO_SERIE: TStringField
      FieldName = 'CON_NRO_SERIE'
      Origin = 'CON_NRO_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSRecepDetID_FACTURA: TIntegerField
      FieldName = 'ID_FACTURA'
      Origin = 'ID_FACTURA'
    end
    object CDSRecepDetNROFACTURA: TStringField
      FieldName = 'NROFACTURA'
      Origin = 'NROFACTURA'
      Size = 13
    end
    object CDSRecepDetMERCADERIA_CONSIGNACION: TStringField
      FieldName = 'MERCADERIA_CONSIGNACION'
      Origin = 'MERCADERIA_CONSIGNACION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSRecepDetRENGLON: TFloatField
      FieldName = 'RENGLON'
      Origin = 'RENGLON'
    end
    object CDSRecepDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Origin = 'TIPOIVA_TASA'
      Required = True
    end
    object CDSRecepDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Origin = 'TIPOIVA_SOBRETASA'
      Required = True
    end
    object CDSRecepDetPRESENTACION_CANT: TFloatField
      FieldName = 'PRESENTACION_CANT'
      Origin = 'PRESENTACION_CANT'
      Required = True
    end
    object CDSRecepDetCONTROL_TRAZABILIDAD: TStringField
      FieldName = 'CONTROL_TRAZABILIDAD'
      Origin = 'CONTROL_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSRecepDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
      Origin = 'IVA_SOBRETASA'
    end
    object CDSRecepDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      Required = True
    end
    object CDSRecepDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
    end
    object CDSRecepDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
      Origin = 'UNITARIO_EXENTO'
    end
    object CDSRecepDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
      Origin = 'UNITARIO_GRAVADO'
    end
    object CDSRecepDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
    end
    object CDSRecepDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
    end
    object CDSRecepDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
    end
    object CDSRecepDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
    end
    object CDSRecepDetDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
    end
    object CDSRecepDetTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object CDSRecepDetMARGEN: TFloatField
      FieldName = 'MARGEN'
      Origin = 'MARGEN'
    end
  end
  object QRecepMercaCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select r.id_recmer,r.nrocpbte,r.fecharecepcion,r.ordencompra,r.p' +
        'rocesada,r.id_ordencompra,oc.nrocpbte as MuesraNumeroOC  from re' +
        'cepmercacab r'
      'left join ordencompracab oc on oc.id_oc=r.id_ordencompra'
      ''
      'where r.codigo=:codigo and r.procesada='#39'N'#39)
    Left = 208
    Top = 56
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QRecepMercaCabID_RECMER: TIntegerField
      FieldName = 'ID_RECMER'
      Origin = 'ID_RECMER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRecepMercaCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QRecepMercaCabFECHARECEPCION: TSQLTimeStampField
      FieldName = 'FECHARECEPCION'
      Origin = 'FECHARECEPCION'
      Required = True
    end
    object QRecepMercaCabORDENCOMPRA: TStringField
      FieldName = 'ORDENCOMPRA'
      Origin = 'ORDENCOMPRA'
      Size = 8
    end
    object QRecepMercaCabPROCESADA: TStringField
      FieldName = 'PROCESADA'
      Origin = 'PROCESADA'
      FixedChar = True
      Size = 1
    end
    object QRecepMercaCabID_ORDENCOMPRA: TIntegerField
      FieldName = 'ID_ORDENCOMPRA'
      Origin = 'ID_ORDENCOMPRA'
    end
    object QRecepMercaCabMUESRANUMEROOC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESRANUMEROOC'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
  end
  object QRecepMercaDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select rd.* from recepmercadet rd '
      'where rd.id_cabrec = :id')
    Left = 192
    Top = 288
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRecepMercaDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRecepMercaDetID_CABREC: TIntegerField
      FieldName = 'ID_CABREC'
      Origin = 'ID_CABREC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRecepMercaDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QRecepMercaDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QRecepMercaDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QRecepMercaDetCODIGOPROVEEDOR: TStringField
      FieldName = 'CODIGOPROVEEDOR'
      Origin = 'CODIGOPROVEEDOR'
      Required = True
      Size = 6
    end
    object QRecepMercaDetRENGLON: TFloatField
      FieldName = 'RENGLON'
      Origin = 'RENGLON'
    end
    object QRecepMercaDetFECHARECEPCION: TSQLTimeStampField
      FieldName = 'FECHARECEPCION'
      Origin = 'FECHARECEPCION'
      Required = True
    end
    object QRecepMercaDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object QRecepMercaDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QRecepMercaDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object QRecepMercaDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      Required = True
    end
    object QRecepMercaDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
    end
    object QRecepMercaDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
      Origin = 'UNITARIO_EXENTO'
    end
    object QRecepMercaDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
      Origin = 'UNITARIO_GRAVADO'
    end
    object QRecepMercaDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRecepMercaDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRecepMercaDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
    end
    object QRecepMercaDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Origin = 'TIPOIVA_TASA'
      Required = True
    end
    object QRecepMercaDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
      Origin = 'IVA_SOBRETASA'
    end
    object QRecepMercaDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Origin = 'TIPOIVA_SOBRETASA'
      Required = True
    end
    object QRecepMercaDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
    end
    object QRecepMercaDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
    end
    object QRecepMercaDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
    end
    object QRecepMercaDetDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
    end
    object QRecepMercaDetTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QRecepMercaDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QRecepMercaDetMARGEN: TFloatField
      FieldName = 'MARGEN'
      Origin = 'MARGEN'
    end
    object QRecepMercaDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRecepMercaDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRecepMercaDetCOSTO_IMP_INTERNO: TFloatField
      FieldName = 'COSTO_IMP_INTERNO'
      Origin = 'COSTO_IMP_INTERNO'
    end
    object QRecepMercaDetUNITARIO_IMP_INTERNO: TFloatField
      FieldName = 'UNITARIO_IMP_INTERNO'
      Origin = 'UNITARIO_IMP_INTERNO'
    end
    object QRecepMercaDetCON_NRO_SERIE: TStringField
      FieldName = 'CON_NRO_SERIE'
      Origin = 'CON_NRO_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRecepMercaDetID_FACTURA: TIntegerField
      FieldName = 'ID_FACTURA'
      Origin = 'ID_FACTURA'
    end
    object QRecepMercaDetNROFACTURA: TStringField
      FieldName = 'NROFACTURA'
      Origin = 'NROFACTURA'
      Size = 13
    end
    object QRecepMercaDetMERCADERIA_CONSIGNACION: TStringField
      FieldName = 'MERCADERIA_CONSIGNACION'
      Origin = 'MERCADERIA_CONSIGNACION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRecepMercaDetCANTIDAD_SALDO: TFloatField
      FieldName = 'CANTIDAD_SALDO'
      Origin = 'CANTIDAD_SALDO'
    end
    object QRecepMercaDetPRESENTACION_CANT: TFloatField
      FieldName = 'PRESENTACION_CANT'
      Origin = 'PRESENTACION_CANT'
      Required = True
    end
    object QRecepMercaDetCANTIDAD_UNIDADES: TFloatField
      FieldName = 'CANTIDAD_UNIDADES'
      Origin = 'CANTIDAD_UNIDADES'
      Required = True
    end
    object QRecepMercaDetCONTROL_TRAZABILIDAD: TStringField
      FieldName = 'CONTROL_TRAZABILIDAD'
      Origin = 'CONTROL_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
end

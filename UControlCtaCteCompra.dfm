inherited FormABMBase1: TFormABMBase1
  Left = 262
  Top = 123
  Caption = 'FormABMBase1'
  ClientHeight = 577
  ClientWidth = 631
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 631
    Height = 449
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Facturas'
    end
    object Label2: TLabel
      Left = 8
      Top = 256
      Width = 94
      Height = 13
      Caption = 'Movimientos de C.C'
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 24
      Width = 401
      Height = 221
      DataSource = DSFacturas
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_FC'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPOCPBTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLASECPBTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NROCPBTE'
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 11
      Top = 272
      Width = 526
      Height = 89
      DataSource = DSMovimientos
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_CPBTE'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_MOVCCCOMPRA'
          Title.Caption = 'ID'
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE'
          Width = 133
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEBE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HABER'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SALDO'
          Visible = True
        end>
    end
    object ceCliente: TComboEdit
      Left = 216
      Top = 384
      Width = 73
      Height = 21
      ClickKey = 16397
      GlyphKind = gkEllipsis
      ButtonWidth = 16
      NumGlyphs = 1
      TabOrder = 2
      OnButtonClick = BuscarClienteExecute
    end
    object edNombreCliente: TEdit
      Left = 296
      Top = 384
      Width = 257
      Height = 21
      Color = clInfoBk
      Enabled = False
      TabOrder = 3
    end
  end
  inherited ToolBar1: TToolBar
    Top = 449
    Width = 631
    inherited btNuevo: TBitBtn
      Visible = False
    end
    inherited btCancelar: TBitBtn
      Visible = False
    end
    inherited btConfirma: TBitBtn
      Visible = False
    end
    inherited btModificar: TBitBtn
      Visible = False
    end
    inherited btBorrar: TBitBtn
      Visible = False
    end
  end
  inherited Panel1: TPanel
    Top = 482
    Width = 631
  end
  inherited ActionList1: TActionList
    object BuscarCliente: TAction
      Caption = 'BuscarCliente'
      OnExecute = BuscarClienteExecute
    end
  end
  inherited QUltimoCodigo: TQuery
    Left = 16
    Top = 288
  end
  inherited FormStorage1: TFormStorage
    Left = 336
    Top = 184
  end
  inherited wwBuscador: TwwLookupDialog
    Left = 408
    Top = 8
  end
  inherited MPSAutoSize1: TMPSAutoSize
    Left = 376
    Top = 88
  end
  object QOPagos: TQuery
    SQL.Strings = (
      'select * from ordenpago where id_op=:id_op')
    Left = 336
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_op'
        ParamType = ptUnknown
      end>
  end
  object DSFacturas: TDataSource
    DataSet = CDSFacturas
    Left = 40
    Top = 328
  end
  object DSMovimientos: TDataSource
    DataSet = CDSMovimientos
    Left = 136
    Top = 328
  end
  object QFacturas: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select * from fcvtacab where codigo=:codigo')
    Left = 48
    Top = 504
    ParamData = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object QFacturasID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'DBMAIN.FCVTACAB.ID_FC'
    end
    object QFacturasTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'DBMAIN.FCVTACAB.TIPOCPBTE'
      Size = 2
    end
    object QFacturasCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'DBMAIN.FCVTACAB.CLASECPBTE'
      Size = 2
    end
    object QFacturasNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'DBMAIN.FCVTACAB.NROCPBTE'
      Size = 13
    end
    object QFacturasCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'DBMAIN.FCVTACAB.CODIGO'
      Size = 6
    end
    object QFacturasLETRAFAC: TStringField
      FieldName = 'LETRAFAC'
      Origin = 'DBMAIN.FCVTACAB.LETRAFAC'
      Size = 1
    end
    object QFacturasSUCFAC: TStringField
      FieldName = 'SUCFAC'
      Origin = 'DBMAIN.FCVTACAB.SUCFAC'
      Size = 4
    end
    object QFacturasNUMEROFAC: TStringField
      FieldName = 'NUMEROFAC'
      Origin = 'DBMAIN.FCVTACAB.NUMEROFAC'
      Size = 8
    end
    object QFacturasNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'DBMAIN.FCVTACAB.NOMBRE'
      Size = 35
    end
    object QFacturasRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'DBMAIN.FCVTACAB.RAZONSOCIAL'
      Size = 35
    end
    object QFacturasDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DBMAIN.FCVTACAB.DIRECCION'
      Size = 35
    end
    object QFacturasCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'DBMAIN.FCVTACAB.CPOSTAL'
      Size = 8
    end
    object QFacturasLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'DBMAIN.FCVTACAB.LOCALIDAD'
      Size = 15
    end
    object QFacturasTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Origin = 'DBMAIN.FCVTACAB.TIPOIVA'
    end
    object QFacturasCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'DBMAIN.FCVTACAB.CUIT'
      Size = 13
    end
    object QFacturasFECHAVTA: TDateTimeField
      FieldName = 'FECHAVTA'
      Origin = 'DBMAIN.FCVTACAB.FECHAVTA'
    end
    object QFacturasFECHAVTO: TDateTimeField
      FieldName = 'FECHAVTO'
      Origin = 'DBMAIN.FCVTACAB.FECHAVTO'
    end
    object QFacturasCONDICIONVTA: TIntegerField
      FieldName = 'CONDICIONVTA'
      Origin = 'DBMAIN.FCVTACAB.CONDICIONVTA'
    end
    object QFacturasANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'DBMAIN.FCVTACAB.ANULADO'
      Size = 1
    end
    object QFacturasNRORTO: TStringField
      FieldName = 'NRORTO'
      Origin = 'DBMAIN.FCVTACAB.NRORTO'
    end
    object QFacturasN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
      Origin = 'DBMAIN.FCVTACAB.N_OPERACION2'
    end
    object QFacturasVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'DBMAIN.FCVTACAB.VENDEDOR'
      Size = 3
    end
    object QFacturasNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
      Origin = 'DBMAIN.FCVTACAB.NETOGRAV1'
    end
    object QFacturasNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
      Origin = 'DBMAIN.FCVTACAB.NETOGRAV2'
    end
    object QFacturasDSTO: TFloatField
      FieldName = 'DSTO'
      Origin = 'DBMAIN.FCVTACAB.DSTO'
    end
    object QFacturasDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
      Origin = 'DBMAIN.FCVTACAB.DSTOIMPORTE'
    end
    object QFacturasNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
      Origin = 'DBMAIN.FCVTACAB.NETOEXEN1'
    end
    object QFacturasNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
      Origin = 'DBMAIN.FCVTACAB.NETOEXEN2'
    end
    object QFacturasTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'DBMAIN.FCVTACAB.TOTAL'
    end
    object QFacturasDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DBMAIN.FCVTACAB.DEBE'
    end
    object QFacturasIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Origin = 'DBMAIN.FCVTACAB.IMPRESO'
      Size = 1
    end
    object QFacturasOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Origin = 'DBMAIN.FCVTACAB.OBSERVACION1'
      Size = 60
    end
    object QFacturasOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Origin = 'DBMAIN.FCVTACAB.OBSERVACION2'
      Size = 60
    end
    object QFacturasCPTE_MANUAL: TStringField
      FieldName = 'CPTE_MANUAL'
      Origin = 'DBMAIN.FCVTACAB.CPTE_MANUAL'
      Size = 1
    end
    object QFacturasSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'DBMAIN.FCVTACAB.SUCURSAL'
    end
    object QFacturasFACTURANRO: TStringField
      FieldName = 'FACTURANRO'
      Origin = 'DBMAIN.FCVTACAB.FACTURANRO'
      Size = 13
    end
    object QFacturasZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'DBMAIN.FCVTACAB.ZONA'
    end
    object QFacturasLDR: TIntegerField
      FieldName = 'LDR'
      Origin = 'DBMAIN.FCVTACAB.LDR'
    end
    object QFacturasDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DBMAIN.FCVTACAB.DEPOSITO'
    end
    object QFacturasCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'DBMAIN.FCVTACAB.CALCULA_SOBRETASA'
      Size = 1
    end
    object QFacturasDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DBMAIN.FCVTACAB.DESGLOZAIVA'
      Size = 1
    end
    object QFacturasNROENTREGA: TIntegerField
      FieldName = 'NROENTREGA'
      Origin = 'DBMAIN.FCVTACAB.NROENTREGA'
    end
    object QFacturasINGRESA_A_CTACTE: TStringField
      FieldName = 'INGRESA_A_CTACTE'
      Origin = 'DBMAIN.FCVTACAB.INGRESA_A_CTACTE'
      Size = 1
    end
    object QFacturasINGRESA_LIBRO_IVA: TStringField
      FieldName = 'INGRESA_LIBRO_IVA'
      Origin = 'DBMAIN.FCVTACAB.INGRESA_LIBRO_IVA'
      Size = 1
    end
  end
  object QMovimientos: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select * from movccvta where id_cpbte=:id')
    Left = 136
    Top = 504
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    object QMovimientosTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'DBMAIN.MOVCCVTA.TIPOCPBTE'
      Size = 2
    end
    object QMovimientosID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'DBMAIN.MOVCCVTA.ID_CPBTE'
    end
    object QMovimientosID_MOVCCVTA: TIntegerField
      FieldName = 'ID_MOVCCVTA'
      Origin = 'DBMAIN.MOVCCVTA.ID_MOVCCVTA'
    end
    object QMovimientosCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'DBMAIN.MOVCCVTA.CLIENTE'
      Size = 6
    end
    object QMovimientosFECHAVTA: TDateTimeField
      FieldName = 'FECHAVTA'
      Origin = 'DBMAIN.MOVCCVTA.FECHAVTA'
    end
    object QMovimientosFECHAVTO: TDateTimeField
      FieldName = 'FECHAVTO'
      Origin = 'DBMAIN.MOVCCVTA.FECHAVTO'
    end
    object QMovimientosCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'DBMAIN.MOVCCVTA.CLASECPBTE'
      Size = 2
    end
    object QMovimientosNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'DBMAIN.MOVCCVTA.NROCPBTE'
      Size = 13
    end
    object QMovimientosDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DBMAIN.MOVCCVTA.DEBE'
    end
    object QMovimientosHABER: TFloatField
      FieldName = 'HABER'
      Origin = 'DBMAIN.MOVCCVTA.HABER'
    end
    object QMovimientosSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'DBMAIN.MOVCCVTA.SALDO'
    end
    object QMovimientosDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DBMAIN.MOVCCVTA.DETALLE'
    end
  end
  object DSPFacturas: TDataSetProvider
    DataSet = QFacturas
    Constraints = True
    Left = 48
    Top = 432
  end
  object DSPMovimientos: TDataSetProvider
    DataSet = QMovimientos
    Constraints = True
    Left = 136
    Top = 432
  end
  object CDSFacturas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPFacturas'
    Left = 48
    Top = 376
    object CDSFacturasID_FC: TIntegerField
      FieldName = 'ID_FC'
    end
    object CDSFacturasTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSFacturasCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSFacturasNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSFacturasCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSFacturasLETRAFAC: TStringField
      FieldName = 'LETRAFAC'
      Size = 1
    end
    object CDSFacturasSUCFAC: TStringField
      FieldName = 'SUCFAC'
      Size = 4
    end
    object CDSFacturasNUMEROFAC: TStringField
      FieldName = 'NUMEROFAC'
      Size = 8
    end
    object CDSFacturasNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSFacturasRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSFacturasDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object CDSFacturasCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object CDSFacturasLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSFacturasTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
    end
    object CDSFacturasCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSFacturasFECHAVTA: TDateTimeField
      FieldName = 'FECHAVTA'
    end
    object CDSFacturasFECHAVTO: TDateTimeField
      FieldName = 'FECHAVTO'
    end
    object CDSFacturasCONDICIONVTA: TIntegerField
      FieldName = 'CONDICIONVTA'
    end
    object CDSFacturasANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object CDSFacturasNRORTO: TStringField
      FieldName = 'NRORTO'
    end
    object CDSFacturasN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
    end
    object CDSFacturasVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 3
    end
    object CDSFacturasNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
    end
    object CDSFacturasNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
    end
    object CDSFacturasDSTO: TFloatField
      FieldName = 'DSTO'
    end
    object CDSFacturasDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
    end
    object CDSFacturasNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
    end
    object CDSFacturasNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
    end
    object CDSFacturasTOTAL: TFloatField
      FieldName = 'TOTAL'
      currency = True
    end
    object CDSFacturasDEBE: TFloatField
      FieldName = 'DEBE'
    end
    object CDSFacturasIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Size = 1
    end
    object CDSFacturasOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Size = 60
    end
    object CDSFacturasOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Size = 60
    end
    object CDSFacturasCPTE_MANUAL: TStringField
      FieldName = 'CPTE_MANUAL'
      Size = 1
    end
    object CDSFacturasSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSFacturasFACTURANRO: TStringField
      FieldName = 'FACTURANRO'
      Size = 13
    end
    object CDSFacturasZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object CDSFacturasLDR: TIntegerField
      FieldName = 'LDR'
    end
    object CDSFacturasDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object CDSFacturasCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object CDSFacturasDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Size = 1
    end
    object CDSFacturasNROENTREGA: TIntegerField
      FieldName = 'NROENTREGA'
    end
    object CDSFacturasINGRESA_A_CTACTE: TStringField
      FieldName = 'INGRESA_A_CTACTE'
      Size = 1
    end
    object CDSFacturasINGRESA_LIBRO_IVA: TStringField
      FieldName = 'INGRESA_LIBRO_IVA'
      Size = 1
    end
  end
  object CDSMovimientos: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CPBTE'
    MasterFields = 'ID_FC'
    MasterSource = DSFacturas
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPMovimientos'
    Left = 136
    Top = 384
    object CDSMovimientosTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSMovimientosID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
    end
    object CDSMovimientosID_MOVCCVTA: TIntegerField
      FieldName = 'ID_MOVCCVTA'
    end
    object CDSMovimientosCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 6
    end
    object CDSMovimientosFECHAVTA: TDateTimeField
      FieldName = 'FECHAVTA'
    end
    object CDSMovimientosFECHAVTO: TDateTimeField
      FieldName = 'FECHAVTO'
    end
    object CDSMovimientosCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSMovimientosNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSMovimientosDEBE: TFloatField
      FieldName = 'DEBE'
    end
    object CDSMovimientosHABER: TFloatField
      FieldName = 'HABER'
    end
    object CDSMovimientosSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object CDSMovimientosDETALLE: TStringField
      FieldName = 'DETALLE'
    end
  end
  object DSPClientes: TDataSetProvider
    DataSet = DMMain.wwQClientes
    Constraints = True
    Left = 360
    Top = 320
  end
  object wwBuscadorCliente: TwwLookupDialog
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = QClientes
    Caption = 'Lookup'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 488
    Top = 360
  end
  object CDSClientes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPClientes'
    Left = 416
    Top = 320
    object CDSClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSClientesDIRECCION_PARTICULAR: TStringField
      FieldName = 'DIRECCION_PARTICULAR'
      Size = 35
    end
    object CDSClientesDIRECCION_COMERCIAL: TStringField
      FieldName = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object CDSClientesTELEFONO_PARTICULAR: TStringField
      FieldName = 'TELEFONO_PARTICULAR'
      Size = 10
    end
    object CDSClientesTELEFONO_COMERCIAL_1: TStringField
      FieldName = 'TELEFONO_COMERCIAL_1'
      Size = 10
    end
    object CDSClientesTELEFONO_COMERCIAL_2: TStringField
      FieldName = 'TELEFONO_COMERCIAL_2'
      Size = 10
    end
    object CDSClientesTELEFONO_CELULAR: TStringField
      FieldName = 'TELEFONO_CELULAR'
      Size = 11
    end
    object CDSClientesID_COD_POSTAL: TIntegerField
      FieldName = 'ID_COD_POSTAL'
    end
    object CDSClientesCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object CDSClientesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSClientesCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
    end
    object CDSClientesEMITE_REMITO: TStringField
      FieldName = 'EMITE_REMITO'
      Size = 1
    end
    object CDSClientesEMITE_FACTURA: TStringField
      FieldName = 'EMITE_FACTURA'
      Size = 1
    end
    object CDSClientesNRO_DE_CUIT: TStringField
      FieldName = 'NRO_DE_CUIT'
      Size = 13
    end
    object CDSClientesACTIVO: TStringField
      FieldName = 'ACTIVO'
      Size = 1
    end
    object CDSClientesLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
    end
    object CDSClientesSALDOINICIAL: TFloatField
      FieldName = 'SALDOINICIAL'
    end
    object CDSClientesOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 1
    end
    object CDSClientesFECHAULTIMACOMPRA: TDateTimeField
      FieldName = 'FECHAULTIMACOMPRA'
    end
    object CDSClientesFECHAALTA: TDateTimeField
      FieldName = 'FECHAALTA'
    end
    object CDSClientesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSClientesZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object CDSClientesMUESTRATELEDISCADO: TStringField
      FieldName = 'MUESTRATELEDISCADO'
      Size = 6
    end
  end
  object QClientes: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      
        'SELECT C.Nombre, c.Razon_social,c.codigo, c.nro_de_cuit , c.Dire' +
        'ccion_Comercial, p.telediscado FROM Clientes C '
      'left join c_postal p on c.id_cod_postal=p.id_postal'
      'where (C.Activo='#39'S'#39')'
      'Order By c.Nombre')
    Left = 382
    Top = 508
    object QClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object QClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
    object QClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object QClientesNRO_DE_CUIT: TStringField
      FieldName = 'NRO_DE_CUIT'
      Size = 13
    end
    object QClientesDIRECCION_COMERCIAL: TStringField
      DisplayWidth = 35
      FieldName = 'DIRECCION_COMERCIAL'
      Visible = False
      Size = 35
    end
    object QClientesTELEDISCADO: TStringField
      DisplayWidth = 6
      FieldName = 'TELEDISCADO'
      Visible = False
      Size = 6
    end
  end
end

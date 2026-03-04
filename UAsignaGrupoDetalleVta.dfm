object FormAgrupamientoDetalle: TFormAgrupamientoDetalle
  Left = 194
  Top = 162
  Caption = 'Agrupamiento Detalle'
  ClientHeight = 582
  ClientWidth = 839
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pnGrupo: TPanel
    Left = 8
    Top = 8
    Width = 665
    Height = 401
    Caption = 'pnGrupo'
    TabOrder = 0
    object btGravar: TBitBtn
      Left = 484
      Top = 360
      Width = 75
      Height = 25
      Caption = 'Grabar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btGravarClick
    end
    object btSalir: TBitBtn
      Left = 565
      Top = 360
      Width = 75
      Height = 25
      Caption = 'Salir'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btSalirClick
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 17
      Width = 650
      Height = 337
      DataSource = DSDetalle
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyDown = DBGrid1KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGOARTICULO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 282
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRAGRUPO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 255
          Visible = True
        end>
    end
  end
  object DSDetalle: TDataSource
    DataSet = CDSDetalle
    Left = 584
    Top = 448
  end
  object DSPDetalle: TDataSetProvider
    DataSet = QDetalle
    Options = []
    Left = 448
    Top = 440
  end
  object CDSDetalle: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPDetalle'
    BeforeInsert = CDSDetalleBeforeInsert
    Left = 528
    Top = 448
    object CDSDetalleID: TIntegerField
      FieldName = 'ID'
      Origin = 'DBMAIN.FCVTADET.ID'
    end
    object CDSDetalleID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      Origin = 'DBMAIN.FCVTADET.ID_CABFAC'
    end
    object CDSDetalleCODIGOARTICULO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGOARTICULO'
      Origin = 'DBMAIN.FCVTADET.CODIGOARTICULO'
      Size = 8
    end
    object CDSDetalleDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DBMAIN.FCVTADET.DETALLE'
      Size = 45
    end
    object CDSDetalleGRUPO_DETALLE: TIntegerField
      FieldName = 'GRUPO_DETALLE'
      Origin = 'DBMAIN.FCVTADET.GRUPO_DETALLE'
    end
    object CDSDetalleMUESTRAGRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldKind = fkLookup
      FieldName = 'MUESTRAGRUPO'
      LookupDataSet = CDSGrupos
      LookupKeyFields = 'ID'
      LookupResultField = 'GRUPO'
      KeyFields = 'GRUPO_DETALLE'
      Size = 40
      Lookup = True
    end
  end
  object QDetalle: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from  fcvtadet where id_cabfac=:id')
    Left = 376
    Top = 440
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QDetalleID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QDetalleID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      Required = True
    end
    object QDetalleTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 4
    end
    object QDetalleCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 4
    end
    object QDetalleNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QDetalleRENGLON: TFloatField
      FieldName = 'RENGLON'
    end
    object QDetalleFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Required = True
    end
    object QDetalleCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object QDetalleDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object QDetalleUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object QDetalleCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object QDetalleDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QDetalleMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QDetalleTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Required = True
    end
    object QDetalleTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Required = True
    end
    object QDetalleDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object QDetalleMARGEN: TFloatField
      FieldName = 'MARGEN'
    end
    object QDetalleAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QDetalleCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QDetalleGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      FixedChar = True
      Size = 1
    end
    object QDetalleCON_NRO_SERIE: TStringField
      FieldName = 'CON_NRO_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QDetalleCON_CODIGO_BARRA: TStringField
      FieldName = 'CON_CODIGO_BARRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QDetalleIB_TASA: TFloatField
      FieldName = 'IB_TASA'
      Required = True
    end
    object QDetalleTIPOIB_TASA: TIntegerField
      FieldName = 'TIPOIB_TASA'
      Required = True
    end
    object QDetalleLOTE: TIntegerField
      FieldName = 'LOTE'
    end
    object QDetallePRECIO_EDITABLE: TStringField
      FieldName = 'PRECIO_EDITABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QDetalleID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Required = True
    end
    object QDetalleCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Required = True
    end
    object QDetalleDETALLE_ADICIONAL: TStringField
      FieldName = 'DETALLE_ADICIONAL'
      Size = 100
    end
    object QDetalleGRUPO_DETALLE: TIntegerField
      FieldName = 'GRUPO_DETALLE'
    end
    object QDetalleCTA_ORDEN_ID_RECEPCION: TIntegerField
      FieldName = 'CTA_ORDEN_ID_RECEPCION'
    end
    object QDetalleCTA_ORDEN_NROCPBTE: TStringField
      FieldName = 'CTA_ORDEN_NROCPBTE'
      Size = 13
    end
    object QDetalleCTA_ORDEN_TIPOCPBTE: TStringField
      FieldName = 'CTA_ORDEN_TIPOCPBTE'
      Size = 4
    end
    object QDetalleCTA_ORDEN_CALSECPBTE: TStringField
      FieldName = 'CTA_ORDEN_CALSECPBTE'
      Size = 4
    end
    object QDetalleMESES_GTIA: TIntegerField
      FieldName = 'MESES_GTIA'
      Required = True
    end
  end
  object QGrupos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from GRUPOS_DETALLEFACTURACION'
      'order by id')
    Left = 120
    Top = 424
  end
  object CDSGrupos: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPGrupos'
    Left = 264
    Top = 424
    object CDSGruposID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSGruposGRUPO: TStringField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      Size = 40
    end
  end
  object DSPGrupos: TDataSetProvider
    DataSet = QGrupos
    Options = []
    Left = 192
    Top = 424
  end
end

inherited FormGarantiaEnvios: TFormGarantiaEnvios
  Left = 188
  Top = 192
  Caption = 'Remito de Envio de Stock por Garantías'
  ClientHeight = 723
  ClientWidth = 668
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 668
    Height = 361
    object pcDetalleFactura: TPageControl
      Left = 0
      Top = 97
      Width = 668
      Height = 256
      ActivePage = pagDetalle
      Align = alTop
      TabOrder = 0
      TabPosition = tpBottom
      object pagDetalle: TTabSheet
        Caption = 'Detalles'
        object Label17: TLabel
          Left = 7
          Top = 123
          Width = 99
          Height = 16
          Caption = 'Observaciones'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsItalic]
          ParentFont = False
        end
        object dbtCantidad: TDBText
          Left = 400
          Top = 208
          Width = 65
          Height = 17
          Alignment = taRightJustify
          DataField = 'CANTIDAD'
          DataSource = DSGtiaDet
        end
        object Label24: TLabel
          Left = 312
          Top = 208
          Width = 87
          Height = 13
          Caption = 'Cant.Comprada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label25: TLabel
          Left = 488
          Top = 208
          Width = 63
          Height = 13
          Caption = 'Ingresados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbCantidad: TLabel
          Left = 592
          Top = 208
          Width = 6
          Height = 13
          Caption = '0'
        end
        object dbeObs1: TDBEdit
          Left = 7
          Top = 139
          Width = 258
          Height = 21
          DataField = 'OBS'
          DataSource = DSBase
          TabOrder = 1
        end
        object DBGrillaDetalle: TDBGrid
          Left = 1
          Top = 1
          Width = 488
          Height = 112
          DataSource = DSGtiaDet
          FixedColor = 12639424
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = DBGrillaDetalleColEnter
          OnEditButtonClick = DBGrillaDetalleEditButtonClick
          OnEnter = DBGrillaDetalleEnter
          OnKeyPress = DBGrillaDetalleKeyPress
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 262
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'UNIDAD'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CANTIDAD'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clNavy
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 74
              Visible = True
            end>
        end
        object dbgSeries: TDBGrid
          Left = 296
          Top = 128
          Width = 337
          Height = 73
          Color = clAqua
          DataSource = DSAjusteSubDetalle
          FixedColor = 12639424
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEditButtonClick = dbgSeriesEditButtonClick
          OnKeyPress = dbgSeriesKeyPress
          Columns = <
            item
              ButtonStyle = cbsEllipsis
              Expanded = False
              FieldName = 'SERIE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Nro de Serie'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
      end
    end
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 668
      Height = 97
      Align = alTop
      TabOrder = 1
      object dbtMuestraComprob: TDBText
        Left = 342
        Top = 16
        Width = 115
        Height = 21
        DataField = 'MUESTRACOMPROBANTE'
        DataSource = DSBase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object DBText10: TDBText
        Left = 488
        Top = 19
        Width = 22
        Height = 17
        DataField = 'LETRA'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 6
        Top = 2
        Width = 30
        Height = 13
        Caption = 'Fecha'
      end
      object Label9: TLabel
        Left = 92
        Top = 1
        Width = 95
        Height = 13
        Caption = 'Sucursal de Compra'
      end
      object Label10: TLabel
        Left = 296
        Top = 2
        Width = 102
        Height = 13
        Caption = 'Tipo de Comprobante'
      end
      object Label11: TLabel
        Left = 516
        Top = 3
        Width = 101
        Height = 13
        Caption = 'Nro. de Comprobante'
      end
      object Label12: TLabel
        Left = 236
        Top = 44
        Width = 49
        Height = 13
        Caption = 'Proveedor'
      end
      object Label14: TLabel
        Left = 8
        Top = 44
        Width = 42
        Height = 13
        Caption = 'Depósito'
      end
      object dbeSuc: TDBEdit
        Left = 514
        Top = 16
        Width = 49
        Height = 24
        TabStop = False
        DataField = 'SUCRTO'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object dbeNumero: TDBEdit
        Left = 570
        Top = 16
        Width = 81
        Height = 24
        TabStop = False
        DataField = 'NUMRTO'
        DataSource = DSBase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object dbeNombre: TDBEdit
        Left = 310
        Top = 59
        Width = 289
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRAPROVEEDOR'
        DataSource = DSBase
        Enabled = False
        TabOrder = 9
      end
      object dbeSucursal: TDBEdit
        Left = 142
        Top = 16
        Width = 153
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRASUCURSAL'
        DataSource = DSBase
        Enabled = False
        TabOrder = 2
      end
      object RxDBECodigo: TRxDBComboEdit
        Left = 236
        Top = 59
        Width = 65
        Height = 21
        ClickKey = 16397
        DataField = 'PROVEEDOR'
        DataSource = DSBase
        GlyphKind = gkEllipsis
        ButtonWidth = 16
        NumGlyphs = 1
        TabOrder = 8
        OnButtonClick = BuscarProveedorExecute
        OnKeyDown = RxDBECodigoKeyDown
      end
      object RxDBESucursal: TRxDBComboEdit
        Left = 92
        Top = 16
        Width = 45
        Height = 21
        ClickKey = 16397
        DataField = 'SUCURSAL'
        DataSource = DSBase
        GlyphKind = gkEllipsis
        ButtonWidth = 16
        NumGlyphs = 1
        TabOrder = 1
        OnButtonClick = BuscarSucursalExecute
        OnKeyDown = RxDBESucursalKeyDown
      end
      object RxDBEDeposito: TRxDBComboEdit
        Left = 8
        Top = 60
        Width = 45
        Height = 21
        ClickKey = 16397
        DataField = 'DEPOSITO'
        DataSource = DSBase
        GlyphKind = gkEllipsis
        ButtonWidth = 16
        NumGlyphs = 1
        TabOrder = 6
        OnButtonClick = BuscarDepositoExecute
      end
      object dbeMuestraDeposito: TDBEdit
        Left = 66
        Top = 60
        Width = 153
        Height = 21
        TabStop = False
        Color = clInfoBk
        DataField = 'MUESTRADEPOSITO'
        DataSource = DSBase
        Enabled = False
        TabOrder = 7
      end
      object RxCTipoCpbte: TRxDBComboEdit
        Left = 297
        Top = 16
        Width = 42
        Height = 21
        ClickKey = 16397
        DataField = 'ID_TIPOCOMPROBANTE'
        DataSource = DSBase
        GlyphKind = gkEllipsis
        ButtonWidth = 15
        NumGlyphs = 1
        TabOrder = 3
        OnButtonClick = BuscarTipoCpbteExecute
        OnKeyDown = RxCTipoCpbteKeyDown
      end
      object dbeFecha: TDBDateEdit
        Left = 7
        Top = 16
        Width = 83
        Height = 21
        DataField = 'FECHAENVIO'
        DataSource = DSBase
        ButtonWidth = 16
        NumGlyphs = 2
        TabOrder = 0
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 361
    Width = 668
  end
  inherited Panel1: TPanel
    Top = 395
    Width = 668
    inherited sbEstado: TStatusBar
      Left = 200
    end
  end
  inherited ActionList1: TActionList
    Left = 504
    Top = 80
    object BuscarProveedor: TAction
      Caption = 'BuscarProveedor'
      OnExecute = BuscarProveedorExecute
    end
    object BuscarTipoCpbte: TAction
      Caption = 'BuscarTipoCpbte'
      OnExecute = BuscarTipoCpbteExecute
    end
    object BuscarSucursal: TAction
      Caption = 'BuscarSucursal'
      OnExecute = BuscarSucursalExecute
    end
    object BuscarDeposito: TAction
      Caption = 'BuscarDeposito'
      OnExecute = BuscarDepositoExecute
    end
    object BuscarArticulo: TAction
      Caption = 'BuscarArticulo'
      OnExecute = BuscarArticuloExecute
    end
    object Imprimir: TAction
      Caption = '&Imprimir'
      OnExecute = ImprimirExecute
    end
    object BuscarSerie: TAction
      Caption = 'BuscarSerie'
      OnExecute = BuscarSerieExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = CDSGtiaCab
  end
  inherited QUltimoCodigo: TQuery
    Left = 56
    Top = 200
  end
  inherited wwBuscador: TwwLookupDialog
    Left = 368
    Top = 24
  end
  inherited FormStorage1: TFormStorage
    Left = 288
    Top = 56
  end
  inherited QBrowse: TQuery
    Left = 136
  end
  object DSPGtiaCab: TDataSetProvider
    DataSet = QGtiaCab
    Constraints = True
    Left = 408
    Top = 128
  end
  object QGtiaCab: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select r.*,p.nombre as MuestraProveedor,'
      'cp.denominacion as MuestraComprobante,'
      'cp.id_comprobante as Id_TipoComprobante,'
      's.detalle as MuestraSucursal,'
      'd.nombre as MuestraDeposito  from rtogtia_envio_cab r'
      'left join depositos d  on d.id=r.deposito'
      'left join sucursal s on s.codigo=r.sucursal'
      'left join comprobantes cp on cp.clase_comprob=r.ClaseCpbte and'
      '          cp.letra=r.Letra and'
      '          cp.sucursal=r.sucursal and'
      '          cp.tipo_comprob=r.tipocpbte'
      'left join poveedor p on p.codigo=r.proveedor'
      'where r.id_rto=:id')
    Left = 484
    Top = 135
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    object QGtiaCabID_RTO: TIntegerField
      FieldName = 'ID_RTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QGtiaCabFECHAENVIO: TDateTimeField
      FieldName = 'FECHAENVIO'
    end
    object QGtiaCabLETRA: TStringField
      FieldName = 'LETRA'
      Size = 1
    end
    object QGtiaCabSUCRTO: TStringField
      FieldName = 'SUCRTO'
      Size = 4
    end
    object QGtiaCabNUMRTO: TStringField
      FieldName = 'NUMRTO'
      Size = 8
    end
    object QGtiaCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object QGtiaCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QGtiaCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object QGtiaCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QGtiaCabOBS: TStringField
      FieldName = 'OBS'
      Size = 120
    end
    object QGtiaCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object QGtiaCabPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 6
    end
    object QGtiaCabESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 1
    end
    object QGtiaCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object QGtiaCabMUESTRAPROVEEDOR: TStringField
      FieldName = 'MUESTRAPROVEEDOR'
      ProviderFlags = []
      Size = 35
    end
    object QGtiaCabMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object QGtiaCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
    end
    object QGtiaCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object QGtiaCabMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      ProviderFlags = []
      Size = 25
    end
  end
  object CDSGtiaCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPGtiaCab'
    OnNewRecord = CDSGtiaCabNewRecord
    Left = 332
    Top = 127
    object CDSGtiaCabID_RTO: TIntegerField
      FieldName = 'ID_RTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSGtiaCabFECHAENVIO: TDateTimeField
      FieldName = 'FECHAENVIO'
    end
    object CDSGtiaCabLETRA: TStringField
      FieldName = 'LETRA'
      Size = 1
    end
    object CDSGtiaCabSUCRTO: TStringField
      FieldName = 'SUCRTO'
      OnSetText = CDSGtiaCabSUCRTOSetText
      Size = 4
    end
    object CDSGtiaCabNUMRTO: TStringField
      FieldName = 'NUMRTO'
      OnSetText = CDSGtiaCabNUMRTOSetText
      Size = 8
    end
    object CDSGtiaCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      OnSetText = CDSGtiaCabSUCURSALSetText
    end
    object CDSGtiaCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSGtiaCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSGtiaCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSGtiaCabOBS: TStringField
      FieldName = 'OBS'
      Size = 120
    end
    object CDSGtiaCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      OnSetText = CDSGtiaCabDEPOSITOSetText
    end
    object CDSGtiaCabPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      OnSetText = CDSGtiaCabPROVEEDORSetText
      Size = 6
    end
    object CDSGtiaCabESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 1
    end
    object CDSGtiaCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object CDSGtiaCabMUESTRAPROVEEDOR: TStringField
      FieldName = 'MUESTRAPROVEEDOR'
      ProviderFlags = []
      Size = 35
    end
    object CDSGtiaCabMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object CDSGtiaCabID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
      OnSetText = CDSGtiaCabID_TIPOCOMPROBANTESetText
    end
    object CDSGtiaCabMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSGtiaCabMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      ProviderFlags = []
      Size = 25
    end
  end
  object CDSGtiaDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPGtiaDet'
    BeforeDelete = CDSGtiaDetBeforeDelete
    OnNewRecord = CDSGtiaDetNewRecord
    Left = 332
    Top = 208
    object CDSGtiaDetID_RTO_DET: TIntegerField
      FieldName = 'ID_RTO_DET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSGtiaDetID_RTO_CAB: TIntegerField
      FieldName = 'ID_RTO_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSGtiaDetFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object CDSGtiaDetPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 6
    end
    object CDSGtiaDetCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      OnSetText = CDSGtiaDetCODIGOSetText
      Size = 8
    end
    object CDSGtiaDetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSGtiaDetUNIDAD: TStringField
      DisplayLabel = 'Uni'
      FieldName = 'UNIDAD'
      Size = 3
    end
    object CDSGtiaDetCANTIDAD: TFloatField
      DisplayLabel = 'Cant.'
      FieldName = 'CANTIDAD'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
    end
    object CDSGtiaDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSGtiaDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object CDSGtiaDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSGtiaDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSGtiaDetAFECTASTOCK: TStringField
      FieldName = 'AFECTASTOCK'
      Size = 1
    end
    object CDSGtiaDetCON_NRO_SERIE: TStringField
      FieldName = 'CON_NRO_SERIE'
      FixedChar = True
      Size = 1
    end
  end
  object DSPGtiaDet: TDataSetProvider
    DataSet = QGtiaDet
    Constraints = True
    Left = 420
    Top = 223
  end
  object QGtiaDet: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select rd.* from  rtogtia_envio_det rd'
      'where rd.id_rto_cab=:id')
    Left = 492
    Top = 223
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    object QGtiaDetID_RTO_DET: TIntegerField
      FieldName = 'ID_RTO_DET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QGtiaDetID_RTO_CAB: TIntegerField
      FieldName = 'ID_RTO_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QGtiaDetFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object QGtiaDetPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 6
    end
    object QGtiaDetCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 8
    end
    object QGtiaDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object QGtiaDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object QGtiaDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object QGtiaDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QGtiaDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object QGtiaDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QGtiaDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object QGtiaDetAFECTASTOCK: TStringField
      FieldName = 'AFECTASTOCK'
      Size = 1
    end
    object QGtiaDetCON_NRO_SERIE: TStringField
      FieldName = 'CON_NRO_SERIE'
      FixedChar = True
      Size = 1
    end
  end
  object IBGCab: TIBGenerator
    Database = 'DBMain'
    GeneratorName = 'NEXT_ID_RTOGTIA_ENVIO_CAB'
    SystemGenerators = False
    Left = 564
    Top = 143
  end
  object DSGtiaDet: TDataSource
    DataSet = CDSGtiaDet
    Left = 268
    Top = 207
  end
  object IBGDet: TIBGenerator
    Database = 'DBMain'
    GeneratorName = 'NEXT_ID_RTOGTIA_ENVIO_DET'
    SystemGenerators = False
    Left = 564
    Top = 223
  end
  object QGtiaSubDetalle: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'Select * from RTOGTIA_ENVIO_SUBDET where Id_rtoCab= :id ')
    Left = 280
    Top = 473
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    object QGtiaSubDetalleID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QGtiaSubDetalleID_RTODET: TIntegerField
      FieldName = 'ID_RTODET'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QGtiaSubDetalleID_RTOCAB: TIntegerField
      FieldName = 'ID_RTOCAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QGtiaSubDetalleTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      FixedChar = True
      Size = 2
    end
    object QGtiaSubDetalleCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      FixedChar = True
      Size = 2
    end
    object QGtiaSubDetalleFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object QGtiaSubDetalleNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QGtiaSubDetalleCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Size = 8
    end
    object QGtiaSubDetalleSERIE: TStringField
      FieldName = 'SERIE'
      Size = 50
    end
    object QGtiaSubDetalleDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object QGtiaSubDetalleTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object DSPGtiaSubDet: TDataSetProvider
    DataSet = QGtiaSubDetalle
    Constraints = True
    Left = 368
    Top = 472
  end
  object CDSGtiaSubDetalle: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_RTODET'
    MasterFields = 'ID_RTO_DET'
    MasterSource = DSGtiaDet
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPGtiaSubDet'
    BeforeInsert = CDSGtiaSubDetalleBeforeInsert
    BeforeEdit = CDSGtiaSubDetalleBeforeDelete
    BeforePost = CDSGtiaSubDetalleBeforePost
    AfterPost = CDSGtiaSubDetalleAfterPost
    BeforeDelete = CDSGtiaSubDetalleBeforeDelete
    AfterDelete = CDSGtiaSubDetalleAfterDelete
    OnNewRecord = CDSGtiaSubDetalleNewRecord
    Left = 456
    Top = 472
    object CDSGtiaSubDetalleID: TIntegerField
      FieldName = 'ID'
    end
    object CDSGtiaSubDetalleID_RTODET: TIntegerField
      FieldName = 'ID_RTODET'
    end
    object CDSGtiaSubDetalleID_RTOCAB: TIntegerField
      FieldName = 'ID_RTOCAB'
    end
    object CDSGtiaSubDetalleTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      FixedChar = True
      Size = 2
    end
    object CDSGtiaSubDetalleCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      FixedChar = True
      Size = 2
    end
    object CDSGtiaSubDetalleFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object CDSGtiaSubDetalleNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSGtiaSubDetalleCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Size = 8
    end
    object CDSGtiaSubDetalleSERIE: TStringField
      FieldName = 'SERIE'
      OnSetText = CDSGtiaSubDetalleSERIESetText
      Size = 50
    end
    object CDSGtiaSubDetalleDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object CDSGtiaSubDetalleTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object DSAjusteSubDetalle: TDataSource
    DataSet = CDSGtiaSubDetalle
    Left = 544
    Top = 464
  end
  object IBGSubDet: TIBGenerator
    Database = 'DBMain'
    GeneratorName = 'NEXT_ID_RTOGTIA_ENVIO_SUBDET'
    SystemGenerators = False
    Left = 608
    Top = 440
  end
  object QBuscaComprob: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select * from comprobantes '
      'where sucursal=:suc and compra_venta='#39'V'#39' and tipo_comprob='#39'GE'#39)
    Left = 28
    Top = 439
    ParamData = <
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptUnknown
      end>
  end
  object wwBuscadorComprobantes: TwwLookupDialog
    Selected.Strings = (
      'ID_COMPROBANTE'#9'10'#9'Id'#9'F'
      'DENOMINACION'#9'15'#9'Denominación'#9'F'
      'CLASE_COMPROB'#9'2'#9'Clase'#9'F'
      'LETRA'#9'1'#9'Let.'#9'F'
      'PREFIJO'#9'4'#9'Pref.'#9'F'
      'NUMERO'#9'8'#9'Numero'#9'F')
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    Options = [opShowOKCancel, opShowSearchBy, opDisableReorderColumns]
    GridOptions = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = QBuscaComprob
    Caption = 'Comprobantes'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecUpperCase
    ControlInfoInDataset = False
    Left = 196
    Top = 432
  end
  object QComprob: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select * from comprobantes where'
      'id_comprobante=:id  '
      'and sucursal=:suc '
      'and compra_venta='#39'V'#39' '
      'and tipo_comprob='#39'GE'#39
      ' ')
    Left = 112
    Top = 448
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptUnknown
      end>
    object QComprobTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'DBMAIN.COMPROBANTES.TIPO_COMPROB'
      Size = 2
    end
    object QComprobCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'DBMAIN.COMPROBANTES.SIGLAS'
      Size = 2
    end
    object QComprobDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DBMAIN.COMPROBANTES.DENOMINACION'
      Size = 15
    end
    object QComprobLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'DBMAIN.COMPROBANTES.LETRA'
      Size = 1
    end
    object QComprobID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'DBMAIN.COMPROBANTES.ID_COMPROBANTE'
    end
    object QComprobCOPIAS: TIntegerField
      FieldName = 'COPIAS'
      Origin = 'DBMAIN.COMPROBANTES.COPIAS'
    end
    object QComprobREPORTE: TStringField
      FieldName = 'REPORTE'
      Origin = 'DBMAIN.COMPROBANTES.REPORTE'
      Size = 100
    end
  end
  object QProveedor: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select p.codigo,p.nombre from poveedor p where p.codigo=:codigo')
    Left = 280
    Top = 528
    ParamData = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object QProveedorCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object QProveedorNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
  end
  object QSucursal: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select s.* from sucursal s where s.codigo=:codigo')
    Left = 280
    Top = 576
    ParamData = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object QSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'DBMAIN.SUCURSAL.CODIGO'
    end
    object QSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DBMAIN.SUCURSAL.DETALLE'
      Size = 35
    end
    object QSucursalDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DBMAIN.SUCURSAL.DIRECCION'
    end
    object QSucursalLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'DBMAIN.SUCURSAL.LOCALIDAD'
    end
    object QSucursalTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Origin = 'DBMAIN.SUCURSAL.TELEFONO1'
      Size = 15
    end
    object QSucursalTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Origin = 'DBMAIN.SUCURSAL.TELEFONO2'
      Size = 15
    end
    object QSucursalRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'DBMAIN.SUCURSAL.RECARGO'
    end
  end
  object QDeposito: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select d.* from depositos d where d.id=:id')
    Left = 368
    Top = 528
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    object QDepositoID: TIntegerField
      FieldName = 'ID'
    end
    object QDepositoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 25
    end
    object QDepositoSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object QDepositoCENTRALIZA_STOCK: TStringField
      FieldName = 'CENTRALIZA_STOCK'
      FixedChar = True
      Size = 1
    end
  end
  object wwBuscadorSucursal: TwwLookupDialog
    Selected.Strings = (
      'CODIGO'#9'10'#9'Codigo'#9'F'
      'DETALLE'#9'35'#9'Detalle'#9'F')
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = DMMain.QSucursales
    Caption = 'Sucursales'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 612
    Top = 69
  end
  object wwBuscadorDeposito: TwwLookupDialog
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = DMMain.QDepositos
    Caption = 'Depósitos'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 260
    Top = 111
  end
  object wwQStock: TwwQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select S.codigo_stk,s.detalle_stk,unidad,unidad_compra,'
      's.controlastock,s.control_serie,'
      's.contenido_compra,dep.fisico as MuestraFisico  from stock s'
      
        'left join depositostk dep on dep.codigo_stk=s.Codigo_stk and dep' +
        '.codigo_deposito=:deposito'
      'where S.Codigo_Stk=:codigo'
      ' '
      ' '
      ' '
      ' ')
    ValidateWithMask = True
    Left = 318
    Top = 432
    ParamData = <
      item
        DataType = ftInteger
        Name = 'deposito'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object wwQStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 8
    end
    object wwQStockDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object wwQStockUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object wwQStockCONTROLASTOCK: TStringField
      FieldName = 'CONTROLASTOCK'
      Size = 1
    end
    object wwQStockMUESTRAFISICO: TFloatField
      FieldName = 'MUESTRAFISICO'
      ProviderFlags = []
    end
    object wwQStockUNIDAD_COMPRA: TStringField
      FieldName = 'UNIDAD_COMPRA'
      Size = 3
    end
    object wwQStockCONTENIDO_COMPRA: TFloatField
      FieldName = 'CONTENIDO_COMPRA'
    end
    object wwQStockCONTROL_SERIE: TStringField
      FieldName = 'CONTROL_SERIE'
      Size = 1
    end
  end
  object DSPStock: TDataSetProvider
    DataSet = wwQStock
    Constraints = True
    Left = 384
    Top = 430
  end
  object wwCDSStock: TwwClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'deposito'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPStock'
    ValidateWithMask = True
    Left = 464
    Top = 430
    object wwCDSStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 8
    end
    object wwCDSStockDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object wwCDSStockUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object wwCDSStockCONTROLASTOCK: TStringField
      FieldName = 'CONTROLASTOCK'
      Size = 1
    end
    object wwCDSStockMUESTRAFISICO: TFloatField
      FieldName = 'MUESTRAFISICO'
      ProviderFlags = []
    end
    object wwCDSStockUNIDAD_COMPRA: TStringField
      FieldName = 'UNIDAD_COMPRA'
      Size = 3
    end
    object wwCDSStockCONTENIDO_COMPRA: TFloatField
      FieldName = 'CONTENIDO_COMPRA'
    end
    object wwCDSStockCONTROL_SERIE: TStringField
      FieldName = 'CONTROL_SERIE'
      Size = 1
    end
  end
  object frGtia: TfrxReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 168
    Top = 592
    ReportForm = {18000000}
  end
  object frDSGtiaCab: TfrxDBDataset
    Left = 152
    Top = 512
  end
  object frDSGtiaDet: TfrxDBDataset
    Left = 80
    Top = 536
  end
  object QBuscaNroSerie: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      
        'select ss.id,ss.codigo_stk,ss.codigoserie,ss.fechaingreso,ss.fec' +
        'haegreso from stock_series ss'
      
        'where ss.codigo_stk=:codigo and  ss.deposito=:deposito and  id_c' +
        'pbte_egreso is null')
    Left = 512
    Top = 584
    ParamData = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'deposito'
        ParamType = ptUnknown
      end>
    object QBuscaNroSerieCODIGOSERIE: TStringField
      DisplayLabel = 'Serie'
      DisplayWidth = 50
      FieldName = 'CODIGOSERIE'
      Size = 50
    end
    object QBuscaNroSerieCODIGO_STK: TStringField
      DisplayLabel = 'Articulo'
      DisplayWidth = 8
      FieldName = 'CODIGO_STK'
      Size = 8
    end
    object QBuscaNroSerieFECHAINGRESO: TDateTimeField
      DisplayLabel = 'F.Ingreso'
      DisplayWidth = 18
      FieldName = 'FECHAINGRESO'
    end
    object QBuscaNroSerieID: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 10
      FieldName = 'ID'
    end
    object QBuscaNroSerieFECHAEGRESO: TDateTimeField
      FieldName = 'FECHAEGRESO'
      Visible = False
    end
  end
  object QNroSerie: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select ss.id,ss.codigo_stk,ss.codigoserie,ss.fechaingreso,'
      'ss.fechaegreso from stock_series ss'
      'where ss.codigo_stk=:codigo and'
      'ss.codigoserie=:CodigoSerie and'
      'ss.fechaegreso is null and ss.deposito=:deposito'
      ' '
      ' ')
    Left = 528
    Top = 536
    ParamData = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CodigoSerie'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'deposito'
        ParamType = ptUnknown
      end>
    object QNroSerieID: TIntegerField
      FieldName = 'ID'
    end
    object QNroSerieCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Size = 8
    end
    object QNroSerieCODIGOSERIE: TStringField
      FieldName = 'CODIGOSERIE'
      Size = 50
    end
    object QNroSerieFECHAINGRESO: TDateTimeField
      FieldName = 'FECHAINGRESO'
    end
    object QNroSerieFECHAEGRESO: TDateTimeField
      FieldName = 'FECHAEGRESO'
    end
  end
  object wwBuscadorSerie: TwwLookupDialog
    Selected.Strings = (
      'CODIGOSERIE'#9'50'#9'Serie'#9'F'
      'CODIGO_STK'#9'8'#9'Articulo'#9'F'
      'FECHAINGRESO'#9'18'#9'F.Ingreso'#9'F'
      'ID'#9'10'#9'Id'#9'F')
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = QBuscaNroSerie
    Caption = 'Nro. de Serie'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 592
    Top = 112
  end
end

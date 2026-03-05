object FormActualizaCostoUltCompra: TFormActualizaCostoUltCompra
  Left = 0
  Top = 0
  Caption = 'Actualizar costo por ultima comp.'
  ClientHeight = 520
  ClientWidth = 982
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object splitterMain: TSplitter
    Left = 360
    Top = 120
    Height = 328
    ExplicitTop = 0
    ExplicitHeight = 100
  end
  object pnlFilters: TPanel
    Left = 0
    Top = 0
    Width = 982
    Height = 120
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 982
      Height = 105
      Align = alTop
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 0
      object lblSubRubro: TLabel
        Left = 340
        Top = 16
        Width = 52
        Height = 13
        Caption = 'Subrubro:'
      end
      object lblRubro: TLabel
        Left = 16
        Top = 16
        Width = 35
        Height = 13
        Caption = 'Rubro:'
      end
      object lblFechaDesde: TLabel
        Left = 16
        Top = 52
        Width = 67
        Height = 13
        Caption = 'Fecha desde:'
      end
      object dbLookupSubRubro: TJvDBLookupCombo
        Left = 420
        Top = 14
        Width = 220
        Height = 21
        LookupField = 'CODIGO_SUBRUBRO'
        LookupDisplay = 'DETALLE_SUBRUBRO'
        LookupSource = dsSubRubros
        TabOrder = 0
      end
      object dbLookupRubro: TJvDBLookupCombo
        Left = 88
        Top = 14
        Width = 220
        Height = 21
        LookupField = 'CODIGO_RUBRO'
        LookupDisplay = 'DETALLE_RUBRO'
        LookupSource = dsRubros
        TabOrder = 1
      end
      object dtpDesde: TDateTimePicker
        Left = 88
        Top = 50
        Width = 160
        Height = 21
        Date = 46085.000000000000000000
        Time = 0.714453217595291800
        TabOrder = 2
      end
      object btnRollback: TButton
        Left = 520
        Top = 48
        Width = 144
        Height = 28
        Caption = 'Revertir '#250'ltimos cambios'
        TabOrder = 3
        OnClick = btnRollbackClick
      end
      object btnEjecutar: TButton
        Left = 360
        Top = 48
        Width = 144
        Height = 28
        Caption = 'Actualizar costos'
        TabOrder = 4
        OnClick = btnEjecutarClick
      end
      object btnCerrar: TButton
        Left = 720
        Top = 48
        Width = 144
        Height = 28
        Caption = 'Cerrar'
        TabOrder = 5
        OnClick = btnCerrarClick
      end
    end
  end
  object pnlLog: TPanel
    Left = 0
    Top = 120
    Width = 360
    Height = 328
    Align = alLeft
    TabOrder = 1
    object lblHistorial: TLabel
      Left = 1
      Top = 1
      Width = 358
      Height = 13
      Align = alTop
      Caption = 'Historial de ejecuci'#243'n'
      ExplicitWidth = 111
    end
    object memoLog: TMemo
      Left = 1
      Top = 14
      Width = 358
      Height = 313
      Align = alClient
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object pnlChanges: TPanel
    Left = 363
    Top = 120
    Width = 619
    Height = 328
    Align = alClient
    TabOrder = 2
    object lblCambios: TLabel
      Left = 1
      Top = 1
      Width = 617
      Height = 13
      Align = alTop
      Caption = 'Cambios detectados'
      ExplicitWidth = 104
    end
    object lvCambios: TListView
      Left = 1
      Top = 14
      Width = 617
      Height = 313
      Align = alClient
      Columns = <
        item
          Caption = 'Codigo'
          Width = 100
        end
        item
          Caption = 'Detalle'
          Width = 150
        end
        item
          Caption = 'Costo anterior'
          Width = 110
        end
        item
          Caption = 'Costo nuevo'
          Width = 110
        end
        item
          Caption = 'Fecha anterior'
          Width = 100
        end
        item
          Caption = 'Fecha nueva'
          Width = 100
        end>
      GridLines = True
      HideSelection = False
      RowSelect = True
      TabOrder = 0
      ViewStyle = vsReport
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 448
    Width = 982
    Height = 72
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object lblStatus: TLabel
      Left = 16
      Top = 36
      Width = 35
      Height = 13
      Caption = 'Estado'
    end
    object pbProgress: TProgressBar
      Left = 16
      Top = 12
      Width = 321
      Height = 18
      TabOrder = 0
    end
  end
  object dsRubros: TDataSource
    DataSet = QRubros
    Left = 16
    Top = 180
  end
  object dsSubRubros: TDataSource
    DataSet = QSubRubros
    Left = 16
    Top = 228
  end
  object QRubros: TFDQuery
    AfterScroll = QRubrosAfterScroll
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT CODIGO_RUBRO, DETALLE_RUBRO FROM RUBROS ORDER BY ORDEN')
    Left = 88
    Top = 180
    object QRubrosCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object QRubrosDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      Required = True
      Size = 35
    end
  end
  object QSubRubros: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'SELECT CODIGO_SUBRUBRO, DETALLE_SUBRUBRO, CODIGO_RUBRO FROM SUBR' +
        'UBROS WHERE (:RUBRO IS NULL OR CODIGO_RUBRO = :RUBRO) ORDER BY D' +
        'ETALLE_SUBRUBRO')
    Left = 88
    Top = 236
    ParamData = <
      item
        Name = 'RUBRO'
        DataType = ftFixedChar
        ParamType = ptInput
        Value = Null
      end>
    object QSubRubrosCODIGO_SUBRUBRO: TStringField
      FieldName = 'CODIGO_SUBRUBRO'
      Origin = 'CODIGO_SUBRUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object QSubRubrosDETALLE_SUBRUBRO: TStringField
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      Required = True
      Size = 45
    end
    object QSubRubrosCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      Required = True
      Size = 3
    end
  end
  object QStockAntes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'SELECT CODIGO_STK, DETALLE_STK, COSTO_GRAVADO_STK, COSTO_EXENTO_' +
        'STK, FECHA_ULTIMA_COMPRA FROM STOCK WHERE (:RUBRO IS NULL OR RUB' +
        'RO_STK = :RUBRO) AND (:SUBRUBRO IS NULL OR SUBRUBRO_STK = :SUBRU' +
        'BRO)')
    Left = 464
    Top = 284
    ParamData = <
      item
        Name = 'RUBRO'
        DataType = ftFixedChar
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SUBRUBRO'
        DataType = ftFixedChar
        ParamType = ptInput
      end>
    object QStockAntesCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QStockAntesDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object QStockAntesCOSTO_GRAVADO_STK: TFloatField
      FieldName = 'COSTO_GRAVADO_STK'
      Origin = 'COSTO_GRAVADO_STK'
      Required = True
    end
    object QStockAntesCOSTO_EXENTO_STK: TFloatField
      FieldName = 'COSTO_EXENTO_STK'
      Origin = 'COSTO_EXENTO_STK'
      Required = True
    end
    object QStockAntesFECHA_ULTIMA_COMPRA: TSQLTimeStampField
      FieldName = 'FECHA_ULTIMA_COMPRA'
      Origin = 'FECHA_ULTIMA_COMPRA'
    end
  end
  object QStockDespues: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'SELECT CODIGO_STK, DETALLE_STK, COSTO_GRAVADO_STK, COSTO_EXENTO_' +
        'STK, FECHA_ULTIMA_COMPRA FROM STOCK WHERE (:RUBRO IS NULL OR RUB' +
        'RO_STK = :RUBRO) AND (:SUBRUBRO IS NULL OR SUBRUBRO_STK = :SUBRU' +
        'BRO)')
    Left = 568
    Top = 284
    ParamData = <
      item
        Name = 'RUBRO'
        DataType = ftFixedChar
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'SUBRUBRO'
        DataType = ftFixedChar
        ParamType = ptInput
      end>
    object QStockDespuesCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QStockDespuesDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object QStockDespuesCOSTO_GRAVADO_STK: TFloatField
      FieldName = 'COSTO_GRAVADO_STK'
      Origin = 'COSTO_GRAVADO_STK'
      Required = True
    end
    object QStockDespuesCOSTO_EXENTO_STK: TFloatField
      FieldName = 'COSTO_EXENTO_STK'
      Origin = 'COSTO_EXENTO_STK'
      Required = True
    end
    object QStockDespuesFECHA_ULTIMA_COMPRA: TSQLTimeStampField
      FieldName = 'FECHA_ULTIMA_COMPRA'
      Origin = 'FECHA_ULTIMA_COMPRA'
    end
  end
  object mtCambios: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 224
    Top = 340
  end
  object TimerProgress: TTimer
    Enabled = False
    Interval = 250
    OnTimer = TimerProgressTimer
    Left = 32
    Top = 24
  end
  object spActualiza: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'TOOL_ACT_COSTO_X_ULTCOMPRA'
    Left = 483
    Top = 376
    ParamData = <
      item
        Position = 1
        Name = 'FDESDE'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'PRUBRO'
        DataType = ftString
        ParamType = ptInput
        Size = 3
      end
      item
        Position = 3
        Name = 'PSUBRUBRO'
        DataType = ftString
        ParamType = ptInput
        Size = 5
      end>
  end
end

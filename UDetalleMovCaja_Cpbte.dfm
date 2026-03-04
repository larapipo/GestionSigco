object FormDetalleValores: TFormDetalleValores
  Left = 300
  Top = 148
  Caption = 'Detalle de Valores'
  ClientHeight = 394
  ClientWidth = 811
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 793
    Height = 297
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object JvDBGrid1: TJvDBGrid
      Left = 1
      Top = 1
      Width = 791
      Height = 256
      Align = alTop
      DataSource = DSMov
      PopupMenu = PopupMenu1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnColEnter = JvDBGrid1ColEnter
      OnDblClick = JvDBGrid1DblClick
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'DETALLE'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TARJETA'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEBE'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HABER'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRO_CAJA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE_CAJA'
          ReadOnly = True
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
          FieldName = 'ID_CAJA'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 58
          Visible = True
        end>
    end
    object BitBtn1: TBitBtn
      Left = 603
      Top = 263
      Width = 75
      Height = 25
      Caption = '&Cerrar'
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object DSMov: TDataSource
    DataSet = CDSMov
    Left = 544
    Top = 88
  end
  object DSPMov: TDataSetProvider
    DataSet = QMov
    Options = []
    Left = 440
    Top = 88
  end
  object CDSMov: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_comprobante'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo_comprob'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipooperacion'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMov'
    Left = 496
    Top = 88
    object CDSMovDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 25
    end
    object CDSMovTARJETA: TStringField
      DisplayLabel = 'Tarjeta de C'
      FieldName = 'TARJETA'
      Origin = 'TARJETA'
      Size = 25
    end
    object CDSMovID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
    end
    object CDSMovID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
    end
    object CDSMovID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
    end
    object CDSMovID_CAJA: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
    end
    object CDSMovDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00'
    end
    object CDSMovHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00'
    end
    object CDSMovNRO_CAJA: TIntegerField
      DisplayLabel = 'Nro Caja'
      FieldName = 'NRO_CAJA'
      Origin = 'NRO_CAJA'
    end
    object CDSMovID_CTA_CAJA: TIntegerField
      FieldName = 'ID_CTA_CAJA'
      Origin = 'ID_CTA_CAJA'
    end
    object Caja: TStringField
      DisplayLabel = 'Nombre Caja'
      FieldName = 'NOMBRE_CAJA'
      Origin = 'NOMBRE_CAJA'
      Size = 25
    end
    object CDSMovCPBTE_NRO: TStringField
      FieldName = 'CPBTE_NRO'
      Size = 13
    end
    object CDSMovCPBTE_TIPO: TStringField
      FieldName = 'CPBTE_TIPO'
      Size = 2
    end
    object CDSMovCPBTE_ID: TIntegerField
      FieldName = 'CPBTE_ID'
    end
  end
  object QMov: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from detalle_mov_caja_cpbte ( :id_comprobante, :tipo_co' +
        'mprob, :tipooperacion )')
    Left = 376
    Top = 88
    ParamData = <
      item
        Position = 1
        Name = 'id_comprobante'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'tipo_comprob'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'tipooperacion'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object spReemplazaTC_efec: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'REMPLAZA_TC_POR_EFECTIVO'
    Left = 376
    Top = 171
    ParamData = <
      item
        Position = 1
        Name = 'ID_MOV_TARJETA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 120
    Top = 96
    object Reemplazarporefectivo1: TMenuItem
      Caption = 'Reemplazar por efectivo'
      OnClick = Reemplazarporefectivo1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object AplicarCambioValorEfectivo1: TMenuItem
      Caption = 'Aplicar Cambio Valor Efectivo'
      OnClick = AplicarCambioValorEfectivo1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object RehacerMovimiento1: TMenuItem
      Caption = 'Rehacer Movimiento'
      OnClick = RehacerMovimiento1Click
    end
  end
  object QId_MovTC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select t.id_mov_tc from mov_tcredito t where t.id_mov_caja=:id_m' +
        'ov_caja')
    Left = 160
    Top = 184
    ParamData = <
      item
        Name = 'ID_MOV_CAJA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QId_MovTCID_MOV_TC: TIntegerField
      FieldName = 'ID_MOV_TC'
      Origin = 'ID_MOV_TC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object QActualizaCajaMov: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update caja_mov cm set cm.unidades = :unidades,cm.haber = :haber' +
        ' where'
      ' cm.id_mov_caja = :id_mov_caja')
    Left = 88
    Top = 312
    ParamData = <
      item
        Name = 'UNIDADES'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'HABER'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'ID_MOV_CAJA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QActualizaMov_Efec: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update mov_efectivo me set me.unidades=:unidades , me.importe=:i' +
        'mporte where me.id_mov_caja=:id_mov_caja')
    Left = 200
    Top = 312
    ParamData = <
      item
        Name = 'UNIDADES'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'IMPORTE'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'ID_MOV_CAJA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object spRehacerMovCaja: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'REHACER_MOVCAJA_NC'
    Left = 496
    Top = 184
    ParamData = <
      item
        Position = 1
        Name = 'NC_ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'NC_TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 3
        Name = 'NC_CLASE'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end>
  end
end

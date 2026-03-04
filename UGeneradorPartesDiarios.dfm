object FormGeneradorParteDiarios: TFormGeneradorParteDiarios
  Left = 0
  Top = 0
  Caption = 'Generador de Partes Diarios'
  ClientHeight = 703
  ClientWidth = 1070
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object pnBase: TPanel
    Left = 0
    Top = 0
    Width = 1070
    Height = 584
    Align = alClient
    BevelOuter = bvNone
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 20
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 10
      Top = 10
      Width = 1050
      Height = 554
      Align = alClient
      DataSource = DSDetallesProduccion
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 320
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CANTIDAD'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 106
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SALDO_SUB'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODUCIDO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 122
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGOBARRA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 272
          Visible = True
        end>
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 584
    Width = 1070
    Height = 119
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 1
    object Label2: TLabel
      Left = 10
      Top = 6
      Width = 100
      Height = 17
      Caption = 'Fecha de Ingreso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object edFecha: TDateTimePicker
      Left = 10
      Top = 29
      Width = 111
      Height = 25
      Date = 45591.000000000000000000
      Time = 0.521736331022111700
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object btOk: TAdvGlowButton
      Left = 840
      Top = 6
      Width = 167
      Height = 33
      Caption = 'Generar Parte Diario'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Rounded = True
      TabOrder = 1
      OnClick = btOkClick
      Appearance.BorderColor = 11382963
      Appearance.BorderColorHot = 11565130
      Appearance.BorderColorCheckedHot = 11565130
      Appearance.BorderColorDown = 11565130
      Appearance.BorderColorChecked = 13744549
      Appearance.BorderColorDisabled = 13948116
      Appearance.Color = clWhite
      Appearance.ColorTo = clWhite
      Appearance.ColorChecked = 13744549
      Appearance.ColorCheckedTo = 13744549
      Appearance.ColorDisabled = clWhite
      Appearance.ColorDisabledTo = clNone
      Appearance.ColorDown = 11565130
      Appearance.ColorDownTo = 11565130
      Appearance.ColorHot = 16444643
      Appearance.ColorHotTo = 16444643
      Appearance.ColorMirror = clWhite
      Appearance.ColorMirrorTo = clWhite
      Appearance.ColorMirrorHot = 16444643
      Appearance.ColorMirrorHotTo = 16444643
      Appearance.ColorMirrorDown = 11565130
      Appearance.ColorMirrorDownTo = 11565130
      Appearance.ColorMirrorChecked = 13744549
      Appearance.ColorMirrorCheckedTo = 13744549
      Appearance.ColorMirrorDisabled = clWhite
      Appearance.ColorMirrorDisabledTo = clNone
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Appearance.TextColorChecked = 3750459
      Appearance.TextColorDown = 2303013
      Appearance.TextColorHot = 2303013
      Appearance.TextColorDisabled = 13948116
    end
    object btCerrar: TAdvGlowButton
      Left = 891
      Top = 64
      Width = 100
      Height = 33
      Caption = 'Cerrar'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Rounded = True
      TabOrder = 2
      OnClick = btCerrarClick
      Appearance.BorderColor = 11382963
      Appearance.BorderColorHot = 11565130
      Appearance.BorderColorCheckedHot = 11565130
      Appearance.BorderColorDown = 11565130
      Appearance.BorderColorChecked = 13744549
      Appearance.BorderColorDisabled = 13948116
      Appearance.Color = clWhite
      Appearance.ColorTo = clWhite
      Appearance.ColorChecked = 13744549
      Appearance.ColorCheckedTo = 13744549
      Appearance.ColorDisabled = clWhite
      Appearance.ColorDisabledTo = clNone
      Appearance.ColorDown = 11565130
      Appearance.ColorDownTo = 11565130
      Appearance.ColorHot = 16444643
      Appearance.ColorHotTo = 16444643
      Appearance.ColorMirror = clWhite
      Appearance.ColorMirrorTo = clWhite
      Appearance.ColorMirrorHot = 16444643
      Appearance.ColorMirrorHotTo = 16444643
      Appearance.ColorMirrorDown = 11565130
      Appearance.ColorMirrorDownTo = 11565130
      Appearance.ColorMirrorChecked = 13744549
      Appearance.ColorMirrorCheckedTo = 13744549
      Appearance.ColorMirrorDisabled = clWhite
      Appearance.ColorMirrorDisabledTo = clNone
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Appearance.TextColorChecked = 3750459
      Appearance.TextColorDown = 2303013
      Appearance.TextColorHot = 2303013
      Appearance.TextColorDisabled = 13948116
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 624
      Top = 6
      Width = 167
      Height = 33
      Caption = 'Cargar desde Registros de Rotulos'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Rounded = True
      TabOrder = 3
      OnClick = AdvGlowButton1Click
      Appearance.BorderColor = 11382963
      Appearance.BorderColorHot = 11565130
      Appearance.BorderColorCheckedHot = 11565130
      Appearance.BorderColorDown = 11565130
      Appearance.BorderColorChecked = 13744549
      Appearance.BorderColorDisabled = 13948116
      Appearance.Color = clWhite
      Appearance.ColorTo = clWhite
      Appearance.ColorChecked = 13744549
      Appearance.ColorCheckedTo = 13744549
      Appearance.ColorDisabled = clWhite
      Appearance.ColorDisabledTo = clNone
      Appearance.ColorDown = 11565130
      Appearance.ColorDownTo = 11565130
      Appearance.ColorHot = 16444643
      Appearance.ColorHotTo = 16444643
      Appearance.ColorMirror = clWhite
      Appearance.ColorMirrorTo = clWhite
      Appearance.ColorMirrorHot = 16444643
      Appearance.ColorMirrorHotTo = 16444643
      Appearance.ColorMirrorDown = 11565130
      Appearance.ColorMirrorDownTo = 11565130
      Appearance.ColorMirrorChecked = 13744549
      Appearance.ColorMirrorCheckedTo = 13744549
      Appearance.ColorMirrorDisabled = clWhite
      Appearance.ColorMirrorDisabledTo = clNone
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      Appearance.TextColorChecked = 3750459
      Appearance.TextColorDown = 2303013
      Appearance.TextColorHot = 2303013
      Appearance.TextColorDisabled = 13948116
    end
  end
  object QDiario: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.*,sd.codigo as MuestraCodigo ,'
      '           sd.detalle as MuestraDetalle,'
      '           sd.cantidad as MuestraCantidad,'
      '           sd.cantidad_saldo as MuestraSaldo,'
      '           r.id_rto as MuestraId_Ajuste,'
      '           r.nrocpbte as MuestraNroAjuste,'
      
        '           od.id_opcab as MuestraId_Pro_cab  from ordenproduccio' +
        'n_diario d'
      'left join ordenproduccion_sub_det sd on sd.id=d.id_subdet_prod'
      'left join rtomercacab r on r.id_rto=d.id_ajuste_stock'
      'left join ordenproduccion_det od on od.id=sd.id_det_op'
      'where d.id=:id')
    Left = 688
    Top = 432
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QDiarioID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDiarioID_SUBDET_PROD: TIntegerField
      FieldName = 'ID_SUBDET_PROD'
      Origin = 'ID_SUBDET_PROD'
    end
    object QDiarioFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QDiarioNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QDiarioTURNO: TIntegerField
      FieldName = 'TURNO'
      Origin = 'TURNO'
    end
    object QDiarioTIPO_MATERIAL: TIntegerField
      FieldName = 'TIPO_MATERIAL'
      Origin = 'TIPO_MATERIAL'
    end
    object QDiarioESTACION: TIntegerField
      FieldName = 'ESTACION'
      Origin = 'ESTACION'
    end
    object QDiarioCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QDiarioNRO_LOTE: TStringField
      FieldName = 'NRO_LOTE'
      Origin = 'NRO_LOTE'
    end
    object QDiarioOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      Size = 300
    end
    object QDiarioNRORTO: TStringField
      FieldName = 'NRORTO'
      Origin = 'NRORTO'
      Size = 13
    end
    object QDiarioID_AJUSTE_STOCK: TIntegerField
      FieldName = 'ID_AJUSTE_STOCK'
      Origin = 'ID_AJUSTE_STOCK'
      Required = True
    end
    object QDiarioMODO_TRAZABILIDAD: TStringField
      FieldName = 'MODO_TRAZABILIDAD'
      Origin = 'MODO_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QDiarioMUESTRACODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object QDiarioMUESTRADETALLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object QDiarioMUESTRACANTIDAD: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACANTIDAD'
      Origin = 'CANTIDAD'
      ProviderFlags = []
      ReadOnly = True
    end
    object QDiarioMUESTRASALDO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASALDO'
      Origin = 'CANTIDAD_SALDO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QDiarioMUESTRAID_AJUSTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAID_AJUSTE'
      Origin = 'ID_RTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QDiarioMUESTRANROAJUSTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANROAJUSTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object QDiarioMUESTRAID_PRO_CAB: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAID_PRO_CAB'
      Origin = 'ID_OPCAB'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DSDetallesProduccion: TDataSource
    DataSet = CDSMovimientos
    Left = 666
    Top = 218
  end
  object QMovimientos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        ' select det.id, det.id_opcab, det.codigo, det.detalle, det.canti' +
        'dad,sub.id as id_sub, '
      
        '        coalesce(sub.cantidad_saldo,0) as Saldo_sub,0.00 as prod' +
        'ucido from ordenproduccion_cab cab'
      ' left join ordenproduccion_det det on det.id_opcab=cab.id '
      ' left join ordenproduccion_sub_det sub on sub.id_det_op=det.id '
      'where cab.id=:id')
    Left = 250
    Top = 242
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPMovimientos: TDataSetProvider
    DataSet = QMovimientos
    Left = 378
    Top = 234
  end
  object CDSMovimientos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovimientos'
    Left = 490
    Top = 234
    object CDSMovimientosID: TIntegerField
      FieldName = 'ID'
    end
    object CDSMovimientosID_OPCAB: TIntegerField
      FieldName = 'ID_OPCAB'
    end
    object CDSMovimientosCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Size = 8
    end
    object CDSMovimientosDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSMovimientosCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSMovimientosID_SUB: TIntegerField
      FieldName = 'ID_SUB'
    end
    object CDSMovimientosSALDO_SUB: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO_SUB'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSMovimientosPRODUCIDO: TFloatField
      DisplayLabel = 'Producido'
      FieldName = 'PRODUCIDO'
      OnSetText = CDSMovimientosPRODUCIDOSetText
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSMovimientosCODIGOBARRA: TStringField
      DisplayLabel = 'Lote'
      DisplayWidth = 15
      FieldKind = fkInternalCalc
      FieldName = 'CODIGOBARRA'
      OnSetText = CDSMovimientosCODIGOBARRASetText
      Size = 15
    end
  end
  object spIngresarParteDiario: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'GENERAR_ORDENPRODUCCION_DIARIO'
    Left = 856
    Top = 432
    ParamData = <
      item
        Position = 1
        Name = 'ID_OP'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ID_OP_DETALLE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'CANTIDAD'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'LOTE'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 5
        Name = 'FECHA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'ORDEN_OK'
        DataType = ftInteger
        ParamType = ptOutput
      end>
  end
  object OpenDialog1: TOpenDialog
    Left = 840
    Top = 248
  end
end

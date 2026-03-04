inherited FormIngresoHoras: TFormIngresoHoras
  Left = 192
  Top = 173
  Caption = 'Ingreso de Horas'
  ClientHeight = 638
  ClientWidth = 864
  ExplicitWidth = 882
  ExplicitHeight = 679
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 864
    Height = 481
    ExplicitWidth = 896
    ExplicitHeight = 481
    object dbgHoras: TDBGrid
      Left = 0
      Top = 0
      Width = 864
      Height = 481
      Align = alClient
      DataSource = DSBase
      FixedColor = clMoneyGreen
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnColEnter = dbgHorasColEnter
      OnEditButtonClick = dbgHorasEditButtonClick
      OnKeyDown = dbgHorasKeyDown
      OnKeyPress = dbgHorasKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'LEGAJO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'MUESTRAEMPLEADO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENTRADA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SALIDA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'CANITDADHORAS'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 82
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'IDLUGAR'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 72
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'MUESTRALUGARTRABAJO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 200
          Visible = True
        end>
    end
  end
  inherited ToolBar1: TToolBar
    Top = 481
    Width = 864
    ExplicitLeft = -1
    ExplicitTop = 471
    ExplicitWidth = 906
    inherited btCancelar: TBitBtn
      Visible = False
    end
    inherited btModificar: TBitBtn
      Visible = False
    end
    inherited btBuscar: TBitBtn
      Visible = False
    end
    inherited btBorrar: TBitBtn
      Visible = False
    end
  end
  inherited Panel1: TPanel
    Top = 511
    Width = 864
    inherited sbEstado: TStatusBar
      Width = 702
    end
  end
  inherited ActionList1: TActionList
    Left = 96
    Top = 88
    inherited Buscar: TAction
      ShortCut = 0
    end
    object BuscarEmpleado: TAction
      Caption = 'BuscarEmpleado'
      OnExecute = BuscarEmpleadoExecute
    end
    object BuscarLugar: TAction
      Caption = 'BuscarLugar'
      OnExecute = BuscarLugarExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = CDSHoras
    Left = 728
    Top = 88
  end
  inherited JvFormStorage: TJvFormStorage
    Left = 288
    Top = 344
  end
  object ibgIdHoras: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'GEN_HORAS_ID'
    SystemGenerators = False
    Left = 312
    Top = 432
  end
  object QBuscadorLugar: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from lugar_tareas')
    Left = 520
    Top = 368
    object QBuscadorLugarDETALLE: TStringField
      DisplayLabel = 'Descripcion'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 30
    end
    object QBuscadorLugarID: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscadorLugarVALORHORA: TFloatField
      DisplayLabel = 'V/Hora'
      FieldName = 'VALORHORA'
      Origin = 'VALORHORA'
    end
  end
  object QBuscadorEmpleado: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select e.id,e.nombre,e.legajo,e.idempleador,emp.nombre as Muestr' +
        'aEmpleador from empleados e'
      'left join empleadores emp on emp.id=e.idempleador'
      'left join categorias c on c.id=e.categoria'
      'where emp.id=:idempleador and c.tipo_liquidacion=2'
      'order by e.nombre')
    Left = 576
    Top = 176
    ParamData = <
      item
        Name = 'IDEMPLEADOR'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QBuscadorEmpleadoNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 30
    end
    object QBuscadorEmpleadoLEGAJO: TIntegerField
      DisplayLabel = 'Legajo'
      FieldName = 'LEGAJO'
      Origin = 'LEGAJO'
    end
    object QBuscadorEmpleadoMUESTRAEMPLEADOR: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Empleador'
      FieldName = 'MUESTRAEMPLEADOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QBuscadorEmpleadoID: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 5
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object QLugar: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from lugar_tareas where id = :id')
    Left = 672
    Top = 256
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QLugarID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLugarDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 30
    end
    object QLugarVALORHORA: TFloatField
      FieldName = 'VALORHORA'
      Origin = 'VALORHORA'
    end
  end
  object QEmpleados: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select e.id,e.nombre,e.legajo,e.idempleador,e.categoria from emp' +
        'leados e'
      'left join categorias c on c.id=e.categoria'
      'where e.legajo=:legajo and c.Tipo_liquidacion=2')
    Left = 600
    Top = 264
    ParamData = <
      item
        Name = 'LEGAJO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QEmpleadosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QEmpleadosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 30
    end
    object QEmpleadosLEGAJO: TIntegerField
      FieldName = 'LEGAJO'
      Origin = 'LEGAJO'
    end
    object QEmpleadosIDEMPLEADOR: TIntegerField
      FieldName = 'IDEMPLEADOR'
      Origin = 'IDEMPLEADOR'
      Required = True
    end
    object QEmpleadosCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
    end
  end
  object ComBuscadorLugar: TComBuscador
    Data = QBuscadorLugar
    Campo = 'ID'
    Titulo = 'Lugares'
    rOk = False
    Left = 608
    Top = 368
  end
  object ComBuscadorEmpleado: TComBuscador
    Data = QBuscadorEmpleado
    Campo = 'ID'
    Titulo = 'Empleado'
    rOk = False
    Left = 704
    Top = 184
  end
  object QHoras: TFDQuery
    Left = 408
    Top = 88
  end
  object CDSHoras: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 608
    Top = 72
  end
  object DSPHoras: TDataSetProvider
    DataSet = QHoras
    Left = 496
    Top = 80
  end
end

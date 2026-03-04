inherited FormPersonalNovedades: TFormPersonalNovedades
  Caption = 'Personal Novedades'
  ClientHeight = 605
  ClientWidth = 872
  OnResize = FormResize
  ExplicitWidth = 890
  ExplicitHeight = 646
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 872
    Height = 552
    Align = alClient
    ExplicitWidth = 704
    ExplicitHeight = 409
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 872
      Height = 73
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 889
      object Label1: TLabel
        Left = 8
        Top = 10
        Width = 47
        Height = 13
        Caption = 'Empleado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 609
        Top = 10
        Width = 31
        Height = 13
        Caption = 'Desde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 709
        Top = 10
        Width = 28
        Height = 13
        Caption = 'Hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object UpDown1: TUpDown
        Left = 808
        Top = 24
        Width = 16
        Height = 20
        Hint = 'Cambia el Per'#237'odo'
        Max = 10000
        ParentShowHint = False
        Position = 100
        ShowHint = True
        TabOrder = 0
      end
      object RxDBCodigo: TJvDBComboEdit
        Left = 6
        Top = 27
        Width = 67
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        ClickKey = 16397
        DataField = 'EMPLEADO'
        DataSource = DSBase
        Glyph.Data = {
          4E000000424D4E000000000000003E0000002800000009000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FF8000002480000024800000FF800000}
        ButtonWidth = 15
        TabOrder = 1
        OnButtonClick = BuscarEmpleadoExecute
      end
      object dbeNombre: TDBEdit
        Left = 77
        Top = 27
        Width = 268
        Height = 21
        Color = clInfoBk
        DataField = 'MUESTRANOMBRE'
        DataSource = DSBase
        Enabled = False
        TabOrder = 2
      end
      object Desde: TAdvDBDateTimePicker
        Left = 606
        Top = 23
        Width = 97
        Height = 21
        Date = 45087.000000000000000000
        Format = ''
        Time = 0.471215277779265300
        DoubleBuffered = True
        Kind = dkDate
        ParentDoubleBuffered = False
        TabOrder = 3
        TabStop = False
        BorderStyle = bsSingle
        Ctl3D = True
        DateTime = 45087.471215277780000000
        Version = '1.3.6.6'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        DataField = 'DESDE'
        DataSource = DSBase
      end
      object Hasta: TAdvDBDateTimePicker
        Left = 705
        Top = 23
        Width = 97
        Height = 21
        Date = 45087.000000000000000000
        Format = ''
        Time = 0.471215277779265300
        DoubleBuffered = True
        Kind = dkDate
        ParentDoubleBuffered = False
        TabOrder = 4
        TabStop = False
        BorderStyle = bsSingle
        Ctl3D = True
        DateTime = 45087.471215277780000000
        Version = '1.3.6.6'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        DataField = 'HASTA'
        DataSource = DSBase
      end
    end
    object dbgMovimientos: TDBGrid
      Left = 0
      Top = 73
      Width = 872
      Height = 438
      Align = alClient
      DataSource = DSDetalle
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnColEnter = dbgMovimientosColEnter
      OnEditButtonClick = BuscarConceptoExecute
      OnKeyPress = dbgMovimientosKeyPress
      Columns = <
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'IDCONCEPTO'
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
          FieldName = 'CONCEPTO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 293
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CANTIDAD'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PORCENTAJE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 116
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPORTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 121
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'TIPO_CONCEPTO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 115
          Visible = True
        end>
    end
    object pnPie: TPanel
      Left = 0
      Top = 511
      Width = 872
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 2
      ExplicitLeft = 568
      ExplicitTop = 368
      ExplicitWidth = 185
    end
  end
  inherited ToolBar1: TToolBar
    Top = 552
    Width = 872
    Align = alBottom
  end
  inherited Panel1: TPanel
    Top = 582
    Width = 872
    Align = alBottom
    inherited sbEstado: TStatusBar
      Width = 710
    end
  end
  inherited ActionList1: TActionList
    Left = 440
    Top = 192
    object BuscarEmpleado: TAction
      Caption = 'BuscarEmpleado'
      OnExecute = BuscarEmpleadoExecute
    end
    object BuscarConcepto: TAction
      Caption = 'BuscarConcepto'
      OnExecute = BuscarConceptoExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = CDSNovedades
  end
  inherited JvFormStorage: TJvFormStorage
    Left = 304
    Top = 208
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 344
    Top = 288
  end
  inherited ComBuscadorBase: TComBuscador
    Data = QBuscador
    Campo = 'id'
    Titulo = 'Novedades'
    Left = 328
    Top = 128
  end
  object QNovedades: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.*,p.nombre as MuestraNombre,p.categoria as MuestraCodCa' +
        'tegoria,ct.detalle as MuestraCategoria from personal_novedades_c' +
        'ab c'
      'left join  personal p on p.codigo=c.empleado'
      'left join personal_categoria ct on ct.id = p.categoria'
      'where c.id=:id')
    Left = 360
    Top = 392
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QNovedadesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QNovedadesEMPLEADO: TStringField
      FieldName = 'EMPLEADO'
      Origin = 'EMPLEADO'
      Size = 6
    end
    object QNovedadesDESDE: TSQLTimeStampField
      FieldName = 'DESDE'
      Origin = 'DESDE'
    end
    object QNovedadesHASTA: TSQLTimeStampField
      FieldName = 'HASTA'
      Origin = 'HASTA'
    end
    object QNovedadesLIQUIDADO: TStringField
      FieldName = 'LIQUIDADO'
      Origin = 'LIQUIDADO'
      FixedChar = True
      Size = 1
    end
    object QNovedadesMUESTRANOMBRE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object QNovedadesMUESTRACODCATEGORIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACODCATEGORIA'
      Origin = 'CATEGORIA'
      ProviderFlags = []
    end
    object QNovedadesMUESTRACATEGORIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACATEGORIA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 30
    end
  end
  object CDSNovedades: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPNovedades'
    OnNewRecord = CDSNovedadesNewRecord
    Left = 560
    Top = 392
    object CDSNovedadesID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSNovedadesEMPLEADO: TStringField
      FieldName = 'EMPLEADO'
      OnSetText = CDSNovedadesEMPLEADOSetText
      Size = 6
    end
    object CDSNovedadesDESDE: TSQLTimeStampField
      FieldName = 'DESDE'
    end
    object CDSNovedadesHASTA: TSQLTimeStampField
      FieldName = 'HASTA'
    end
    object CDSNovedadesLIQUIDADO: TStringField
      FieldName = 'LIQUIDADO'
      FixedChar = True
      Size = 1
    end
    object CDSNovedadesMUESTRANOMBRE: TStringField
      FieldName = 'MUESTRANOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object CDSNovedadesMUESTRACODCATEGORIA: TIntegerField
      FieldName = 'MUESTRACODCATEGORIA'
      ProviderFlags = []
    end
    object CDSNovedadesMUESTRACATEGORIA: TStringField
      FieldName = 'MUESTRACATEGORIA'
      ProviderFlags = []
      Size = 30
    end
  end
  object DSPNovedades: TDataSetProvider
    DataSet = QNovedades
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 448
    Top = 392
  end
  object QDetalles: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select d.*,c.calculo as MuestraModoCalculo from PERSONAL_NOVEDAD' +
        'ES_CONCEPTOS d'
      'left join personal_conceptos c on c.id = d.idconcepto'
      'where d.id_cab=:id')
    Left = 360
    Top = 456
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QDetallesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDetallesID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDetallesIDCONCEPTO: TIntegerField
      FieldName = 'IDCONCEPTO'
      Origin = 'IDCONCEPTO'
      Required = True
    end
    object QDetallesTIPO_CONCEPTO: TStringField
      FieldName = 'TIPO_CONCEPTO'
      Origin = 'TIPO_CONCEPTO'
      Required = True
      Size = 2
    end
    object QDetallesCONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Origin = 'CONCEPTO'
      Size = 30
    end
    object QDetallesCANTIDAD: TIntegerField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QDetallesIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      Required = True
    end
    object QDetallesPORCENTAJE: TFloatField
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
      Required = True
    end
    object QDetallesMUESTRAMODOCALCULO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAMODOCALCULO'
      Origin = 'CALCULO'
      ProviderFlags = []
      Size = 3
    end
  end
  object DSPDetalle: TDataSetProvider
    DataSet = QDetalles
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 448
    Top = 456
  end
  object CDSDetalles: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDetalle'
    AfterInsert = CDSDetallesAfterInsert
    OnNewRecord = CDSDetallesNewRecord
    Left = 560
    Top = 456
    object CDSDetallesID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDetallesID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDetallesIDCONCEPTO: TIntegerField
      DisplayLabel = 'Cod.Concepto'
      FieldName = 'IDCONCEPTO'
      Required = True
      OnSetText = CDSDetallesIDCONCEPTOSetText
    end
    object CDSDetallesTIPO_CONCEPTO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_CONCEPTO'
      Required = True
      Size = 2
    end
    object CDSDetallesCONCEPTO: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'CONCEPTO'
      Size = 30
    end
    object CDSDetallesCANTIDAD: TIntegerField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSDetallesIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Required = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSDetallesPORCENTAJE: TFloatField
      DisplayLabel = '% porc.'
      FieldName = 'PORCENTAJE'
      Required = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSDetallesMUESTRAMODOCALCULO: TStringField
      FieldName = 'MUESTRAMODOCALCULO'
      Size = 3
    end
  end
  object IBGCab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'next_id_personal_novedades_cab'
    SystemGenerators = False
    Left = 680
    Top = 400
  end
  object IBGDet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'next_id_personal_novedades_con'
    SystemGenerators = False
    Left = 704
    Top = 464
  end
  object DSDetalle: TDataSource
    DataSet = CDSDetalles
    Left = 632
    Top = 464
  end
  object CDSBuscaPersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaPersonal'
    Left = 522
    Top = 144
    object CDSBuscaPersonalNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 60
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSBuscaPersonalCODIGO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 12
      FieldName = 'CODIGO'
      Size = 6
    end
  end
  object DSPBuscaPersonal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaPersonal
    Options = []
    Left = 618
    Top = 144
  end
  object ComBuscadorEmpleados: TComBuscador
    Data = CDSBuscaPersonal
    Campo = 'CODIGO'
    Titulo = 'Empleados'
    rOk = False
    Left = 728
    Top = 144
  end
  object QPerson: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select p.cargo,p.categoria,p.ctacontable,p.domicilio,p.estado_ci' +
        'vil,'
      
        '       p.fecha_ingreso,p.fecha_nacimiento,p.codigo,p.localidad,p' +
        '.nombre,p.telefono_1,'
      
        '       p.telefono_2,c.detalle as MuestraCargo, ct.detalle as Mue' +
        'straCategoria,'
      '       cp.Detalle_Postal as MuestraLocalidad,'
      '       cp.codigo_postal as MuestraCPostal from personal p'
      'left join cargo c on c.id=p.cargo'
      'left join personal_categoria ct on ct.id=p.categoria'
      'left join c_postal cp on cp.id_Postal=p.localidad'
      'where p.codigo=:codigo')
    Left = 576
    Top = 336
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
  end
  object DSPPersonal: TDataSetProvider
    DataSet = QPerson
    Options = []
    Left = 632
    Top = 336
  end
  object CDSPersonal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 6
      end>
    ProviderName = 'DSPPersonal'
    Left = 712
    Top = 336
    object CDSPersonalCARGO: TIntegerField
      FieldName = 'CARGO'
    end
    object CDSPersonalCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
    end
    object CDSPersonalCTACONTABLE: TIntegerField
      FieldName = 'CTACONTABLE'
    end
    object CDSPersonalDOMICILIO: TStringField
      FieldName = 'DOMICILIO'
      Size = 50
    end
    object CDSPersonalESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      FixedChar = True
      Size = 1
    end
    object CDSPersonalFECHA_INGRESO: TSQLTimeStampField
      FieldName = 'FECHA_INGRESO'
    end
    object CDSPersonalFECHA_NACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHA_NACIMIENTO'
    end
    object CDSPersonalCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSPersonalLOCALIDAD: TIntegerField
      FieldName = 'LOCALIDAD'
    end
    object CDSPersonalNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSPersonalTELEFONO_1: TStringField
      FieldName = 'TELEFONO_1'
      Size = 15
    end
    object CDSPersonalTELEFONO_2: TStringField
      FieldName = 'TELEFONO_2'
      Size = 15
    end
    object CDSPersonalMUESTRACARGO: TStringField
      FieldName = 'MUESTRACARGO'
      ReadOnly = True
      Size = 30
    end
    object CDSPersonalMUESTRACATEGORIA: TStringField
      FieldName = 'MUESTRACATEGORIA'
      ReadOnly = True
      Size = 30
    end
    object CDSPersonalMUESTRALOCALIDAD: TStringField
      FieldName = 'MUESTRALOCALIDAD'
      ReadOnly = True
      Size = 25
    end
    object CDSPersonalMUESTRACPOSTAL: TStringField
      FieldName = 'MUESTRACPOSTAL'
      ReadOnly = True
      Size = 8
    end
  end
  object QBuscadorConcepto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from personal_conceptos order by concepto')
    Left = 544
    Top = 224
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPBuscadorConcepto: TDataSetProvider
    DataSet = QBuscadorConcepto
    Options = []
    Left = 656
    Top = 232
  end
  object CDSBuscadorConcepto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscadorConcepto'
    Left = 744
    Top = 224
    object StringField6: TStringField
      DisplayLabel = 'Concepto'
      FieldName = 'CONCEPTO'
      Origin = 'CONCEPTO'
      Size = 30
    end
    object StringField5: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 2
    end
    object IntegerField6: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object ComBuscadorConcepto: TComBuscador
    Data = CDSBuscadorConcepto
    Campo = 'ID'
    Titulo = 'Conceptos'
    rOk = False
    Left = 824
    Top = 208
  end
  object QConcepto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from personal_conceptos where id=:id')
    Left = 56
    Top = 392
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QConceptoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConceptoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 2
    end
    object QConceptoCONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Origin = 'CONCEPTO'
      Size = 30
    end
    object QConceptoCALCULO: TStringField
      FieldName = 'CALCULO'
      Origin = 'CALCULO'
      Size = 3
    end
    object QConceptoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QConceptoPORCENTAJE: TFloatField
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
    end
    object QConceptoMINIMO: TFloatField
      FieldName = 'MINIMO'
      Origin = 'MINIMO'
    end
    object QConceptoCONCEPTOBASE: TIntegerField
      FieldName = 'CONCEPTOBASE'
      Origin = 'CONCEPTOBASE'
    end
    object QConceptoCOLUMNA: TIntegerField
      FieldName = 'COLUMNA'
      Origin = 'COLUMNA'
    end
    object QConceptoMAXIMO: TIntegerField
      FieldName = 'MAXIMO'
      Origin = 'MAXIMO'
    end
    object QConceptoVISIBLE: TStringField
      FieldName = 'VISIBLE'
      Origin = 'VISIBLE'
      FixedChar = True
      Size = 1
    end
    object QConceptoCONCEPTOBASE2: TIntegerField
      FieldName = 'CONCEPTOBASE2'
      Origin = 'CONCEPTOBASE2'
    end
  end
  object DSPConcpeto: TDataSetProvider
    DataSet = QConcepto
    Options = []
    Left = 136
    Top = 392
  end
  object CDSConcepto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPConcpeto'
    Left = 216
    Top = 392
    object CDSConceptoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSConceptoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 2
    end
    object CDSConceptoCONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Size = 30
    end
    object CDSConceptoCALCULO: TStringField
      FieldName = 'CALCULO'
      Size = 3
    end
    object CDSConceptoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSConceptoPORCENTAJE: TFloatField
      FieldName = 'PORCENTAJE'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSConceptoMINIMO: TFloatField
      FieldName = 'MINIMO'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSConceptoCONCEPTOBASE: TIntegerField
      FieldName = 'CONCEPTOBASE'
    end
    object CDSConceptoCOLUMNA: TIntegerField
      FieldName = 'COLUMNA'
    end
    object CDSConceptoMAXIMO: TIntegerField
      FieldName = 'MAXIMO'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSConceptoVISIBLE: TStringField
      FieldName = 'VISIBLE'
      FixedChar = True
      Size = 1
    end
    object CDSConceptoCONCEPTOBASE2: TIntegerField
      FieldName = 'CONCEPTOBASE2'
    end
  end
  object QBuscador: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.*,p.nombre as MuestraNombre,p.categoria as MuestraCodCa' +
        'tegoria,ct.detalle as MuestraCategoria from personal_novedades_c' +
        'ab c'
      'left join  personal p on p.codigo=c.empleado'
      'left join personal_categoria ct on ct.id = p.categoria'
      'order by p.nombre'
      '')
    Left = 232
    Top = 128
    object StringField3: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nombre'
      FieldName = 'MUESTRANOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object StringField4: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Categoria'
      FieldName = 'MUESTRACATEGORIA'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 30
    end
    object StringField1: TStringField
      DisplayLabel = 'Cod.Empleado'
      FieldName = 'EMPLEADO'
      Origin = 'EMPLEADO'
      Size = 6
    end
    object IntegerField2: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cod.Actegoria'
      FieldName = 'MUESTRACODCATEGORIA'
      Origin = 'CATEGORIA'
      ProviderFlags = []
    end
    object IntegerField1: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField2: TStringField
      DisplayLabel = 'Liq.'
      FieldName = 'LIQUIDADO'
      Origin = 'LIQUIDADO'
      FixedChar = True
      Size = 1
    end
  end
end

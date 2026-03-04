inherited FormAltaConsulta_CAEA: TFormAltaConsulta_CAEA
  Caption = 'Alta-Consulta CAEA'
  ClientHeight = 523
  ClientWidth = 952
  StyleElements = [seFont, seClient, seBorder]
  OnResize = FormResize
  ExplicitWidth = 970
  ExplicitHeight = 564
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 952
    Height = 470
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 952
    ExplicitHeight = 470
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 178
      Height = 13
      Caption = 'Codigo Autorizacion Anticipado CAEA'
    end
    object Grupo: TLabel
      Left = 24
      Top = 60
      Width = 29
      Height = 13
      Caption = 'Grupo'
    end
    object Label2: TLabel
      Left = 174
      Top = 60
      Width = 88
      Height = 13
      Caption = 'Periodo(YYYYMM)'
    end
    object Label3: TLabel
      Left = 24
      Top = 168
      Width = 73
      Height = 13
      Caption = 'Vigencia desde'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbDesde: TLabel
      Left = 120
      Top = 168
      Width = 24
      Height = 13
      Caption = '--------'
    end
    object Label5: TLabel
      Left = 24
      Top = 187
      Width = 72
      Height = 13
      Caption = 'Vigencia Hasta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbHasta: TLabel
      Left = 120
      Top = 187
      Width = 24
      Height = 13
      Caption = '--------'
    end
    object Label7: TLabel
      Left = 24
      Top = 206
      Width = 51
      Height = 13
      Caption = 'Procesado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbProcesado: TLabel
      Left = 120
      Top = 206
      Width = 24
      Height = 13
      Caption = '--------'
    end
    object Label9lbTope: TLabel
      Left = 24
      Top = 225
      Width = 25
      Height = 13
      Caption = 'Tope'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbTope: TLabel
      Left = 120
      Top = 225
      Width = 24
      Height = 13
      Caption = '--------'
    end
    object edCae: TEdit
      Left = 24
      Top = 27
      Width = 238
      Height = 21
      Enabled = False
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 24
      Top = 120
      Width = 238
      Height = 25
      Action = SolicitudCAEA
      Caption = 'Solicitud CAEA'
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 195
      Top = 427
      Width = 75
      Height = 25
      Action = Consultar
      Anchors = [akLeft, akBottom]
      Caption = 'Consultar'
      TabOrder = 2
    end
    object edPeriodo: TEdit
      Left = 161
      Top = 79
      Width = 101
      Height = 21
      Alignment = taCenter
      MaxLength = 6
      TabOrder = 3
    end
    object cbOrden: TComboBox
      Left = 24
      Top = 79
      Width = 112
      Height = 21
      ItemIndex = 0
      TabOrder = 4
      Text = '1'#186' Quincena'
      Items.Strings = (
        '1'#186' Quincena'
        '2'#186' Quincena')
    end
    object cxGrid1: TcxGrid
      Left = 290
      Top = 0
      Width = 662
      Height = 470
      Align = alRight
      TabOrder = 5
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellClick = cxGrid1DBTableView1CellClick
        DataController.DataSource = DSCaea
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1PERIODO: TcxGridDBColumn
          DataBinding.FieldName = 'PERIODO'
          HeaderAlignmentHorz = taCenter
          Width = 73
        end
        object cxGrid1DBTableView1ORDEN: TcxGridDBColumn
          DataBinding.FieldName = 'ORDEN'
          HeaderAlignmentHorz = taCenter
          Width = 55
        end
        object cxGrid1DBTableView1VIGENCIADESDE: TcxGridDBColumn
          DataBinding.FieldName = 'VIGENCIADESDE'
          HeaderAlignmentHorz = taCenter
          Width = 53
        end
        object cxGrid1DBTableView1VIGENCIAHASTA: TcxGridDBColumn
          DataBinding.FieldName = 'VIGENCIAHASTA'
          HeaderAlignmentHorz = taCenter
          Width = 63
        end
        object cxGrid1DBTableView1FECHAPROCESO: TcxGridDBColumn
          DataBinding.FieldName = 'FECHAPROCESO'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1CAEA: TcxGridDBColumn
          DataBinding.FieldName = 'CAEA'
          HeaderAlignmentHorz = taCenter
          Width = 153
        end
        object cxGrid1DBTableView1FECHATOPE: TcxGridDBColumn
          DataBinding.FieldName = 'FECHATOPE'
          HeaderAlignmentHorz = taCenter
        end
        object cxGrid1DBTableView1INFORMADO_AFIP: TcxGridDBColumn
          DataBinding.FieldName = 'INFORMADO_AFIP'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          HeaderAlignmentHorz = taCenter
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 470
    Width = 952
    Align = alBottom
    ExplicitTop = 470
    ExplicitWidth = 952
    inherited btConfirma: TBitBtn
      Visible = False
    end
    inherited btNuevo: TBitBtn
      Visible = False
    end
    inherited btCancelar: TBitBtn
      Visible = False
    end
    inherited btModificar: TBitBtn
      Visible = False
    end
    inherited Pr: TSpeedButton
      Visible = False
    end
    inherited btBuscar: TBitBtn
      Visible = False
    end
    inherited Ne: TSpeedButton
      Visible = False
    end
    inherited btBorrar: TBitBtn
      Visible = False
    end
  end
  inherited Panel1: TPanel
    Top = 500
    Width = 952
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 500
    ExplicitWidth = 952
    inherited sbEstado: TStatusBar
      Width = 790
      ExplicitWidth = 790
    end
  end
  inherited ActionList1: TActionList
    object SolicitudCAEA: TAction
      Caption = 'Solicitud CAEA'
      OnExecute = SolicitudCAEAExecute
    end
    object Consultar: TAction
      Caption = 'Consultar'
      OnExecute = ConsultarExecute
    end
    object InformarSinMovmiento: TAction
      Caption = 'InformarSinMovmiento'
      OnExecute = InformarSinMovmientoExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 472
    Top = 80
  end
  inherited ImageList1: TImageList
    Left = 224
    Top = 160
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
  end
  object QEmpresa: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from empresa')
    Left = 368
    Top = 392
    object QEmpresaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object QEmpresaACTIVIDAD: TStringField
      FieldName = 'ACTIVIDAD'
      Origin = 'ACTIVIDAD'
      Size = 30
    end
    object QEmpresaDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 30
    end
    object QEmpresaLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 30
    end
    object QEmpresaCORREO: TStringField
      FieldName = 'CORREO'
      Origin = 'CORREO'
      Size = 30
    end
    object QEmpresaTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Origin = 'TELEFONO1'
      Size = 10
    end
    object QEmpresaTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Origin = 'TELEFONO2'
      Size = 10
    end
    object QEmpresaCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QEmpresaCONDICIONIVA: TStringField
      FieldName = 'CONDICIONIVA'
      Origin = 'CONDICIONIVA'
      Size = 15
    end
    object QEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField
      FieldName = 'NRO_AGTE_RET_INGBRUTOS'
      Origin = 'NRO_AGTE_RET_INGBRUTOS'
      Size = 15
    end
    object QEmpresaLOGO: TBlobField
      FieldName = 'LOGO'
      Origin = 'LOGO'
    end
    object QEmpresaCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QEmpresaNRO_AGTE_RET_GANANCIA: TStringField
      FieldName = 'NRO_AGTE_RET_GANANCIA'
      Origin = 'NRO_AGTE_RET_GANANCIA'
      Size = 15
    end
    object QEmpresaAG_RET_GANANCIA: TStringField
      FieldName = 'AG_RET_GANANCIA'
      Origin = 'AG_RET_GANANCIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QEmpresaAG_RET_ING_BRUTOS: TStringField
      FieldName = 'AG_RET_ING_BRUTOS'
      Origin = 'AG_RET_ING_BRUTOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField
      FieldName = 'AG_PERCEPCION_ING_BRUTOS'
      Origin = 'AG_PERCEPCION_ING_BRUTOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QEmpresaTASA_PERCEPCION_IB: TFloatField
      FieldName = 'TASA_PERCEPCION_IB'
      Origin = 'TASA_PERCEPCION_IB'
    end
    object QEmpresaMINO_IMP_PERCEP_IB: TFloatField
      FieldName = 'MINO_IMP_PERCEP_IB'
      Origin = 'MINO_IMP_PERCEP_IB'
    end
    object QEmpresaPROVINCIA: TIntegerField
      FieldName = 'PROVINCIA'
      Origin = 'PROVINCIA'
    end
    object QEmpresaTASA_RET_IIBB: TFloatField
      FieldName = 'TASA_RET_IIBB'
      Origin = 'TASA_RET_IIBB'
      Required = True
    end
    object QEmpresaMINIMO_IMP_RET_IIBB: TFloatField
      FieldName = 'MINIMO_IMP_RET_IIBB'
      Origin = 'MINIMO_IMP_RET_IIBB'
      Required = True
    end
    object QEmpresaPUNITORIOS: TFloatField
      FieldName = 'PUNITORIOS'
      Origin = 'PUNITORIOS'
      Required = True
    end
    object QEmpresaNRO_RENSPA: TStringField
      FieldName = 'NRO_RENSPA'
      Origin = 'NRO_RENSPA'
    end
    object QEmpresaNRO_RUCA: TIntegerField
      FieldName = 'NRO_RUCA'
      Origin = 'NRO_RUCA'
    end
    object QEmpresaCUIT_AUTORIZADO: TStringField
      FieldName = 'CUIT_AUTORIZADO'
      Origin = 'CUIT_AUTORIZADO'
      Size = 13
    end
    object QEmpresaNOMBRE_AUTORIZADO: TStringField
      FieldName = 'NOMBRE_AUTORIZADO'
      Origin = 'NOMBRE_AUTORIZADO'
      Size = 50
    end
    object QEmpresaCBU: TStringField
      FieldName = 'CBU'
      Origin = 'CBU'
      Size = 22
    end
    object QEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField
      FieldName = 'FECHA_INICIO_ACTI'
      Origin = 'FECHA_INICIO_ACTI'
    end
  end
  object QGuardarCAEA: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'insert into caea (id,periodo,orden,vigenciadesde,vigenciahasta,f' +
        'echatope,fechaproceso,informado_afip,CAEA)'
      
        'values (-1,:periodo,:orden,:desde,:hasta,:tope,:proceso,'#39'N'#39',:CAE' +
        'A)')
    Left = 200
    Top = 384
    ParamData = <
      item
        Name = 'PERIODO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end
      item
        Name = 'ORDEN'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DESDE'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Name = 'HASTA'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Name = 'TOPE'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Name = 'PROCESO'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Name = 'CAEA'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end>
  end
  object QCaea: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.* from caea c'
      'order by c.periodo desc,c.orden desc')
    Left = 464
    Top = 416
  end
  object DSPCaea: TDataSetProvider
    DataSet = QCaea
    Options = []
    Left = 528
    Top = 424
  end
  object CDSCaea: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCaea'
    AfterScroll = CDSCaeaAfterScroll
    Left = 600
    Top = 424
    object CDSCaeaID: TIntegerField
      DisplayWidth = 11
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCaeaPERIODO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Periodo'
      DisplayWidth = 7
      FieldName = 'PERIODO'
      Origin = 'PERIODO'
      Size = 6
    end
    object CDSCaeaORDEN: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Orden'
      DisplayWidth = 12
      FieldName = 'ORDEN'
      Origin = 'ORDEN'
    end
    object CDSCaeaINFORMADO_AFIP: TStringField
      Alignment = taCenter
      DisplayLabel = 'Informado'
      DisplayWidth = 10
      FieldName = 'INFORMADO_AFIP'
      Origin = 'INFORMADO_AFIP'
      FixedChar = True
      Size = 1
    end
    object CDSCaeaCAEA: TStringField
      Alignment = taCenter
      DisplayWidth = 60
      FieldName = 'CAEA'
      Origin = 'CAEA'
      Size = 50
    end
    object CDSCaeaVIGENCIADESDE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Desde'
      FieldName = 'VIGENCIADESDE'
      Origin = 'VIGENCIADESDE'
      Size = 8
    end
    object CDSCaeaVIGENCIAHASTA: TStringField
      Alignment = taCenter
      DisplayLabel = 'Hasta'
      FieldName = 'VIGENCIAHASTA'
      Origin = 'VIGENCIAHASTA'
      Size = 8
    end
    object CDSCaeaFECHATOPE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tope'
      FieldName = 'FECHATOPE'
      Origin = 'FECHATOPE'
      Size = 8
    end
    object CDSCaeaFECHAPROCESO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Proceso'
      FieldName = 'FECHAPROCESO'
      Origin = 'FECHAPROCESO'
      Size = 15
    end
  end
  object DSCaea: TDataSource
    DataSet = CDSCaea
    Left = 648
    Top = 424
  end
  object QVerificaCAEA: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.id from caea c'
      'where c.periodo=:periodo and c.orden=:orden'
      '')
    Left = 464
    Top = 368
    ParamData = <
      item
        Name = 'PERIODO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end
      item
        Name = 'ORDEN'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QVerificaCAEAID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 696
    Top = 176
  end
end

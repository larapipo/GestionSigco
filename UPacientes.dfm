inherited FormPacientes: TFormPacientes
  BorderStyle = bsSingle
  Caption = 'Pacientes'
  ClientHeight = 700
  ClientWidth = 602
  Position = poDefault
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 620
  ExplicitHeight = 741
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 602
    Height = 457
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 602
    ExplicitHeight = 457
    object Label1: TLabel
      Left = 14
      Top = 0
      Width = 9
      Height = 13
      Caption = 'Id'
      FocusControl = cxDBSpinEdit1
    end
    object Label2: TLabel
      Left = 83
      Top = 0
      Width = 40
      Height = 13
      Caption = 'Nombre '
      FocusControl = edNombre
    end
    object Label3: TLabel
      Left = 83
      Top = 43
      Width = 45
      Height = 13
      Caption = 'Direccion'
      FocusControl = edDireccion
    end
    object Label4: TLabel
      Left = 83
      Top = 88
      Width = 51
      Height = 13
      Caption = 'Telefono 1'
      FocusControl = edTelefono1
    end
    object Label5: TLabel
      Left = 210
      Top = 88
      Width = 51
      Height = 13
      Caption = 'Telefono 2'
      FocusControl = edTelefono2
    end
    object Label6: TLabel
      Left = 84
      Top = 137
      Width = 46
      Height = 13
      Caption = 'Localidad'
      FocusControl = edLocalidad
    end
    object Label7: TLabel
      Left = 410
      Top = 139
      Width = 22
      Height = 13
      Caption = 'Cod '
      FocusControl = edPostal
    end
    object Label8: TLabel
      Left = 83
      Top = 184
      Width = 55
      Height = 13
      Caption = 'Obra Social'
    end
    object Label9: TLabel
      Left = 450
      Top = 184
      Width = 54
      Height = 13
      Caption = 'Nro Afiliado'
      FocusControl = edNroOSocial
    end
    object Label10: TLabel
      Left = 84
      Top = 272
      Width = 19
      Height = 13
      Caption = 'Mail'
      FocusControl = edMail
    end
    object Label11: TLabel
      Left = 83
      Top = 229
      Width = 47
      Height = 13
      Caption = 'Tipo Doc.'
    end
    object Label12: TLabel
      Left = 161
      Top = 229
      Width = 75
      Height = 13
      Caption = 'Nro.Documento'
      FocusControl = edNumeroDoc
    end
    object SpeedButton1: TSpeedButton
      Left = 402
      Top = 200
      Width = 18
      Height = 22
      Hint = 'ABM O.Sociales'
      Action = ObraSociañ
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 304
      Top = 352
      Width = 51
      Height = 13
      Caption = 'Fecha Alta'
    end
    object Label14: TLabel
      Left = 312
      Top = 416
      Width = 54
      Height = 13
      Caption = 'Fecha Baja'
    end
    object cxDBSpinEdit1: TDBEdit
      Left = 14
      Top = 16
      Width = 63
      Height = 21
      DataField = 'ID'
      DataSource = DSBase
      TabOrder = 0
    end
    object edNombre: TDBEdit
      Left = 83
      Top = 16
      Width = 279
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOMBRE'
      DataSource = DSBase
      TabOrder = 1
    end
    object edDireccion: TDBEdit
      Left = 83
      Top = 62
      Width = 399
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DIRECCION'
      DataSource = DSBase
      TabOrder = 2
    end
    object edTelefono1: TDBEdit
      Left = 83
      Top = 104
      Width = 121
      Height = 21
      DataField = 'TELEFONO_1'
      DataSource = DSBase
      TabOrder = 3
    end
    object edTelefono2: TDBEdit
      Left = 210
      Top = 104
      Width = 121
      Height = 21
      DataField = 'TELEFONO_2'
      DataSource = DSBase
      TabOrder = 4
    end
    object edLocalidad: TDBEdit
      Left = 144
      Top = 155
      Width = 248
      Height = 21
      Color = clInfoBk
      DataField = 'LOCALIDAD'
      DataSource = DSBase
      Enabled = False
      TabOrder = 6
    end
    object edPostal: TDBEdit
      Left = 410
      Top = 155
      Width = 121
      Height = 21
      Color = clInfoBk
      DataField = 'CPOSTAL'
      DataSource = DSBase
      Enabled = False
      TabOrder = 7
    end
    object edNroOSocial: TDBEdit
      Left = 450
      Top = 203
      Width = 121
      Height = 21
      DataField = 'NRO_AFILIADO'
      DataSource = DSBase
      TabOrder = 9
    end
    object edMail: TDBEdit
      Left = 84
      Top = 288
      Width = 444
      Height = 21
      DataField = 'MAIL'
      DataSource = DSBase
      TabOrder = 13
    end
    object edNumeroDoc: TDBEdit
      Left = 161
      Top = 245
      Width = 121
      Height = 21
      DataField = 'NRO_DOCUMENTO'
      DataSource = DSBase
      TabOrder = 11
    end
    object eddPostal: TJvDBComboEdit
      Left = 83
      Top = 155
      Width = 49
      Height = 21
      Margins.Left = 1
      Margins.Top = 1
      ClickKey = 16397
      DataField = 'ID_POSTAL'
      DataSource = DSBase
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000A000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFC000003300000033000000FFC00000}
      ButtonWidth = 16
      TabOrder = 5
      OnButtonClick = BuscaLocalidadExecute
    end
    object cbOSocial: TJvDBLookupCombo
      Left = 84
      Top = 202
      Width = 317
      Height = 21
      DataField = 'ID_OSOCIAL'
      DataSource = DSBase
      LookupField = 'ID'
      LookupDisplay = 'NOMBRE'
      LookupSource = DSOSocial
      TabOrder = 8
    end
    object dbTipoDoc: TJvDBComboBox
      Left = 83
      Top = 245
      Width = 62
      Height = 21
      DataField = 'TIPO_DOC'
      DataSource = DSBase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        'DNI'
        'CI'
        'LE'
        'LC'
        'PAS')
      ParentFont = False
      TabOrder = 10
      Values.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object edFechaNacimiento: TJvDBDateEdit
      Left = 288
      Top = 245
      Width = 113
      Height = 21
      DataField = 'FECHA_NACIMIENTO'
      DataSource = DSBase
      ShowNullDate = False
      TabOrder = 12
    end
    object JvDBDateEdit1: TJvDBDateEdit
      Left = 391
      Top = 349
      Width = 113
      Height = 21
      DataField = 'FECHA_NACIMIENTO'
      DataSource = DSBase
      ShowNullDate = False
      TabOrder = 14
    end
    object JvDBDateEdit2: TJvDBDateEdit
      Left = 391
      Top = 413
      Width = 113
      Height = 21
      DataField = 'FECHA_NACIMIENTO'
      DataSource = DSBase
      ShowNullDate = False
      TabOrder = 15
    end
  end
  inherited ToolBar1: TToolBar
    Top = 457
    Width = 602
    ExplicitTop = 457
    ExplicitWidth = 602
  end
  inherited Panel1: TPanel
    Top = 487
    Width = 602
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 487
    ExplicitWidth = 602
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 513
      ExplicitWidth = 513
    end
  end
  inherited ActionList1: TActionList
    object BuscaLocalidad: TAction
      Caption = 'BuscaLocalidad'
      OnExecute = BuscaLocalidadExecute
    end
    object ObraSociañ: TAction
      Caption = '+'
      OnExecute = ObraSociañExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = CDSPacientes
  end
  inherited ImageList1: TImageList
    Left = 152
    Top = 304
  end
  inherited JvFormStorage: TJvFormStorage
    Active = False
    Options = []
    Left = 376
    Top = 280
  end
  inherited QUltimoCodigo: TSQLQuery
    Top = 640
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 360
    Top = 344
  end
  inherited ComBuscadorBase: TComBuscador
    Data = CDSPacientesBuscador
    Campo = 'ID'
    Titulo = 'Pacientes'
    Left = 448
    Top = 384
  end
  inherited QBrowse2: TFDQuery
    Left = 192
    Top = 376
  end
  inherited QUltimoCodigo2: TFDQuery
    SQL.Strings = (
      'select max(p.id) from Pacientes p')
    Left = 192
    Top = 336
  end
  object QPacientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select p.* from pacientes p where p.id=:id')
    Left = 320
    Top = 440
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QPacientesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPacientesTELEFONO_1: TStringField
      FieldName = 'TELEFONO_1'
      Origin = 'TELEFONO_1'
      Size = 25
    end
    object QPacientesTELEFONO_2: TStringField
      FieldName = 'TELEFONO_2'
      Origin = 'TELEFONO_2'
      Size = 25
    end
    object QPacientesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 50
    end
    object QPacientesCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 10
    end
    object QPacientesID_OSOCIAL: TIntegerField
      FieldName = 'ID_OSOCIAL'
      Origin = 'ID_OSOCIAL'
    end
    object QPacientesNRO_AFILIADO: TStringField
      FieldName = 'NRO_AFILIADO'
      Origin = 'NRO_AFILIADO'
    end
    object QPacientesMAIL: TStringField
      FieldName = 'MAIL'
      Origin = 'MAIL'
      Size = 150
    end
    object QPacientesTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      Origin = 'TIPO_DOC'
      Size = 3
    end
    object QPacientesNRO_DOCUMENTO: TStringField
      FieldName = 'NRO_DOCUMENTO'
      Origin = 'NRO_DOCUMENTO'
      Size = 12
    end
    object QPacientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 100
    end
    object QPacientesDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 150
    end
    object QPacientesID_POSTAL: TIntegerField
      FieldName = 'ID_POSTAL'
      Origin = 'ID_POSTAL'
    end
    object QPacientesFECHA_NACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHA_NACIMIENTO'
      Origin = 'FECHA_NACIMIENTO'
    end
  end
  object DSPPacientes: TDataSetProvider
    DataSet = QPacientes
    Options = []
    Left = 408
    Top = 440
  end
  object CDSPacientes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPacientes'
    OnNewRecord = CDSPacientesNewRecord
    Left = 496
    Top = 448
    object CDSPacientesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPacientesTELEFONO_1: TStringField
      FieldName = 'TELEFONO_1'
      Origin = 'TELEFONO_1'
      Size = 25
    end
    object CDSPacientesTELEFONO_2: TStringField
      FieldName = 'TELEFONO_2'
      Origin = 'TELEFONO_2'
      Size = 25
    end
    object CDSPacientesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 50
    end
    object CDSPacientesCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 10
    end
    object CDSPacientesID_OSOCIAL: TIntegerField
      FieldName = 'ID_OSOCIAL'
      Origin = 'ID_OSOCIAL'
    end
    object CDSPacientesNRO_AFILIADO: TStringField
      FieldName = 'NRO_AFILIADO'
      Origin = 'NRO_AFILIADO'
    end
    object CDSPacientesMAIL: TStringField
      FieldName = 'MAIL'
      Origin = 'MAIL'
      Size = 150
    end
    object CDSPacientesTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      Origin = 'TIPO_DOC'
      Size = 3
    end
    object CDSPacientesNRO_DOCUMENTO: TStringField
      FieldName = 'NRO_DOCUMENTO'
      Origin = 'NRO_DOCUMENTO'
      Size = 12
    end
    object CDSPacientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 100
    end
    object CDSPacientesDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 150
    end
    object CDSPacientesID_POSTAL: TIntegerField
      FieldName = 'ID_POSTAL'
      Origin = 'ID_POSTAL'
      OnSetText = CDSPacientesID_POSTALSetText
    end
    object CDSPacientesFECHA_NACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHA_NACIMIENTO'
      Origin = 'FECHA_NACIMIENTO'
    end
  end
  object DSPBuscaCPostal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCPostalFD
    Options = []
    Left = 248
    Top = 496
  end
  object CDSBuscaCPostal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaCPostal'
    Left = 328
    Top = 496
    object CDSBuscaCPostalDETALLE_POSTAL: TStringField
      DisplayLabel = 'Localidad'
      DisplayWidth = 40
      FieldName = 'DETALLE_POSTAL'
      Origin = 'DETALLE_POSTAL'
      Size = 25
    end
    object CDSBuscaCPostalCODIGO_POSTAL: TStringField
      DisplayLabel = 'C.Postal'
      DisplayWidth = 12
      FieldName = 'CODIGO_POSTAL'
      Origin = 'CODIGO_POSTAL'
      Size = 8
    end
    object CDSBuscaCPostalTELEDISCADO: TStringField
      FieldName = 'TELEDISCADO'
      Origin = 'TELEDISCADO'
      Size = 6
    end
    object CDSBuscaCPostalID_POSTAL: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID_POSTAL'
      Origin = 'ID_POSTAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSBuscaCPostalPROVINCIA: TIntegerField
      FieldName = 'PROVINCIA'
      Origin = 'PROVINCIA'
      Visible = False
    end
  end
  object ComBuscadorLocalidades: TComBuscador
    Data = CDSBuscaCPostal
    Campo = 'ID_POSTAL'
    Titulo = 'Localidades'
    rOk = False
    Left = 474
    Top = 232
  end
  object DSPPostal: TDataSetProvider
    DataSet = DMMain_2.QPostal
    Options = []
    Left = 272
    Top = 584
  end
  object CDSPostal: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPostal'
    Left = 200
    Top = 584
    object CDSPostalID_POSTAL: TIntegerField
      FieldName = 'ID_POSTAL'
      Required = True
    end
    object CDSPostalCODIGO_POSTAL: TStringField
      FieldName = 'CODIGO_POSTAL'
      Required = True
      Size = 8
    end
    object CDSPostalDETALLE_POSTAL: TStringField
      FieldName = 'DETALLE_POSTAL'
      Required = True
      Size = 25
    end
    object CDSPostalTELEDISCADO: TStringField
      FieldName = 'TELEDISCADO'
      Size = 6
    end
    object CDSPostalPROVINCIA: TIntegerField
      FieldName = 'PROVINCIA'
    end
  end
  object QOSocial: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select  * from  obras_sociales')
    Left = 136
    Top = 472
  end
  object DSPOSocial: TDataSetProvider
    DataSet = QOSocial
    Options = []
    Left = 88
    Top = 472
  end
  object CDSOSocial: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPOSocial'
    Left = 40
    Top = 464
    object CDSOSocialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSOSocialNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object DSOSocial: TDataSource
    DataSet = CDSOSocial
    Left = 96
    Top = 400
  end
  object QPacientesBuscador: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select p.* from pacientes p order by p.nombre')
    Left = 376
    Top = 560
  end
  object DSPPacientesBuscador: TDataSetProvider
    DataSet = QPacientesBuscador
    Options = []
    Left = 472
    Top = 552
  end
  object CDSPacientesBuscador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPPacientesBuscador'
    OnNewRecord = CDSPacientesNewRecord
    Left = 560
    Top = 552
    object StringField19: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 100
    end
    object StringField20: TStringField
      DisplayLabel = 'Direccion'
      FieldName = 'DIRECCION'
      Size = 150
    end
    object StringField18: TStringField
      DisplayLabel = 'Nr.Documento'
      FieldName = 'NRO_DOCUMENTO'
      Size = 12
    end
    object IntegerField4: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Required = True
    end
  end
end

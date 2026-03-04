inherited FormOProduccionIncidencias: TFormOProduccionIncidencias
  Caption = 'Incidencias Orden de Produccion'
  ClientHeight = 680
  ClientWidth = 1038
  ExplicitWidth = 1056
  ExplicitHeight = 721
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1038
    Height = 627
    Align = alClient
    ExplicitWidth = 1038
    ExplicitHeight = 627
    object pn1: TPanel
      Left = 0
      Top = 0
      Width = 1038
      Height = 129
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 0
      object lb1: TLabel
        Left = 12
        Top = 5
        Width = 49
        Height = 16
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbRazonSocial: TLabel
        Left = 152
        Top = 5
        Width = 88
        Height = 16
        Caption = 'lbRazonSocial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbTelefono1: TLabel
        Left = 604
        Top = 5
        Width = 72
        Height = 16
        Caption = 'lbTelefono1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbTelefono2: TLabel
        Left = 604
        Top = 24
        Width = 72
        Height = 16
        Caption = 'lbTelefono2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbTeledonoCelular: TLabel
        Left = 804
        Top = 5
        Width = 112
        Height = 16
        Caption = 'lbTeledonoCelular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lb2: TLabel
        Left = 532
        Top = 5
        Width = 61
        Height = 16
        Caption = 'Telefonos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbCodigo: TLabel
        Left = 77
        Top = 5
        Width = 55
        Height = 16
        Caption = 'lbCodigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 11
        Top = 44
        Width = 83
        Height = 13
        Caption = 'Nombre Contacto'
        FocusControl = edContacto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 287
        Top = 44
        Width = 42
        Height = 13
        Caption = 'Telefono'
        FocusControl = edTelefono
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 563
        Top = 85
        Width = 33
        Height = 13
        Caption = 'Asunto'
        FocusControl = edTelefono
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 11
        Top = 85
        Width = 104
        Height = 13
        Caption = 'Nombre otro Contacto'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 287
        Top = 85
        Width = 42
        Height = 13
        Caption = 'Telefono'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 563
        Top = 44
        Width = 93
        Height = 13
        Caption = 'Correo Electronicoa'
        FocusControl = edCorreo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object edContacto: TDBEdit
        Left = 11
        Top = 61
        Width = 270
        Height = 21
        DataField = 'NOMBRE'
        DataSource = DSContacto
        TabOrder = 0
      end
      object edTelefono: TDBEdit
        Left = 287
        Top = 61
        Width = 270
        Height = 21
        DataField = 'TELEFONO'
        DataSource = DSContacto
        TabOrder = 1
      end
      object DBEdit1: TDBEdit
        Left = 563
        Top = 102
        Width = 298
        Height = 21
        DataField = 'ASUNTO'
        DataSource = DSContacto
        TabOrder = 5
      end
      object DBEdit2: TDBEdit
        Left = 11
        Top = 102
        Width = 270
        Height = 21
        DataField = 'NOMBRE_2'
        DataSource = DSContacto
        TabOrder = 3
      end
      object DBEdit3: TDBEdit
        Left = 287
        Top = 102
        Width = 270
        Height = 21
        DataField = 'TELEFONO_2'
        DataSource = DSContacto
        TabOrder = 4
      end
      object edCorreo: TDBEdit
        Left = 563
        Top = 61
        Width = 382
        Height = 21
        DataField = 'EMAIL'
        DataSource = DSContacto
        TabOrder = 2
      end
    end
    object tlb1: TToolBar
      Left = 0
      Top = 129
      Width = 1038
      Height = 22
      ButtonHeight = 25
      ButtonWidth = 27
      Caption = 'tlb1'
      Images = ImageList1
      TabOrder = 1
      object btn3: TToolButton
        Left = 0
        Top = 0
        Width = 25
        Caption = 'btn3'
        ImageIndex = 11
        Style = tbsSeparator
      end
      object btn1: TToolButton
        Left = 25
        Top = 0
      end
      object btn2: TToolButton
        Left = 52
        Top = 0
      end
      object btn4: TToolButton
        Left = 79
        Top = 0
        Width = 8
        Caption = 'btn4'
        ImageIndex = 11
        Style = tbsSeparator
      end
      object btn5: TToolButton
        Left = 87
        Top = 0
      end
    end
    object dbgIncidiencias: TJvDBGrid
      Left = 0
      Top = 151
      Width = 1038
      Height = 476
      Align = alClient
      DataSource = DSBase
      DefaultDrawing = False
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnColEnter = dbgIncidienciasColEnter
      OnDrawColumnCell = dbgIncidienciasDrawColumnCell
      OnEnter = dbgIncidienciasEnter
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <
        item
          ControlName = 'DBMemo1'
          FieldName = 'DETALLE'
          FitCell = fcCellSize
          LeaveOnUpDownKey = True
        end>
      AutoSizeRows = False
      ReduceFlicker = False
      RowsHeight = 34
      TitleRowHeight = 17
      Columns = <
        item
          Alignment = taCenter
          Color = clInfoBk
          Expanded = False
          FieldName = 'FECHA_HORA'
          Title.Alignment = taCenter
          Width = 137
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE'
          Title.Alignment = taCenter
          Width = 583
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROX_FECHA_CONTACTO'
          Title.Alignment = taCenter
          Width = 123
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'USUARIO'
          Title.Alignment = taCenter
          Width = 143
          Visible = True
        end>
    end
    object DBMemo1: TDBMemo
      Left = 161
      Top = 176
      Width = 577
      Height = 41
      DataField = 'DETALLE'
      DataSource = DSBase
      TabOrder = 3
      Visible = False
      WantReturns = False
      WantTabs = True
    end
  end
  inherited ToolBar1: TToolBar
    Top = 627
    Width = 1038
    Align = alBottom
    ExplicitTop = 627
    ExplicitWidth = 1038
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
    Top = 657
    Width = 1038
    Align = alBottom
    ExplicitTop = 657
    ExplicitWidth = 1038
    inherited sbEstado: TStatusBar
      Width = 876
      ExplicitWidth = 876
    end
  end
  inherited DSBase: TDataSource
    AutoEdit = True
    DataSet = CDSIncidencias
  end
  object QContacto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDate
      end>
    SQL.Strings = (
      'select c.* from oproduccion_INCID_CONTACTO c '
      'where c.ID_oproduccion = :ID ')
    Left = 344
    Top = 424
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QContactoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QContactoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 150
    end
    object QContactoTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Origin = 'TELEFONO'
      Size = 25
    end
    object QContactoASUNTO: TStringField
      FieldName = 'ASUNTO'
      Origin = 'ASUNTO'
      Size = 200
    end
    object QContactoNOMBRE_2: TStringField
      FieldName = 'NOMBRE_2'
      Origin = 'NOMBRE_2'
      Size = 150
    end
    object QContactoTELEFONO_2: TStringField
      FieldName = 'TELEFONO_2'
      Origin = 'TELEFONO_2'
      Size = 25
    end
    object QContactoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object QContactoID_OPRODUCCION: TIntegerField
      FieldName = 'ID_OPRODUCCION'
      Origin = 'ID_OPRODUCCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DSPContacto: TDataSetProvider
    DataSet = QContacto
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 456
    Top = 424
  end
  object CDSContacto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPContacto'
    OnNewRecord = CDSContactoNewRecord
    Left = 560
    Top = 424
    object CDSContactoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSContactoNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 150
    end
    object CDSContactoTELEFONO: TStringField
      DisplayLabel = 'Telefono'
      FieldName = 'TELEFONO'
      Origin = 'TELEFONO'
      Size = 25
    end
    object CDSContactoASUNTO: TStringField
      FieldName = 'ASUNTO'
      Origin = 'ASUNTO'
      Size = 200
    end
    object CDSContactoNOMBRE_2: TStringField
      FieldName = 'NOMBRE_2'
      Origin = 'NOMBRE_2'
      Size = 150
    end
    object CDSContactoTELEFONO_2: TStringField
      FieldName = 'TELEFONO_2'
      Origin = 'TELEFONO_2'
      Size = 25
    end
    object CDSContactoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object CDSContactoID_OPRODUCCION: TIntegerField
      FieldName = 'ID_OPRODUCCION'
      Origin = 'ID_OPRODUCCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DSContacto: TDataSource
    DataSet = CDSContacto
    Left = 656
    Top = 440
  end
  object ibgDetalle: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_OPRODUCC_INCIDENCIA'
    SystemGenerators = False
    Left = 728
    Top = 304
  end
  object CDSIncidencias: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPIncidencias'
    AfterPost = CDSIncidenciasAfterPost
    AfterDelete = CDSIncidenciasAfterDelete
    OnNewRecord = CDSIncidenciasNewRecord
    Left = 560
    Top = 368
    object CDSIncidenciasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSIncidenciasDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 200
    end
    object CDSIncidenciasUSUARIO: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object CDSIncidenciasANIO_MES: TIntegerField
      FieldName = 'ANIO_MES'
      Origin = 'ANIO_MES'
    end
    object CDSIncidenciasCOLOR_FUENTE: TIntegerField
      FieldName = 'COLOR_FUENTE'
      Origin = 'COLOR_FUENTE'
    end
    object CDSIncidenciasCOLOR_BRUSH: TIntegerField
      FieldName = 'COLOR_BRUSH'
      Origin = 'COLOR_BRUSH'
    end
    object CDSIncidenciasBOLD: TSmallintField
      FieldName = 'BOLD'
      Origin = 'BOLD'
      Required = True
    end
    object CDSIncidenciasCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      ProviderFlags = []
      Size = 6
    end
    object CDSIncidenciasID_OPRODUCCION: TIntegerField
      FieldName = 'ID_OPRODUCCION'
      Origin = 'ID_OPRODUCCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSIncidenciasFECHA_HORA: TSQLTimeStampField
      DisplayLabel = 'Fecha/Hora'
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object CDSIncidenciasPROX_FECHA_CONTACTO: TSQLTimeStampField
      DisplayLabel = 'Fecha Prox.Contac.'
      FieldName = 'PROX_FECHA_CONTACTO'
      Origin = 'PROX_FECHA_CONTACTO'
    end
  end
  object DSPIncidencias: TDataSetProvider
    DataSet = QIncidencias
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 464
    Top = 368
  end
  object QIncidencias: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select i.*,p.cliente from OPRODUCCION_INCIDENCIAS i '
      'left join ORDENPRODUCCION_CAB p on p.id= i.ID_OPRODUCCION'
      'where i.ID_OPRODUCCION = :ID '
      'order by i.fecha_hora asc')
    Left = 344
    Top = 368
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QIncidenciasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QIncidenciasDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 200
    end
    object QIncidenciasUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object QIncidenciasANIO_MES: TIntegerField
      FieldName = 'ANIO_MES'
      Origin = 'ANIO_MES'
    end
    object QIncidenciasCOLOR_FUENTE: TIntegerField
      FieldName = 'COLOR_FUENTE'
      Origin = 'COLOR_FUENTE'
    end
    object QIncidenciasCOLOR_BRUSH: TIntegerField
      FieldName = 'COLOR_BRUSH'
      Origin = 'COLOR_BRUSH'
    end
    object QIncidenciasBOLD: TSmallintField
      FieldName = 'BOLD'
      Origin = 'BOLD'
      Required = True
    end
    object QIncidenciasID_OPRODUCCION: TIntegerField
      FieldName = 'ID_OPRODUCCION'
      Origin = 'ID_OPRODUCCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QIncidenciasCLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      ProviderFlags = []
      Size = 6
    end
    object QIncidenciasFECHA_HORA: TSQLTimeStampField
      DisplayLabel = 'Fecha/Hora'
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object QIncidenciasPROX_FECHA_CONTACTO: TSQLTimeStampField
      DisplayLabel = 'Fecha Prox.Contact.'
      FieldName = 'PROX_FECHA_CONTACTO'
      Origin = 'PROX_FECHA_CONTACTO'
    end
  end
  object QClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'SELECT C.codigo,c.nombre,c.razon_social,c.telefono_comercial_1,c' +
        '.telefono_comercial_2,c.telefono_celular,'
      
        'c.telefono_contacto,c.contacto,c.correoelectronico,c.direccion_c' +
        'omercial  FROM Clientes C'
      'where (c.codigo=:codigo)')
    Left = 592
    Top = 248
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
    object QClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
    object QClientesTELEFONO_COMERCIAL_1: TStringField
      FieldName = 'TELEFONO_COMERCIAL_1'
      Origin = 'TELEFONO_COMERCIAL_1'
      Size = 10
    end
    object QClientesTELEFONO_COMERCIAL_2: TStringField
      FieldName = 'TELEFONO_COMERCIAL_2'
      Origin = 'TELEFONO_COMERCIAL_2'
      Size = 10
    end
    object QClientesTELEFONO_CELULAR: TStringField
      FieldName = 'TELEFONO_CELULAR'
      Origin = 'TELEFONO_CELULAR'
      Size = 11
    end
    object QClientesTELEFONO_CONTACTO: TStringField
      FieldName = 'TELEFONO_CONTACTO'
      Origin = 'TELEFONO_CONTACTO'
      Size = 50
    end
    object QClientesCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Origin = 'CONTACTO'
      Size = 50
    end
    object QClientesCORREOELECTRONICO: TStringField
      FieldName = 'CORREOELECTRONICO'
      Origin = 'CORREOELECTRONICO'
      Size = 100
    end
    object QClientesDIRECCION_COMERCIAL: TStringField
      FieldName = 'DIRECCION_COMERCIAL'
      Origin = 'DIRECCION_COMERCIAL'
      Size = 35
    end
  end
end

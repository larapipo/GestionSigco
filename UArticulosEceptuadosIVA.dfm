inherited FormArtciculosEceptuadosIVAVta: TFormArtciculosEceptuadosIVAVta
  Caption = 'Articulos Eceptuados de IVA en la Vta'
  ClientHeight = 564
  ClientWidth = 520
  Position = poDefault
  StyleElements = [seFont, seClient, seBorder]
  OnResize = FormResize
  ExplicitWidth = 538
  ExplicitHeight = 605
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 520
    Height = 511
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 520
    ExplicitHeight = 511
    object dbgPlantilla: TDBGrid
      Left = 0
      Top = 0
      Width = 520
      Height = 511
      Align = alClient
      DataSource = DSBase
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnColEnter = dbgPlantillaColEnter
      OnDblClick = dbgPlantillaDblClick
      OnEditButtonClick = BuscarArticuloExecute
      OnKeyDown = dbgPlantillaKeyDown
      OnKeyPress = dbgPlantillaKeyPress
      Columns = <
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 102
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'MUESTRADESCRIPCION'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 363
          Visible = True
        end>
    end
  end
  inherited ToolBar1: TToolBar
    Top = 511
    Width = 520
    Align = alBottom
    ExplicitTop = 511
    ExplicitWidth = 520
    inherited btConfirma: TBitBtn
      Visible = False
    end
    inherited btNuevo: TBitBtn
      Width = 28
      Visible = False
      ExplicitWidth = 28
    end
    inherited btCancelar: TBitBtn
      Left = 105
      Visible = False
      ExplicitLeft = 105
    end
    inherited btModificar: TBitBtn
      Left = 180
      Width = 29
      Visible = False
      ExplicitLeft = 180
      ExplicitWidth = 29
    end
    inherited Pr: TSpeedButton
      Left = 209
      Visible = False
      ExplicitLeft = 209
    end
    inherited btBuscar: TBitBtn
      Left = 224
      Visible = False
      ExplicitLeft = 224
    end
    inherited Ne: TSpeedButton
      Left = 299
      Visible = False
      ExplicitLeft = 299
    end
    inherited btBorrar: TBitBtn
      Left = 314
      Visible = False
      ExplicitLeft = 314
    end
    inherited btSalir: TBitBtn
      Left = 389
      ExplicitLeft = 389
    end
  end
  inherited Panel1: TPanel
    Top = 541
    Width = 520
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 541
    ExplicitWidth = 520
    inherited sbEstado: TStatusBar
      Width = 431
      ExplicitWidth = 431
    end
  end
  inherited ActionList1: TActionList
    object BuscarArticulo: TAction
      Caption = 'BuscarArticulo'
      ShortCut = 16397
      OnExecute = BuscarArticuloExecute
    end
  end
  inherited DSBase: TDataSource
    AutoEdit = True
    DataSet = CDSPlantilla
    Left = 392
    Top = 248
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
    Left = 224
    Top = 352
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 32
    Top = 496
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 296
    Top = 384
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 408
    Top = 328
  end
  inherited QBrowse2: TFDQuery
    Left = 56
    Top = 312
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 112
    Top = 344
  end
  object QPlantilla: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select p.*,s.detalle_Stk as MuestraDescripcion from articulos_si' +
        'niva p'
      '  left join stock s on s.codigo_stk=p.codigo'
      'where p.codigo=:codigo or :codigo='#39'********'#39'  ')
    Left = 160
    Top = 248
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
    object QPlantillaCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QPlantillaMUESTRADESCRIPCION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADESCRIPCION'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
  end
  object DSPPlantilla: TDataSetProvider
    DataSet = QPlantilla
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 240
    Top = 248
  end
  object CDSPlantilla: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 8
      end>
    ProviderName = 'DSPPlantilla'
    BeforeInsert = CDSPlantillaBeforeInsert
    AfterInsert = CDSPlantillaAfterInsert
    BeforePost = CDSPlantillaBeforePost
    AfterPost = CDSPlantillaAfterPost
    BeforeDelete = CDSPlantillaBeforeDelete
    AfterDelete = CDSPlantillaAfterDelete
    Left = 312
    Top = 248
    object CDSPlantillaCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnSetText = CDSPlantillaCODIGOSetText
      Size = 8
    end
    object CDSPlantillaMUESTRADESCRIPCION: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'MUESTRADESCRIPCION'
      ProviderFlags = []
      Size = 45
    end
  end
  object QArticulos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.codigo_stk,s.detalle_stk from Stock s where s.codigo_st' +
        'k=:Codigo')
    Left = 224
    Top = 432
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
    object QArticulosCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QArticulosDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
  end
  object QBorrraCodigo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from articulos_siniva p'
      'where p.codigo=:codigo ')
    Left = 376
    Top = 168
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
    object StringField1: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object StringField2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADESCRIPCION'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
  end
end

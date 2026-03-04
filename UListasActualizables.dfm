inherited FormListasActualizanPrecio: TFormListasActualizanPrecio
  Caption = 'Listas que Actualizan Precio Forzado'
  ClientHeight = 498
  ClientWidth = 480
  ExplicitWidth = 498
  ExplicitHeight = 539
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 480
    Height = 305
    ExplicitWidth = 480
    ExplicitHeight = 305
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 480
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Listas Actualizables'
      Color = clHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object lwListas: TListView
      Left = 0
      Top = 41
      Width = 480
      Height = 264
      Align = alClient
      Checkboxes = True
      Columns = <
        item
        end
        item
          Caption = 'Lista de Precios'
          Width = 300
        end
        item
          Caption = 'Codigo'
          Width = 100
        end>
      TabOrder = 1
      ViewStyle = vsReport
    end
  end
  inherited ToolBar1: TToolBar
    Top = 305
    Width = 480
    ExplicitTop = 305
    ExplicitWidth = 480
    inherited btConfirma: TBitBtn
      Width = 23
      Visible = False
      ExplicitWidth = 23
    end
    inherited btNuevo: TBitBtn
      Left = 25
      Width = 16
      Visible = False
      ExplicitLeft = 25
      ExplicitWidth = 16
    end
    inherited btCancelar: TBitBtn
      Left = 41
      Width = 24
      Visible = False
      ExplicitLeft = 41
      ExplicitWidth = 24
    end
    inherited btModificar: TBitBtn
      Left = 65
      Width = 16
      Visible = False
      ExplicitLeft = 65
      ExplicitWidth = 16
    end
    inherited Pr: TSpeedButton
      Left = 81
      Visible = False
      ExplicitLeft = 81
    end
    inherited btBuscar: TBitBtn
      Left = 96
      ExplicitLeft = 96
    end
    inherited Ne: TSpeedButton
      Left = 171
      Visible = False
      ExplicitLeft = 171
    end
    inherited btBorrar: TBitBtn
      Left = 186
      Width = 23
      Visible = False
      ExplicitLeft = 186
      ExplicitWidth = 23
    end
    inherited btSalir: TBitBtn
      Left = 209
      ExplicitLeft = 209
    end
  end
  inherited Panel1: TPanel
    Top = 335
    Width = 480
    ExplicitTop = 335
    ExplicitWidth = 480
    inherited sbEstado: TStatusBar
      Width = 318
      ExplicitWidth = 318
    end
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 192
    Top = 360
  end
  object QListas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select l.id,l.nombre,l.actualiza_excepcion from  listaprecioespe' +
        'cialcab l')
    Left = 256
    Top = 416
    object QListasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QListasNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
    object QListasACTUALIZA_EXCEPCION: TStringField
      FieldName = 'ACTUALIZA_EXCEPCION'
      Origin = 'ACTUALIZA_EXCEPCION'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPLista: TDataSetProvider
    DataSet = QListas
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 312
    Top = 416
  end
  object CDSLista: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPLista'
    AfterOpen = CDSListaAfterOpen
    AfterPost = CDSListaAfterPost
    Left = 392
    Top = 408
    object CDSListaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSListaNOMBRE: TStringField
      DisplayLabel = 'Lista de Precio'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
    object CDSListaACTUALIZA_EXCEPCION: TStringField
      DisplayLabel = 'Actualiza'
      FieldName = 'ACTUALIZA_EXCEPCION'
      Origin = 'ACTUALIZA_EXCEPCION'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSLista: TDataSource
    DataSet = CDSLista
    Left = 448
    Top = 416
  end
end

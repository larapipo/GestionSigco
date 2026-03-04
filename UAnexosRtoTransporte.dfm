object FormAnexosRtoTransporte: TFormAnexosRtoTransporte
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Anexos Transporte'
  ClientHeight = 483
  ClientWidth = 610
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poOwnerFormCenter
  OnShow = FormShow
  TextHeight = 13
  object Chofer: TLabel
    Left = 24
    Top = 16
    Width = 33
    Height = 13
    Caption = 'Chofer'
  end
  object Unidad: TLabel
    Left = 24
    Top = 64
    Width = 33
    Height = 13
    Caption = 'Unidad'
  end
  object Anexo: TLabel
    Left = 24
    Top = 107
    Width = 31
    Height = 13
    Caption = 'Anexo'
  end
  object btCancelar: TBitBtn
    Left = 216
    Top = 168
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 0
  end
  object btOk: TBitBtn
    Left = 312
    Top = 168
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
    OnClick = btOkClick
  end
  object dbcChofer: TDBLookupComboBox
    Left = 24
    Top = 35
    Width = 225
    Height = 21
    DataField = 'ID_CHOFER'
    KeyField = 'ID'
    ListField = 'NOMBRE'
    ListSource = DSChoferes
    TabOrder = 2
    OnKeyDown = dbcChoferKeyDown
  end
  object dbcUnidades: TDBLookupComboBox
    Left = 24
    Top = 80
    Width = 225
    Height = 21
    DataField = 'TRASNPORTE_UNIDAD'
    KeyField = 'ID'
    ListField = 'DESCRIPCION'
    ListSource = DSUnidades
    TabOrder = 3
    OnKeyDown = dbcUnidadesKeyDown
  end
  object dbcAnexos: TDBLookupComboBox
    Left = 24
    Top = 126
    Width = 225
    Height = 21
    DataField = 'TRASNPORTE_ADICIONAL'
    KeyField = 'ID'
    ListField = 'DESCRIPCION'
    ListSource = DSAnexos
    TabOrder = 4
    OnKeyDown = dbcAnexosKeyDown
  end
  object DSChoferes: TDataSource
    DataSet = CDSChoferes
    Left = 344
    Top = 368
  end
  object DSUnidades: TDataSource
    DataSet = CDSBuscaUnidades
    Left = 360
    Top = 224
  end
  object DSAnexos: TDataSource
    DataSet = CDSBuscaAnexos
    Left = 352
    Top = 296
  end
  object CDSChoferes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPChoferes'
    Left = 253
    Top = 355
    object CDSChoferesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSChoferesID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
      Origin = 'ID_TRANSPORTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSChoferesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 45
    end
    object CDSChoferesTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      Origin = 'TIPO_DOC'
      Size = 3
    end
    object CDSChoferesNUMERO_DOC: TStringField
      FieldName = 'NUMERO_DOC'
      Origin = 'NUMERO_DOC'
    end
  end
  object DSPChoferes: TDataSetProvider
    DataSet = QChoferes
    Options = []
    Left = 141
    Top = 343
  end
  object DSPBuscaUnidades: TDataSetProvider
    DataSet = QBuscaUnidades
    Options = []
    Left = 141
    Top = 215
  end
  object CDSBuscaUnidades: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    Params = <>
    ProviderName = 'DSPBuscaUnidades'
    Left = 269
    Top = 223
    object CDSBuscaUnidadesDESCRIPCION: TStringField
      DisplayLabel = 'Descripcion'
      DisplayWidth = 25
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 25
    end
    object CDSBuscaUnidadesCAPACIDAD: TFloatField
      FieldName = 'CAPACIDAD'
      Origin = 'CAPACIDAD'
      Required = True
    end
    object CDSBuscaUnidadesDOMINIO: TStringField
      FieldName = 'DOMINIO'
      Origin = 'DOMINIO'
      Size = 12
    end
    object CDSBuscaUnidadesID: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DSPBuscaAnexos: TDataSetProvider
    DataSet = QBuscaAnexos
    Options = []
    Left = 149
    Top = 279
  end
  object CDSBuscaAnexos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaAnexos'
    Left = 253
    Top = 295
    object CDSBuscaAnexosDESCRIPCION: TStringField
      DisplayLabel = 'Descripcion'
      DisplayWidth = 25
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 25
    end
    object CDSBuscaAnexosID: TIntegerField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object QBuscaUnidades: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select u.* from unidades_tr u')
    Left = 53
    Top = 215
  end
  object QChoferes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.* from transporte_choferes c where c.id_transporte = :i' +
        'd')
    Left = 53
    Top = 343
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QBuscaAnexos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select u.* from UNID_AUX_TR u')
    Left = 61
    Top = 279
  end
end

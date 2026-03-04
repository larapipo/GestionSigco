object FormEleccionTransporte: TFormEleccionTransporte
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Eleccion de Transporte'
  ClientHeight = 317
  ClientWidth = 541
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object pnBase: TPanel
    Left = 0
    Top = 0
    Width = 541
    Height = 260
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 22
      Width = 124
      Height = 32
      Caption = 'Transporte'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbChofer: TLabel
      Left = 192
      Top = 70
      Width = 47
      Height = 21
      Caption = 'Chofer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbUnidad: TLabel
      Left = 192
      Top = 125
      Width = 50
      Height = 21
      Caption = 'Unidad'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbAnexo: TLabel
      Left = 192
      Top = 179
      Width = 43
      Height = 21
      Caption = 'Anexo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 376
      Top = 125
      Width = 129
      Height = 17
      Alignment = taRightJustify
      DataField = 'DOMINIO'
      DataSource = DSUnidades
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 301
      Top = 125
      Width = 63
      Height = 21
      Caption = 'Dominio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 376
      Top = 12
      Width = 129
      Height = 17
      Alignment = taRightJustify
      DataField = 'CUIT'
      DataSource = DSTransporte
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 333
      Top = 12
      Width = 31
      Height = 21
      Caption = 'Cuit:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object dbcChofer: TDBLookupComboBox
      Left = 192
      Top = 92
      Width = 300
      Height = 29
      DropDownRows = 12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'ID'
      ListField = 'NOMBRE'
      ListSource = DSChoferes
      ParentFont = False
      TabOrder = 1
    end
    object dbcUnidades: TDBLookupComboBox
      Left = 192
      Top = 148
      Width = 300
      Height = 29
      DropDownRows = 12
      DropDownWidth = 350
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'ID'
      ListField = 'DESCRIPCION;DOMINIO'
      ListSource = DSUnidades
      ParentFont = False
      TabOrder = 2
    end
    object dbcAnexos: TDBLookupComboBox
      Left = 192
      Top = 206
      Width = 300
      Height = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      KeyField = 'ID'
      ListField = 'DESCRIPCION'
      ListSource = DSAnexos
      ParentFont = False
      TabOrder = 3
    end
    object cbdTransorte: TJvDBLookupCombo
      Left = 192
      Top = 35
      Width = 300
      Height = 29
      StyleElements = [seBorder]
      DropDownWidth = 300
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      LookupField = 'ID'
      LookupDisplay = 'NOMBRE'
      LookupSource = DSTransporte
      ParentFont = False
      TabOrder = 0
      OnClick = cbdTransorteClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 260
    Width = 541
    Height = 57
    Align = alBottom
    BevelOuter = bvNone
    Color = clHighlight
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    ParentBackground = False
    TabOrder = 1
    object btOk: TBitBtn
      Left = 294
      Top = 10
      Width = 237
      Height = 37
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = btOkClick
    end
    object btCancelar: TBitBtn
      Left = 10
      Top = 10
      Width = 242
      Height = 37
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
  end
  object DSChoferes: TDataSource
    DataSet = QChoferes
    Left = 104
    Top = 62
  end
  object DSUnidades: TDataSource
    DataSet = QBuscaUnidades
    Left = 96
    Top = 128
  end
  object DSAnexos: TDataSource
    DataSet = QBuscaAnexos
    Left = 88
    Top = 208
  end
  object QBuscaUnidades: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select u.* from unidades_tr u')
    Left = 13
    Top = 127
    object QBuscaUnidadesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaUnidadesDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 25
    end
    object QBuscaUnidadesCAPACIDAD: TFloatField
      FieldName = 'CAPACIDAD'
      Origin = 'CAPACIDAD'
      Required = True
    end
    object QBuscaUnidadesDOMINIO: TStringField
      FieldName = 'DOMINIO'
      Origin = 'DOMINIO'
      Size = 12
    end
  end
  object QChoferes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.* from transporte_choferes c where c.id_transporte = :i' +
        'd')
    Left = 21
    Top = 71
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QChoferesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QChoferesID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
      Origin = 'ID_TRANSPORTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QChoferesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 45
    end
    object QChoferesTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      Origin = 'TIPO_DOC'
      Size = 3
    end
    object QChoferesNUMERO_DOC: TStringField
      FieldName = 'NUMERO_DOC'
      Origin = 'NUMERO_DOC'
    end
  end
  object QBuscaAnexos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select u.* from UNID_AUX_TR u')
    Left = 5
    Top = 199
    object QBuscaAnexosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaAnexosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 25
    end
  end
  object QTransporte: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.* from transportes t')
    Left = 21
    Top = 7
  end
  object DSTransporte: TDataSource
    DataSet = QTransporte
    Left = 104
    Top = 8
  end
end

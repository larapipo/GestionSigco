object FormSeleccionLista: TFormSeleccionLista
  Left = 302
  Top = 176
  Caption = 'Seleccion de Lista'
  ClientHeight = 276
  ClientWidth = 693
  Color = clMenuHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 693
    Height = 105
    Align = alTop
    TabOrder = 0
    object JvGradient2: TJvGradient
      Left = 1
      Top = 1
      Width = 691
      Height = 103
      Style = grVertical
      StartColor = clGradientActiveCaption
      EndColor = clWhite
      ExplicitLeft = 464
      ExplicitTop = 32
      ExplicitWidth = 100
      ExplicitHeight = 41
    end
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 220
      Height = 25
      Caption = 'Lista Clonadas desde'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbclista: TJvDBLookupCombo
      Left = 251
      Top = 32
      Width = 441
      Height = 30
      DisplayEmpty = 'Todas la Listas'
      EmptyValue = '-1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LookupField = 'ID'
      LookupDisplay = 'NOMBRE'
      LookupSource = DSBuscaLista
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 105
    Width = 693
    Height = 56
    Align = alTop
    TabOrder = 1
    object JvGradient1: TJvGradient
      Left = 1
      Top = 1
      Width = 691
      Height = 54
      StartColor = clGradientActiveCaption
      EndColor = clWhite
      ExplicitLeft = 464
      ExplicitTop = 32
      ExplicitWidth = 100
      ExplicitHeight = 41
    end
    object btOk: TBitBtn
      Left = 560
      Top = 14
      Width = 105
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = btOkClick
    end
    object btCancelar: TBitBtn
      Left = 441
      Top = 14
      Width = 105
      Height = 33
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = btCancelarClick
    end
  end
  object CDSBuscaLista: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaLista'
    Left = 296
    Top = 184
    object CDSBuscaListaID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSBuscaListaNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 50
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
    object CDSBuscaListaCLONADA: TStringField
      DisplayLabel = 'Clonada'
      DisplayWidth = 1
      FieldName = 'CLONADA'
      Origin = 'CLONADA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscaListaFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      DisplayWidth = 16
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSBuscaListaPORDEFECTO: TStringField
      DisplayLabel = 'x Def.'
      FieldName = 'PORDEFECTO'
      Origin = 'PORDEFECTO'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscaListaID_LISTA_CLONADA: TIntegerField
      DisplayLabel = 'Lista Clon'
      FieldName = 'ID_LISTA_CLONADA'
      Origin = 'ID_LISTA_CLONADA'
      Visible = False
    end
    object CDSBuscaListaRECARGOBASE: TFloatField
      DisplayLabel = '%'
      DisplayWidth = 5
      FieldName = 'RECARGOBASE'
      Origin = 'RECARGOBASE'
      DisplayFormat = '0.00'
    end
    object CDSBuscaListaCOEFICIENTE: TFloatField
      DisplayLabel = 'Coef.'
      DisplayWidth = 5
      FieldName = 'COEFICIENTE'
      Origin = 'COEFICIENTE'
      DisplayFormat = '0.00'
    end
  end
  object DSPBuscaLista: TDataSetProvider
    DataSet = QBuscaLista
    Left = 168
    Top = 184
  end
  object DSBuscaLista: TDataSource
    DataSet = CDSBuscaLista
    Left = 424
    Top = 192
  end
  object QBuscaLista: TFDQuery
    ObjectView = False
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from ListaPrecioEspecialCab '
      'where clonada='#39'N'#39
      'Order by nombre')
    Left = 80
    Top = 176
  end
end

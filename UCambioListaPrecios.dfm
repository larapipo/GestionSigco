object FormCambioListaPrecios: TFormCambioListaPrecios
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cambio Lista de Precios'
  ClientHeight = 377
  ClientWidth = 569
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 64
    Top = 24
    Width = 385
    Height = 201
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 69
      Width = 98
      Height = 19
      Caption = 'Pasa a Lista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbLista: TLabel
      Left = 16
      Top = 13
      Width = 94
      Height = 19
      Caption = 'Lista actual'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbMuestraLista: TLabel
      Left = 16
      Top = 38
      Width = 18
      Height = 19
      Caption = '//'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbcLista: TJvDBLookupCombo
      Left = 16
      Top = 94
      Width = 345
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      LookupField = 'ID'
      LookupDisplay = 'NOMBRE'
      LookupSource = DSListas
      ParentFont = False
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 176
      Top = 149
      Width = 91
      Height = 28
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 273
      Top = 149
      Width = 88
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn2Click
    end
  end
  object QListas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select l.* from listaprecioespecialcab l '
      'order by l.id')
    Left = 272
    Top = 264
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
    object QListasRECARGOBASE: TFloatField
      FieldName = 'RECARGOBASE'
      Origin = 'RECARGOBASE'
    end
    object QListasPORDEFECTO: TStringField
      FieldName = 'PORDEFECTO'
      Origin = 'PORDEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QListasF_PAGO: TIntegerField
      FieldName = 'F_PAGO'
      Origin = 'F_PAGO'
    end
    object QListasUSO_ADMINISTRADOR: TStringField
      FieldName = 'USO_ADMINISTRADOR'
      Origin = 'USO_ADMINISTRADOR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QListasCLONADA: TStringField
      FieldName = 'CLONADA'
      Origin = 'CLONADA'
      FixedChar = True
      Size = 1
    end
    object QListasID_LISTA_CLONADA: TIntegerField
      FieldName = 'ID_LISTA_CLONADA'
      Origin = 'ID_LISTA_CLONADA'
    end
    object QListasCOEFICIENTE: TFloatField
      FieldName = 'COEFICIENTE'
      Origin = 'COEFICIENTE'
    end
    object QListasEXCLUSIVO_EFECTIVO: TStringField
      FieldName = 'EXCLUSIVO_EFECTIVO'
      Origin = 'EXCLUSIVO_EFECTIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QListasFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
  end
  object DSListas: TDataSource
    DataSet = QListas
    Left = 328
    Top = 264
  end
end

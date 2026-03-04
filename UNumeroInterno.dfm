object FormNumeroInterno: TFormNumeroInterno
  Left = 412
  Top = 297
  Caption = 'Numero Interno'
  ClientHeight = 442
  ClientWidth = 452
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pncab: TPanel
    Left = 0
    Top = 0
    Width = 452
    Height = 60
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object JvGradient1: TJvGradient
      Left = 1
      Top = 1
      Width = 450
      Height = 58
      Style = grVertical
      StartColor = clWhite
      EndColor = clGradientActiveCaption
      ExplicitLeft = 248
      ExplicitTop = 16
      ExplicitWidth = 100
      ExplicitHeight = 41
    end
    object Label1: TLabel
      Left = 21
      Top = 18
      Width = 130
      Height = 19
      Caption = 'Numero Interno'
    end
    object edNumero: TEdit
      Left = 288
      Top = 10
      Width = 121
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 5
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edNumeroKeyPress
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 60
    Width = 452
    Height = 61
    Align = alTop
    TabOrder = 1
    object btOk: TBitBtn
      Left = 320
      Top = 16
      Width = 89
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = btOkClick
    end
  end
  object QNro: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'numero'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'update recibos r set r.nro_recibo_intermo= :numero where r.id_rc' +
        ' = :id')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 284
    Top = 176
    object QNroID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QNroTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Required = True
      Size = 4
    end
    object QNroCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Required = True
      Size = 4
    end
    object QNroDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Size = 15
    end
    object QNroSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object QNroLETRA: TStringField
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object QNroPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Size = 4
    end
    object QNroNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object QNroNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object QNroTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
    end
    object QNroAFECTA_IVA: TStringField
      FieldName = 'AFECTA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QNroAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QNroDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QNroCOMPRA_VENTA: TStringField
      FieldName = 'COMPRA_VENTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QNroCOPIAS: TIntegerField
      FieldName = 'COPIAS'
    end
    object QNroREPORTE: TStringField
      FieldName = 'REPORTE'
      Size = 100
    end
    object QNroIMPRIME: TStringField
      FieldName = 'IMPRIME'
      FixedChar = True
      Size = 1
    end
    object QNroFISCAL: TStringField
      FieldName = 'FISCAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QNroNOMBREIMPRESORA: TStringField
      FieldName = 'NOMBREIMPRESORA'
      Size = 15
    end
    object QNroPENDIENTEIMPRESION: TStringField
      FieldName = 'PENDIENTEIMPRESION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QNroLINEAS_DETALLE: TSmallintField
      FieldName = 'LINEAS_DETALLE'
      Required = True
    end
    object QNroCALCULA_IVA_ARTICULOS: TStringField
      FieldName = 'CALCULA_IVA_ARTICULOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QNroDEFECTO: TStringField
      FieldName = 'DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QNroMUESTRADENOMINACION: TStringField
      FieldName = 'MUESTRADENOMINACION'
      ProviderFlags = []
      Size = 15
    end
  end
end

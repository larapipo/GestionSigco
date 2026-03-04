object FormConfiguracionNotaCambio: TFormConfiguracionNotaCambio
  Left = 371
  Top = 277
  Caption = 'Configuracion de Notas de Cambio'
  ClientHeight = 469
  ClientWidth = 431
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pnDetalleNC: TPanel
    Left = 0
    Top = 0
    Width = 431
    Height = 121
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 24
    object Label1: TLabel
      Left = 8
      Top = 6
      Width = 169
      Height = 13
      Caption = 'Itmes para el Uso de la Facturacion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lb1: TLabel
      Left = 10
      Top = 29
      Width = 33
      Height = 13
      Caption = 'Codigo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lb2: TLabel
      Left = 101
      Top = 29
      Width = 33
      Height = 13
      Caption = 'Detalle'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 10
      Top = 103
      Width = 134
      Height = 11
      Caption = 'Art. del Tipo Financiero(Clase 5)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ceCodigo: TJvComboEdit
      Left = 10
      Top = 46
      Width = 85
      Height = 21
      ButtonWidth = 16
      ClickKey = 16397
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000A000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFC000003300000033000000FFC00000}
      TabOrder = 0
      Text = ''
      OnButtonClick = ceCodigoButtonClick
      OnKeyDown = ceCodigoKeyDown
    end
    object edDetalle: TEdit
      Left = 101
      Top = 46
      Width = 294
      Height = 21
      TabOrder = 1
      Text = 'edDetalle'
    end
  end
  object btCerrar: TBitBtn
    Left = 322
    Top = 89
    Width = 73
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 0
  end
  object QStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.codigo_stk,s.detalle_stk from stock s where s.codigo_st' +
        'k=:codigo')
    Left = 288
    Top = 224
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
    object QStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QStockDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
  end
end

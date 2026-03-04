object FormConfiguracionOPago: TFormConfiguracionOPago
  Left = 569
  Top = 93
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Configuracion de Orden de Pago'
  ClientHeight = 481
  ClientWidth = 434
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pnConfiguracion: TJvPanel
    Left = 0
    Top = 0
    Width = 434
    Height = 225
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 418
    object JvGradient3: TJvGradient
      Left = 1
      Top = 1
      Width = 432
      Height = 19
      Align = alTop
      Style = grVertical
      StartColor = clWhite
      EndColor = clInactiveCaption
      ExplicitLeft = 33
      ExplicitTop = 0
      ExplicitWidth = 416
    end
    object JvGradient7: TJvGradient
      Left = 1
      Top = 56
      Width = 432
      Height = 24
      Align = alTop
      Style = grVertical
      StartColor = clWhite
      EndColor = clInactiveCaption
      ExplicitTop = 83
      ExplicitWidth = 401
    end
    object JvGradient: TJvGradient
      Left = 1
      Top = 161
      Width = 432
      Height = 24
      Align = alTop
      Style = grVertical
      StartColor = clWhite
      EndColor = clInactiveCaption
      ExplicitTop = 113
      ExplicitWidth = 416
    end
    object chklstSecuencia: TCheckListBox
      Left = 1
      Top = 20
      Width = 432
      Height = 36
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        'Usar Filtrado grupo de comprobantes')
      ParentFont = False
      TabOrder = 0
    end
    object btCerrar: TBitBtn
      Left = 328
      Top = 191
      Width = 73
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btCerrarClick
    end
    object pnDetalleNC: TPanel
      Left = 1
      Top = 80
      Width = 432
      Height = 81
      Align = alTop
      TabOrder = 2
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 158
        Height = 13
        Caption = 'Itmes para la N.C en Descuentos'
      end
      object lb1: TLabel
        Left = 10
        Top = 29
        Width = 33
        Height = 13
        Caption = 'Codigo'
      end
      object lb2: TLabel
        Left = 76
        Top = 29
        Width = 33
        Height = 13
        Caption = 'Detalle'
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
  end
  object QStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.codigo_stk,s.detalle_stk from stock s where s.codigo_st' +
        'k=:codigo')
    Left = 288
    Top = 328
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
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

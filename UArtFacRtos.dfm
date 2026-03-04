object FormActFacturacionRtos: TFormActFacturacionRtos
  Left = 459
  Top = 157
  Caption = 'Configuraci'#243'n de Art.por Defecto de Fac. de rtos.'
  ClientHeight = 442
  ClientWidth = 496
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
  TextHeight = 13
  object pnConfiguracion: TJvPanel
    Left = 0
    Top = 0
    Width = 496
    Height = 257
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object JvGradient1: TJvGradient
      Left = 1
      Top = 1
      Width = 494
      Height = 19
      Align = alTop
      Style = grVertical
      StartColor = clWhite
      EndColor = clInactiveCaption
      ExplicitLeft = 33
      ExplicitTop = 0
      ExplicitWidth = 416
    end
    object JvGradient: TJvGradient
      Left = 1
      Top = 182
      Width = 494
      Height = 24
      Align = alTop
      Style = grVertical
      StartColor = clWhite
      EndColor = clInactiveCaption
      ExplicitTop = 113
      ExplicitWidth = 416
    end
    object btCerrar: TBitBtn
      Left = 392
      Top = 212
      Width = 73
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object pnDetalleNC: TPanel
      Left = 1
      Top = 101
      Width = 494
      Height = 81
      Align = alTop
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 118
        Height = 13
        Caption = 'Item por defecto Exento'
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
      object ceExento: TJvComboEdit
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
        OnButtonClick = ceExentoButtonClick
      end
      object edExento: TEdit
        Left = 101
        Top = 46
        Width = 294
        Height = 21
        TabOrder = 1
        Text = 'edExento'
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 20
      Width = 494
      Height = 81
      Align = alTop
      TabOrder = 2
      object Label2: TLabel
        Left = 8
        Top = 6
        Width = 141
        Height = 13
        Caption = 'Items por Defectos Gravados'
      end
      object Label3: TLabel
        Left = 10
        Top = 29
        Width = 33
        Height = 13
        Caption = 'Codigo'
      end
      object Label4: TLabel
        Left = 76
        Top = 29
        Width = 33
        Height = 13
        Caption = 'Detalle'
      end
      object ceGravados: TJvComboEdit
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
        OnButtonClick = ceGravadosButtonClick
      end
      object edGravados: TEdit
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
    Left = 416
    Top = 281
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QStockCODIGO_STK: TStringField
      DisplayWidth = 8
      FieldName = 'CODIGO_STK'
      Size = 8
    end
    object QStockDETALLE_STK: TStringField
      DisplayWidth = 45
      FieldName = 'DETALLE_STK'
      Size = 45
    end
  end
end

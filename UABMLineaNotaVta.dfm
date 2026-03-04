object FormABMLineaNotavta: TFormABMLineaNotavta
  Left = 209
  Top = 222
  BorderStyle = bsDialog
  Caption = 'AM Linea de Nota de Vta'
  ClientHeight = 301
  ClientWidth = 599
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 599
    Height = 63
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object lb1: TLabel
      Left = 10
      Top = 5
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object lb2: TLabel
      Left = 93
      Top = 5
      Width = 33
      Height = 13
      Caption = 'Detalle'
    end
    object lb3: TLabel
      Left = 393
      Top = 5
      Width = 43
      Height = 13
      Caption = 'Cantidad'
    end
    object lb4: TLabel
      Left = 490
      Top = 5
      Width = 29
      Height = 13
      Caption = 'Precio'
    end
    object edDetalle: TEdit
      Left = 93
      Top = 22
      Width = 294
      Height = 21
      TabOrder = 1
      Text = 'edDetalle'
    end
    object edCantidad: TJvValidateEdit
      Left = 390
      Top = 22
      Width = 91
      Height = 21
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      EditText = '0'
      TabOrder = 2
    end
    object edimporte: TJvValidateEdit
      Left = 487
      Top = 22
      Width = 91
      Height = 21
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      DisplayFormat = dfFloat
      DecimalPlaces = 2
      TabOrder = 3
    end
    object ceCodigo: TJvComboEdit
      Left = 10
      Top = 22
      Width = 80
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
      OnKeyPress = ceCodigoKeyPress
    end
  end
  object pn1: TPanel
    Left = 0
    Top = 63
    Width = 599
    Height = 44
    Align = alTop
    Color = clInactiveCaptionText
    ParentBackground = False
    TabOrder = 1
    object JvGradient1: TJvGradient
      Left = 1
      Top = 1
      Width = 597
      Height = 42
      Style = grVertical
      StartColor = clWhite
      EndColor = clGradientInactiveCaption
      ExplicitWidth = 686
      ExplicitHeight = 29
    end
    object bt1: TBitBtn
      Left = 503
      Top = 6
      Width = 75
      Height = 25
      Caption = 'OK'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 0
      OnClick = bt1Click
    end
    object bt2: TBitBtn
      Left = 406
      Top = 6
      Width = 75
      Height = 25
      Kind = bkAbort
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object QStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.codigo_stk,s.detalle_stk,(l.precio_exento+l.precio_grav' +
        'ado) as Precio from stock s'
      
        'left join listaprecioespecialart l on l.codigoarticulo=s.codigo_' +
        'stk'
      'where s.codigo_stk=:codigo and l.id_cab=:lista')
    Left = 352
    Top = 168
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end
      item
        Name = 'LISTA'
        DataType = ftInteger
        ParamType = ptInput
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
    object QStockPRECIO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end

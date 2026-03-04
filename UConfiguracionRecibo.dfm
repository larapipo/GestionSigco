object FormConfiguracionRecibo: TFormConfiguracionRecibo
  Left = 379
  Top = 247
  Caption = 'Configuracion Recibo'
  ClientHeight = 407
  ClientWidth = 440
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
  object pnConfiguracion: TPanel
    Left = 0
    Top = 0
    Width = 440
    Height = 185
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object JvGradient3: TJvGradient
      Left = 1
      Top = 77
      Width = 438
      Height = 18
      Align = alTop
      Style = grVertical
      StartColor = clWhite
      EndColor = clInactiveCaption
      ExplicitTop = 59
      ExplicitWidth = 423
    end
    object JvGradient4: TJvGradient
      Left = 1
      Top = 140
      Width = 438
      Height = 0
      Align = alTop
      Style = grVertical
      StartColor = clWhite
      EndColor = clInactiveCaption
      ExplicitTop = 171
      ExplicitWidth = 401
      ExplicitHeight = 16
    end
    object JvGradient5: TJvGradient
      Left = 1
      Top = 140
      Width = 438
      Height = 0
      Align = alTop
      Style = grVertical
      StartColor = clWhite
      EndColor = clInactiveCaption
      ExplicitTop = 171
      ExplicitWidth = 401
      ExplicitHeight = 29
    end
    object chbFoco: TJvxCheckListBox
      Left = 1
      Top = 95
      Width = 438
      Height = 45
      CheckKind = ckRadioButtons
      CheckedIndex = 0
      Align = alTop
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
      InternalVersion = 202
      Strings = (
        'Inicia Foco en Fecha'
        1
        True
        'Inicia Foco en Codigo Cliente'
        0
        True)
    end
    object chklstSecuencia: TCheckListBox
      Left = 1
      Top = 1
      Width = 438
      Height = 76
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        'Habilitar % Descto. en la Secuencia de Ingreso de Datos'
        'Habilitar Importe Descto. en la Secuencia de Ingreso de Datos'
        'Usar Filtrado grupo de comprobantes'
        'Usar Grupos de Filtro')
      ParentFont = False
      TabOrder = 1
    end
    object btCerrar: TBitBtn
      Left = 352
      Top = 146
      Width = 68
      Height = 23
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btCerrarClick
    end
  end
end

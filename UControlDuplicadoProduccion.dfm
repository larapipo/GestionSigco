object FormControlDuplicadoProduccion: TFormControlDuplicadoProduccion
  Left = 0
  Top = 0
  Caption = 'Control de Cantidad'
  ClientHeight = 281
  ClientWidth = 461
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 461
    Height = 201
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 120
      Top = 32
      Width = 112
      Height = 16
      Caption = 'Cantidad Disponible'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 120
      Top = 89
      Width = 106
      Height = 16
      Caption = 'Cantidad Asignada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edDisponible: TJvCalcEdit
      Left = 312
      Top = 32
      Width = 121
      Height = 24
      DisplayFormat = ',0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowButton = False
      TabOrder = 0
      DisabledTextColor = clBlack
      DecimalPlacesAlwaysShown = False
    end
    object edASignado: TJvCalcEdit
      Left = 312
      Top = 89
      Width = 121
      Height = 24
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowButton = False
      TabOrder = 1
      DecimalPlacesAlwaysShown = False
      OnExit = edASignadoExit
    end
    object btOk: TBitBtn
      Left = 358
      Top = 160
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btOkClick
    end
    object btCancelar: TBitBtn
      Left = 272
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 3
      OnClick = btCancelarClick
    end
  end
end

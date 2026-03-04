object FormValorCuotaTC: TFormValorCuotaTC
  Left = 358
  Top = 239
  BorderStyle = bsSingle
  Caption = 'Valor de Cuota'
  ClientHeight = 225
  ClientWidth = 520
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 24
    Top = 24
    Width = 465
    Height = 117
    BorderStyle = bsSingle
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 192
      Height = 23
      Caption = 'Indicar Valor Cuota '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edCuota: TJvCalcEdit
      Left = 298
      Top = 21
      Width = 121
      Height = 31
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 0
      DecimalPlacesAlwaysShown = False
    end
    object btOk: TBitBtn
      Left = 344
      Top = 72
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btOkClick
    end
  end
end

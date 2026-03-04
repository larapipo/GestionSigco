object FormCantidadPedir: TFormCantidadPedir
  Left = 447
  Top = 233
  BorderStyle = bsSingle
  Caption = 'Cantidad Pedida'
  ClientHeight = 113
  ClientWidth = 540
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 27
    Width = 223
    Height = 33
    Caption = 'Cantidad a Pedir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edCantidad: TJvCalcEdit
    Left = 264
    Top = 24
    Width = 249
    Height = 41
    DisplayFormat = '0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ShowButton = False
    TabOrder = 0
    DecimalPlacesAlwaysShown = False
    OnKeyDown = edCantidadKeyDown
  end
end

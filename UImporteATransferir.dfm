object Form1: TForm1
  Left = 126
  Top = 151
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 680
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel: TPanel
    Left = 0
    Top = 0
    Width = 680
    Height = 297
    Align = alTop
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 678
      Height = 41
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 224
      ExplicitTop = 32
      ExplicitWidth = 185
    end
    object Panel2: TPanel
      Left = 1
      Top = 264
      Width = 678
      Height = 32
      Align = alBottom
      TabOrder = 1
    end
    object Panel3: TPanel
      Left = 1
      Top = 223
      Width = 678
      Height = 41
      Align = alBottom
      TabOrder = 2
      ExplicitLeft = 320
      ExplicitTop = 176
      ExplicitWidth = 185
    end
    object JvCalcEdit1: TJvCalcEdit
      Left = 200
      Top = 139
      Width = 121
      Height = 21
      DisplayFormat = ',0.000'
      ShowButton = False
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
    end
    object JvCalcEdit: TJvCalcEdit
      Left = 399
      Top = 139
      Width = 121
      Height = 21
      DisplayFormat = ',0.000'
      ShowButton = False
      TabOrder = 4
      DecimalPlacesAlwaysShown = False
    end
  end
end

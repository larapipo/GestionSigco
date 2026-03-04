object FormCambiaNroOPago: TFormCambiaNroOPago
  Left = 0
  Top = 0
  Caption = 'Cambiar Numero'
  ClientHeight = 195
  ClientWidth = 405
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnBase: TPanel
    Left = 40
    Top = 16
    Width = 281
    Height = 65
    TabOrder = 0
    object Edit1: TEdit
      Left = 16
      Top = 13
      Width = 49
      Height = 33
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = 'X'
    end
    object Edit2: TEdit
      Left = 71
      Top = 13
      Width = 66
      Height = 33
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = '0000'
    end
    object Edit3: TEdit
      Left = 143
      Top = 13
      Width = 121
      Height = 33
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Text = '00000000'
    end
  end
end

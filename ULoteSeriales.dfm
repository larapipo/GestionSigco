object FormLoteSeriales: TFormLoteSeriales
  Left = 279
  Top = 198
  Caption = 'Lote de Seriales'
  ClientHeight = 270
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnBase: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 137
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 632
    object Label1: TLabel
      Left = 16
      Top = 18
      Width = 73
      Height = 16
      Caption = 'Codigo Serie'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 463
      Top = 18
      Width = 118
      Height = 16
      Caption = 'Cantidad de Seriales'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object EdSerie: TEdit
      Left = 16
      Top = 40
      Width = 441
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edCantidad: TEdit
      Left = 480
      Top = 40
      Width = 65
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '0'
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 137
    Width = 628
    Height = 48
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 632
    object JvGradient1: TJvGradient
      Left = 1
      Top = 1
      Width = 626
      Height = 46
      Style = grVertical
      StartColor = clWhite
      EndColor = clGradientActiveCaption
      ExplicitLeft = 104
      ExplicitTop = 16
      ExplicitWidth = 100
      ExplicitHeight = 41
    end
    object BitBtn1: TBitBtn
      Left = 528
      Top = 16
      Width = 75
      Height = 25
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 440
      Top = 15
      Width = 75
      Height = 25
      TabOrder = 1
      OnClick = BitBtn2Click
      Kind = bkCancel
    end
  end
end

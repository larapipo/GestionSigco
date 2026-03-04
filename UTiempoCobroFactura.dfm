object Form1: TForm1
  Left = -59
  Top = 206
  Caption = 'Form1'
  ClientHeight = 623
  ClientWidth = 1002
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
    Left = 0
    Top = 41
    Width = 1002
    Height = 480
    Align = alTop
    TabOrder = 0
    object KGrid1: TKGrid
      Left = 1
      Top = 1
      Width = 1000
      Height = 464
      Align = alTop
      TabOrder = 0
      ColWidths = (
        64
        64
        64
        64
        64)
      RowHeights = (
        21
        21
        21
        21
        21)
    end
  end
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 1002
    Height = 41
    Align = alTop
    TabOrder = 1
  end
  object pnPie: TPanel
    Left = 0
    Top = 521
    Width = 1002
    Height = 41
    Align = alTop
    TabOrder = 2
  end
  object QVtas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 728
    Top = 441
  end
  object CDSVtas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPVtas'
    Left = 872
    Top = 440
  end
  object DSPVtas: TDataSetProvider
    DataSet = QVtas
    Left = 800
    Top = 440
  end
end

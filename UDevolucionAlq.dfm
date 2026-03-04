object FormDevolucionAlq: TFormDevolucionAlq
  Left = 0
  Top = 0
  Anchors = []
  AutoSize = True
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Devoluci'#243'n Alquiler'
  ClientHeight = 105
  ClientWidth = 249
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 249
    Height = 105
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 13
      Width = 141
      Height = 19
      Caption = 'Fecha Devoluci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btOk: TBitBtn
      Left = 158
      Top = 71
      Width = 75
      Height = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = btOkClick
    end
    object btCancel: TBitBtn
      Left = 16
      Top = 71
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btCancelClick
    end
    object JvDBDateTimePicker1: TJvDBDateTimePicker
      Left = 16
      Top = 38
      Width = 217
      Height = 26
      Date = 44225.647999305550000000
      Format = 'dd/MM/yyyy  hh:mm'
      Time = 44225.647999305550000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      DropDownDate = 44225.000000000000000000
      DataField = 'FECHA_DEVOLUCION_ALQ'
      DataSource = DSBase
    end
  end
  object DSBase: TDataSource
    DataSet = DatosRemitos.CDSRtoCab
    Left = 208
    Top = 8
  end
end

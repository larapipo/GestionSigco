object FormDepurarLog: TFormDepurarLog
  Left = 0
  Top = 0
  Caption = 'Depurar Log'
  ClientHeight = 142
  ClientWidth = 461
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 461
    Height = 76
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 6
      Width = 137
      Height = 19
      Caption = 'Fecha Menor que el'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 280
      Top = 21
      Width = 137
      Height = 35
      Caption = 'Iniciar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object edFecha: TJvDateEdit
      Left = 24
      Top = 28
      Width = 137
      Height = 27
      ButtonFlat = True
      DefaultToday = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowNullDate = False
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 461
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Depurar Log'
    Color = clMenuHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 109
    Width = 461
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenuHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
  end
  object QDel: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from log_file l where l.fecha < :fecha')
    Left = 224
    Top = 88
    ParamData = <
      item
        Name = 'FECHA'
        ParamType = ptInput
        Value = Null
      end>
  end
end

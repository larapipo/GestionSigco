object FormCambioFechaTransferencia: TFormCambioFechaTransferencia
  Left = 0
  Top = 0
  Caption = 'Fecha Tx de Efectivo'
  ClientHeight = 398
  ClientWidth = 270
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
    Width = 270
    Height = 249
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 281
    object btOk: TBitBtn
      Left = 187
      Top = 205
      Width = 70
      Height = 31
      Caption = 'Ok'
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btOkClick
    end
    object btCancel: TBitBtn
      Left = 111
      Top = 205
      Width = 70
      Height = 31
      Caption = 'Cancelar'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
    object Mcalendario: TMonthCalendar
      Left = 24
      Top = 16
      Width = 225
      Height = 160
      Date = 41486.633411666670000000
      TabOrder = 2
    end
  end
  object QFecha: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update transferencias_caja t set t.fecha = :fecha where t.id = :' +
        'id')
    Left = 80
    Top = 280
    ParamData = <
      item
        Name = 'FECHA'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end

object FormFechaFiscal: TFormFechaFiscal
  Left = 753
  Top = 143
  Caption = 'Cambio Fecha Fiscal'
  ClientHeight = 442
  ClientWidth = 281
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 281
    Height = 249
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
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
      Left = 1
      Top = 1
      Width = 279
      Height = 184
      Align = alTop
      Date = 41486.000000000000000000
      TabOrder = 2
    end
  end
end

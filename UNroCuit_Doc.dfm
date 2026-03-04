object FormCuit_Doc: TFormCuit_Doc
  Left = 366
  Top = 225
  Caption = 'Nro.Documento/Cuit'
  ClientHeight = 312
  ClientWidth = 493
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 493
    Height = 81
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 25
      Top = 23
      Width = 162
      Height = 18
      Caption = 'CUIT/Nro.Documento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edCuit: TMaskEdit
      Left = 210
      Top = 19
      Width = 159
      Height = 27
      Alignment = taCenter
      EditMask = '99-99999999-9;1;_'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 13
      ParentFont = False
      TabOrder = 0
      Text = '  -        - '
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 493
    Height = 40
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 376
      Top = 6
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 280
      Top = 6
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object QActualizaCuit: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update fcvtacab f set f.cuit= :nrocuit where f.id_fc = :id')
    Left = 168
    Top = 184
    ParamData = <
      item
        Name = 'NROCUIT'
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID'
        ParamType = ptInput
      end>
  end
end

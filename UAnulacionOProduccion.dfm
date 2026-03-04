object FormAnulacionOProduccion: TFormAnulacionOProduccion
  Left = 0
  Top = 0
  Caption = 'FormAnulacionOProduccion'
  ClientHeight = 441
  ClientWidth = 551
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 551
    Height = 169
    Align = alTop
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 27
      Width = 95
      Height = 15
      Caption = 'Motivo Anulaci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object edMotivo: TEdit
      Left = 24
      Top = 48
      Width = 481
      Height = 23
      TabOrder = 0
      TextHint = 'Motivo Anulacion'
    end
    object btCancelar: TBitBtn
      Left = 336
      Top = 104
      Width = 86
      Height = 30
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
    object btOk: TBitBtn
      Left = 430
      Top = 104
      Width = 86
      Height = 30
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btOkClick
    end
  end
  object QAnulacion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update ordenproduccion_cab o set o.estado='#39'A'#39', o.obs1=:obs'
      'where o.id=:id')
    Left = 72
    Top = 104
    ParamData = <
      item
        Name = 'OBS'
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID'
        ParamType = ptInput
      end>
  end
end

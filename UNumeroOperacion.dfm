object FormNumeroOperacion: TFormNumeroOperacion
  Left = 489
  Top = 159
  BorderStyle = bsSingle
  Caption = 'Numero de Operaci'#243'n'
  ClientHeight = 359
  ClientWidth = 438
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  PopupMode = pmExplicit
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pncab: TPanel
    Left = 0
    Top = 0
    Width = 438
    Height = 60
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object JvGradient1: TJvGradient
      Left = 1
      Top = 1
      Width = 436
      Height = 58
      Style = grVertical
      StartColor = clWhite
      EndColor = clGradientActiveCaption
      ExplicitLeft = 248
      ExplicitTop = 16
      ExplicitWidth = 100
      ExplicitHeight = 41
    end
    object Label1: TLabel
      Left = 21
      Top = 18
      Width = 176
      Height = 19
      Caption = 'Numero de Operaci'#243'n'
    end
    object edAnio: TEdit
      Left = 251
      Top = 10
      Width = 70
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 4
      ParentFont = False
      TabOrder = 0
    end
    object edNumero: TEdit
      Left = 338
      Top = 10
      Width = 71
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 4
      ParentFont = False
      TabOrder = 1
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 60
    Width = 438
    Height = 61
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 1
    object btOk: TBitBtn
      Left = 320
      Top = 16
      Width = 89
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = btOkClick
    end
  end
  object spNumeroOPFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'GRAVAR_NUMERO_OPERACION'
    Left = 328
    Top = 168
    ParamData = <
      item
        Position = 1
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 2
        Name = 'NUMERO'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end
      item
        Position = 3
        Name = 'ANIO'
        DataType = ftString
        ParamType = ptInput
        Size = 4
      end
      item
        Position = 4
        Name = 'ID_CPBTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end

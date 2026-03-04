object FormAsignaCtroCostoVta: TFormAsignaCtroCostoVta
  Left = 241
  Top = 215
  Caption = 'Asigancion Ctro de Costo '
  ClientHeight = 259
  ClientWidth = 658
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
    Width = 658
    Height = 65
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 15
      Top = 18
      Width = 142
      Height = 25
      Caption = 'Ctro de Costo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbcCtroCosto: TJvDBLookupCombo
      Left = 168
      Top = 16
      Width = 473
      Height = 32
      EmptyValue = '-1'
      EmptyItemColor = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LookupField = 'ID'
      LookupDisplay = 'DESCRIPCION'
      LookupSource = DSCtroCosto
      ParentFont = False
      TabOrder = 0
      OnKeyDown = dbcCtroCostoKeyDown
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 658
    Height = 40
    Align = alTop
    TabOrder = 1
    object JvGradient1: TJvGradient
      Left = 1
      Top = 1
      Width = 656
      Height = 38
      Style = grVertical
      StartColor = clWhite
      EndColor = clGradientInactiveCaption
      ExplicitLeft = 256
      ExplicitTop = 16
      ExplicitWidth = 100
      ExplicitHeight = 41
    end
    object btCerrar: TBitBtn
      Left = 445
      Top = 3
      Width = 97
      Height = 32
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
    object btAceptar: TBitBtn
      Left = 541
      Top = 3
      Width = 90
      Height = 32
      Hint = '(F7)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = btAceptarClick
    end
  end
  object DSPBuscaCtro: TDataSetProvider
    DataSet = QBuscaCtro
    UpdateMode = upWhereKeyOnly
    Left = 392
    Top = 136
  end
  object CDSBuscaCtro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaCtro'
    Left = 472
    Top = 136
    object StringField2: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 45
    end
    object IntegerField2: TIntegerField
      DisplayLabel = 'Cod'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DSCtroCosto: TDataSource
    DataSet = CDSBuscaCtro
    Left = 552
    Top = 136
  end
  object QActualizaCtrCosto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update fcvtacab f set f.centro_costo = :ctrocosto where f.id_fc ' +
        '= :id')
    Left = 160
    Top = 136
    ParamData = <
      item
        Name = 'CTROCOSTO'
        ParamType = ptInput
      end
      item
        Name = 'ID'
        ParamType = ptInput
      end>
  end
  object QBuscaCtro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from centro_costo')
    Left = 320
    Top = 136
  end
end

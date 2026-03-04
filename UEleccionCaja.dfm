object FormEleccionCaja: TFormEleccionCaja
  Left = 405
  Top = 198
  BorderIcons = [biSystemMenu]
  Caption = 'Elecci'#243'n de Caja'
  ClientHeight = 345
  ClientWidth = 469
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 401
    Height = 161
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 69
      Width = 239
      Height = 13
      Caption = 'Caja a Donde va a pasar el Movimiento de Fondos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RxLbCaja: TJvLabel
      Left = 13
      Top = 9
      Width = 39
      Height = 20
      Caption = 'Caja'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowPos = spLeftTop
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -16
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object dbcCaja: TDBLookupComboBox
      Left = 13
      Top = 35
      Width = 372
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'ID_CUENTA_CAJA'
      ListField = 'MUESTRACAJA'
      ListSource = DSCaja
      ParentFont = False
      TabOrder = 0
    end
    object btOk: TBitBtn
      Left = 300
      Top = 120
      Width = 85
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = btOkClick
    end
    object btCancel: TBitBtn
      Left = 213
      Top = 120
      Width = 85
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnClick = btCancelClick
    end
  end
  object DSCaja: TDataSource
    DataSet = CDSCaja
    Left = 192
    Top = 152
  end
  object CDSCaja: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCaja'
    Left = 152
    Top = 152
    object CDSCajaID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSCajaID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
    end
    object CDSCajaNUMEROCAJA: TIntegerField
      FieldName = 'NUMEROCAJA'
      Origin = 'NUMEROCAJA'
    end
    object CDSCajaMUESTRACAJA: TStringField
      FieldName = 'MUESTRACAJA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
  end
  object DSPCaja: TDataSetProvider
    DataSet = QCajas
    Left = 96
    Top = 152
  end
  object QCajas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'Select c.id_caja, c.id_cuenta_caja,c.numerocaja,cta.nombre as Mu' +
        'estraCaja from caja_cab c'
      'left join cuenta_caja cta on cta.id_cuenta=c.id_cuenta_caja'
      'where estado=0 and cta.id_tipo_cta=1')
    Left = 248
    Top = 208
  end
end

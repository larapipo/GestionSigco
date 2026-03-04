object FormCambioDeposito: TFormCambioDeposito
  Left = 348
  Top = 183
  BorderIcons = [biSystemMenu]
  Caption = 'Cambio de Deposito'
  ClientHeight = 346
  ClientWidth = 669
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
  object pnBase: TPanel
    Left = 8
    Top = 8
    Width = 449
    Height = 222
    TabOrder = 0
    object JvGradient2: TJvGradient
      Left = 1
      Top = 94
      Width = 447
      Height = 127
      Style = grVertical
      StartColor = clGradientInactiveCaption
      EndColor = clWhite
      ExplicitTop = 1
      ExplicitHeight = 66
    end
    object Label2: TLabel
      Left = 16
      Top = 102
      Width = 128
      Height = 19
      Caption = 'Nuevo Deposito'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnDepositoActual: TPanel
      Left = 1
      Top = 1
      Width = 447
      Height = 93
      Align = alTop
      Enabled = False
      TabOrder = 0
      object JvGradient1: TJvGradient
        Left = 1
        Top = 1
        Width = 445
        Height = 91
        Style = grVertical
        StartColor = clWhite
        EndColor = clGradientActiveCaption
        ExplicitLeft = 320
        ExplicitTop = 16
        ExplicitWidth = 100
        ExplicitHeight = 41
      end
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 129
        Height = 19
        Caption = 'Deposito Actual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edDetalle: TEdit
        Left = 95
        Top = 33
        Width = 218
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = 'edDetalle'
      end
      object edId: TEdit
        Left = 16
        Top = 33
        Width = 65
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Text = 'edId'
      end
    end
    object dbcDeposito: TJvDBLookupCombo
      Left = 16
      Top = 127
      Width = 298
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LookupField = 'ID'
      LookupDisplay = 'NOMBRE'
      LookupSource = DSDeposito
      ParentFont = False
      TabOrder = 1
    end
    object btOk: TBitBtn
      Left = 351
      Top = 173
      Width = 83
      Height = 31
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnClick = btOkClick
    end
    object btCancelar: TBitBtn
      Left = 262
      Top = 173
      Width = 83
      Height = 31
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
      OnClick = btCancelarClick
    end
  end
  object CDSDeposito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPDeposito'
    Left = 344
    Top = 248
  end
  object DSPDeposito: TDataSetProvider
    DataSet = DMBuscadores.QBuscaDeposito
    Left = 280
    Top = 248
  end
  object DSDeposito: TDataSource
    DataSet = CDSDeposito
    Left = 408
    Top = 248
  end
  object QCambioCompra: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update fccompcab f set f.deposito= :depo where f.id_fc= :id'
      '')
    Left = 592
    Top = 112
    ParamData = <
      item
        Name = 'DEPO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QRecepcion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'update recepmercacab f set f.deposito= :depo where f.id_recmer= ' +
        ':id'
      ''
      '')
    Left = 584
    Top = 184
    ParamData = <
      item
        Name = 'DEPO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QCambio: TFDQuery
    ObjectView = False
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update fcvtacab f set f.deposito= :depo where f.id_fc= :id')
    Left = 592
    Top = 40
    ParamData = <
      item
        Name = 'DEPO'
        ParamType = ptInput
      end
      item
        Name = 'ID'
        ParamType = ptInput
      end>
  end
end

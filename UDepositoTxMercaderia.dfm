object FormMuestraDepositoTransferencia: TFormMuestraDepositoTransferencia
  Left = 106
  Top = 195
  Caption = 'Deposito de Transferencia'
  ClientHeight = 507
  ClientWidth = 670
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 16
    Width = 617
    Height = 321
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 568
      Height = 76
      Caption = 
        'El Cliente esta indicado como Franquicia, puede optar por hacer ' +
        'la facturacion y '#13#10'descontar el stock de la forma habitual .'#13#10'De' +
        ' lo contrario, hacer una transferencia de la mercaderia al depos' +
        'ito asignado a'#13#10'la franquicia.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 319
      Top = 183
      Width = 139
      Height = 19
      Caption = 'Deposito Destino'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object rgModo: TRadioGroup
      Left = 16
      Top = 130
      Width = 281
      Height = 105
      Caption = 'Modo de Facturacion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Modo Normal'
        'Con Transferencia de Stock')
      ParentFont = False
      TabOrder = 0
      OnClick = rgModoClick
    end
    object Panel2: TPanel
      Left = 1
      Top = 296
      Width = 615
      Height = 24
      Align = alBottom
      TabOrder = 1
      object JvGradient2: TJvGradient
        Left = 1
        Top = 1
        Width = 613
        Height = 22
        Style = grVertical
        StartColor = clGradientInactiveCaption
        EndColor = clWhite
        ExplicitLeft = 424
        ExplicitTop = 16
        ExplicitWidth = 100
        ExplicitHeight = 41
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 256
      Width = 615
      Height = 40
      Align = alBottom
      TabOrder = 2
      object JvGradient1: TJvGradient
        Left = 1
        Top = 1
        Width = 613
        Height = 38
        Style = grVertical
        StartColor = clWhite
        EndColor = clGradientActiveCaption
        ExplicitLeft = 424
        ExplicitTop = 16
        ExplicitWidth = 100
        ExplicitHeight = 41
      end
      object btOk: TBitBtn
        Left = 488
        Top = 6
        Width = 89
        Height = 29
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Kind = bkOK
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 0
      end
      object btCancel: TBitBtn
        Left = 393
        Top = 5
        Width = 89
        Height = 29
        Caption = 'Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Kind = bkCancel
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 1
      end
    end
    object dbcDepoDestino: TDBLookupComboBox
      Left = 319
      Top = 208
      Width = 275
      Height = 27
      Color = clBtnFace
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'ID'
      ListField = 'NOMBRE'
      ListSource = DSDeposito
      NullValueKey = 46
      ParentFont = False
      TabOrder = 3
    end
  end
  object CDSDepositos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPDepositos'
    Left = 456
    Top = 152
    object CDSDepositosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSDepositosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSDepositosSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
    end
    object CDSDepositosCENTRALIZA_STOCK: TStringField
      FieldName = 'CENTRALIZA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPDepositos: TDataSetProvider
    DataSet = DMBuscadores.QBuscaDeposito
    Left = 384
    Top = 152
  end
  object DSDeposito: TDataSource
    DataSet = CDSDepositos
    Left = 520
    Top = 152
  end
end

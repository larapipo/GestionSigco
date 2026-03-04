object FormCargaLoteTC: TFormCargaLoteTC
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Carga Lote TC'
  ClientHeight = 701
  ClientWidth = 586
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pnBase: TPanel
    Left = 0
    Top = 0
    Width = 586
    Height = 609
    Align = alTop
    TabOrder = 0
    object Label5: TLabel
      Left = 8
      Top = 483
      Width = 264
      Height = 23
      Caption = 'Comprobante  de Remplazo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbgTarjetas: TDBGrid
      Left = 1
      Top = 42
      Width = 584
      Height = 417
      Align = alTop
      DataSource = DSTCredito
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnEnter = dbgTarjetasEnter
      OnKeyPress = dbgTarjetasKeyPress
      Columns = <
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'DESCRIPCION'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 206
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NROLOTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TERMINAL'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPORTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 115
          Visible = True
        end>
    end
    object btOk: TBitBtn
      Left = 457
      Top = 563
      Width = 104
      Height = 37
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = btOkClick
    end
    object btCancelar: TBitBtn
      Left = 344
      Top = 563
      Width = 107
      Height = 37
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnClick = btCancelarClick
    end
    object edTotal: TJvCalcEdit
      Left = 440
      Top = 465
      Width = 121
      Height = 26
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 584
      Height = 41
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Color = clMenuHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Padding.Left = 20
      Padding.Right = 20
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
      object Label1: TLabel
        Left = 16
        Top = 7
        Width = 248
        Height = 25
        Caption = 'Movimientos de Tarjeta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object dbcComprobantes: TJvDBLookupCombo
      Left = 8
      Top = 512
      Width = 416
      Height = 27
      DisplayAllFields = True
      DisplayEmpty = 'Sin Comprobante'
      EmptyValue = '-1'
      EmptyItemColor = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      LookupField = 'ID_COMPROBANTE'
      LookupDisplay = 'DENOMINACION;MUESTRASUCURSAL'
      LookupSource = DSComprobante
      ParentFont = False
      TabOrder = 5
    end
  end
  object QTarjetas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.id_TC,t.Descripcion from T_Credito t')
    Left = 56
    Top = 80
  end
  object CDSTCredito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPTCredito'
    BeforeInsert = CDSTCreditoBeforeInsert
    AfterPost = CDSTCreditoAfterPost
    BeforeDelete = CDSTCreditoBeforeDelete
    Left = 224
    Top = 80
    object CDSTCreditoID_TC: TIntegerField
      FieldName = 'ID_TC'
      Origin = 'ID_TC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSTCreditoDESCRIPCION: TStringField
      DisplayLabel = 'Tarjeta de Credito'
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 15
    end
    object CDSTCreditoNROLOTE: TStringField
      DisplayLabel = 'Nro.Lote'
      FieldKind = fkInternalCalc
      FieldName = 'NROLOTE'
      OnSetText = CDSTCreditoNROLOTESetText
      Size = 5
    end
    object CDSTCreditoTERMINAL: TStringField
      DisplayLabel = 'Terminal'
      FieldKind = fkInternalCalc
      FieldName = 'TERMINAL'
      ProviderFlags = []
      OnSetText = CDSTCreditoTERMINALSetText
      Size = 8
    end
    object CDSTCreditoIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldKind = fkInternalCalc
      FieldName = 'IMPORTE'
    end
  end
  object DSTCredito: TDataSource
    DataSet = CDSTCredito
    Left = 344
    Top = 80
  end
  object DSPTCredito: TDataSetProvider
    DataSet = QTarjetas
    Left = 144
    Top = 80
  end
  object QComproba: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.id_comprobante,c.tipo_comprob,c.clase_comprob,c.denomin' +
        'acion,c.sucursal,s.detalle as MuestraSucursal from comprobantes ' +
        'c'
      'left join sucursal s on s.codigo =c.sucursal'
      'where c.tipo_comprob in ('#39'ZI'#39') and c.compra_venta= '#39'V'#39)
    Left = 64
    Top = 280
  end
  object DSPComprobante: TDataSetProvider
    DataSet = QComproba
    Left = 136
    Top = 280
  end
  object CDSComprobantes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPComprobante'
    Left = 208
    Top = 280
    object CDSComprobantesID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSComprobantesTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Size = 2
    end
    object CDSComprobantesCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Size = 2
    end
    object CDSComprobantesDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object CDSComprobantesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSComprobantesMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
  end
  object DSComprobante: TDataSource
    DataSet = CDSComprobantes
    Left = 296
    Top = 280
  end
end

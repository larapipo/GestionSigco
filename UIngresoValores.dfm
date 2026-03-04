object FormValores: TFormValores
  Left = 255
  Top = 82
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ingreso de Valores'
  ClientHeight = 752
  ClientWidth = 797
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 13
  object pnBase: TPanel
    Left = 0
    Top = 0
    Width = 797
    Height = 673
    Align = alTop
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    object pnEfectivo: TPanel
      Left = 1
      Top = 89
      Width = 795
      Height = 56
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        795
        56)
      object Label1: TLabel
        Left = 174
        Top = 6
        Width = 130
        Height = 39
        Caption = 'Efectivo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -32
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edEfectivo: TJvCalcEdit
        Left = 582
        Top = 6
        Width = 199
        Height = 41
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Anchors = [akTop, akRight]
        ParentFont = False
        ShowButton = False
        TabOrder = 0
        DecimalPlacesAlwaysShown = False
        OnChange = edEfectivoChange
        OnExit = edEfectivoExit
        OnKeyPress = edEfectivoKeyPress
      end
    end
    object pnImporteVta: TPanel
      Left = 1
      Top = 1
      Width = 795
      Height = 88
      Align = alTop
      BevelOuter = bvNone
      Color = clGreen
      Enabled = False
      ParentBackground = False
      TabOrder = 0
      DesignSize = (
        795
        88)
      object Label2: TLabel
        Left = 29
        Top = 26
        Width = 320
        Height = 39
        Caption = 'Importe de la Venta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -32
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edVenta: TJvCalcEdit
        Left = 582
        Top = 28
        Width = 199
        Height = 39
        Flat = True
        ParentFlat = False
        DisplayFormat = ',0.00'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Anchors = [akTop, akRight]
        ParentFont = False
        ShowButton = False
        TabOrder = 0
        DisabledTextColor = clBlue
        DecimalPlacesAlwaysShown = False
      end
    end
    object pnVuelto: TPanel
      Left = 1
      Top = 453
      Width = 795
      Height = 191
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 4
      TabStop = True
      DesignSize = (
        795
        191)
      object Label3: TLabel
        Left = 29
        Top = 34
        Width = 120
        Height = 45
        Caption = 'Vuelto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -37
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btOk: TBitBtn
        Left = 464
        Top = 117
        Width = 201
        Height = 57
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -29
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Kind = bkOK
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 0
        OnClick = btOkClick
      end
      object edVuelto: TJvCalcEdit
        Left = 582
        Top = 34
        Width = 199
        Height = 45
        TabStop = False
        BevelKind = bkSoft
        Flat = True
        ParentFlat = False
        DisplayFormat = ',0.00'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -32
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Anchors = [akTop, akRight]
        ParentFont = False
        ShowButton = False
        TabOrder = 1
        DisabledTextColor = clRed
        DecimalPlacesAlwaysShown = False
      end
      object btCancelar: TBitBtn
        Left = 95
        Top = 117
        Width = 201
        Height = 57
        Caption = 'Cancela'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -29
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Kind = bkCancel
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 2
        OnClick = btOkClick
      end
    end
    object pnTCredito: TPanel
      Left = 1
      Top = 145
      Width = 795
      Height = 66
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      DesignSize = (
        795
        66)
      object Label8: TLabel
        Left = 174
        Top = 6
        Width = 262
        Height = 39
        Caption = 'Imp.Con Tarjeta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -32
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edNetoTarjeta: TJvCalcEdit
        Left = 582
        Top = 6
        Width = 199
        Height = 41
        DisplayFormat = ',0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Anchors = [akTop, akRight]
        ParentFont = False
        ShowButton = False
        TabOrder = 0
        DisabledTextColor = clBlue
        DecimalPlacesAlwaysShown = False
        OnEnter = edNetoTarjetaEnter
      end
    end
    object pnTarjetas: TPanel
      Left = 1
      Top = 211
      Width = 795
      Height = 242
      Align = alTop
      BevelOuter = bvNone
      Caption = 'pnTarjetas'
      TabOrder = 3
      DesignSize = (
        795
        242)
      object Label10: TLabel
        Left = 13
        Top = 143
        Width = 155
        Height = 35
        Caption = 'Nro.Cupon'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -29
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label11: TLabel
        Left = 269
        Top = 159
        Width = 238
        Height = 39
        Caption = 'Total T.Credito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -32
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbgTarjetas: TDBGrid
        Left = 0
        Top = 0
        Width = 795
        Height = 136
        Align = alTop
        DataSource = DSTarjetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnColEnter = dbgTarjetasColEnter
        OnExit = dbgTarjetasExit
        OnKeyPress = dbgTarjetasKeyPress
        Columns = <
          item
            DropDownRows = 12
            Expanded = False
            FieldName = 'MUESTRATARJETA'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -19
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 202
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NETO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -19
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 161
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CUOTAS'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -19
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NROCUPON'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -19
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 135
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPORTE'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -19
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 166
            Visible = True
          end>
      end
      object edTotalTC: TJvCalcEdit
        Left = 582
        Top = 159
        Width = 199
        Height = 41
        DisplayFormat = ',0.00'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Anchors = [akTop, akRight]
        ParentFont = False
        ShowButton = False
        TabOrder = 1
        DisabledTextColor = clBlue
        DecimalPlacesAlwaysShown = False
      end
      object edCupon: TDBEdit
        Left = 13
        Top = 179
        Width = 203
        Height = 31
        DataField = 'NROCUPON'
        DataSource = DSTarjetas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Visible = False
      end
    end
  end
  object QTCredito: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from t_credito')
    Left = 305
    Top = 375
    object QTCreditoID_TC: TIntegerField
      FieldName = 'ID_TC'
      Origin = 'ID_TC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTCreditoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 15
    end
    object QTCreditoMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object QTCreditoCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Size = 8
    end
    object QTCreditoID_CUENTA_BANCO: TIntegerField
      FieldName = 'ID_CUENTA_BANCO'
      Origin = 'ID_CUENTA_BANCO'
    end
    object QTCreditoDIAS_ACREDITACION: TSmallintField
      FieldName = 'DIAS_ACREDITACION'
      Origin = 'DIAS_ACREDITACION'
      Required = True
    end
    object QTCreditoCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QTCreditoRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
  end
  object DSTCredito: TDataSource
    DataSet = QTCredito
    Left = 393
    Top = 375
  end
  object QTCreditoCoef: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.* from t_credito_coeficientes c where c.id_tc = :id_tc')
    Left = 297
    Top = 461
    ParamData = <
      item
        Position = 1
        Name = 'id_tc'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QTCreditoCoefID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTCreditoCoefID_TC: TIntegerField
      FieldName = 'ID_TC'
      Origin = 'ID_TC'
      Required = True
    end
    object QTCreditoCoefCUOTAS: TIntegerField
      FieldName = 'CUOTAS'
      Origin = 'CUOTAS'
    end
    object QTCreditoCoefCOEFICIENTE: TFloatField
      FieldName = 'COEFICIENTE'
      Origin = 'COEFICIENTE'
      Required = True
    end
  end
  object DSTCreditoCoef: TDataSource
    DataSet = QTCreditoCoef
    Left = 401
    Top = 461
  end
  object mtTarjetas: TFDMemTable
    BeforeInsert = mtTarjetasBeforeInsert
    AfterInsert = mtTarjetasAfterInsert
    BeforePost = mtTarjetasBeforePost
    AfterPost = mtTarjetasAfterPost
    AfterDelete = mtTarjetasAfterDelete
    OnNewRecord = mtTarjetasNewRecord
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 689
    Top = 580
    object mtTarjetasID: TIntegerField
      FieldName = 'ID'
    end
    object mtTarjetasID_TARJETA: TIntegerField
      FieldName = 'ID_TARJETA'
      OnChange = mtTarjetasID_TARJETAChange
    end
    object mtTarjetasMUESTRATARJETA: TStringField
      DisplayLabel = 'Tarjeta de Credito'
      FieldKind = fkLookup
      FieldName = 'MUESTRATARJETA'
      LookupDataSet = QTCredito
      LookupKeyFields = 'ID_TC'
      LookupResultField = 'DESCRIPCION'
      KeyFields = 'ID_TARJETA'
      Lookup = True
    end
    object mtTarjetasNETO: TFloatField
      DisplayLabel = 'Neto'
      FieldName = 'NETO'
      OnSetText = mtTarjetasNETOSetText
      DisplayFormat = ',0.00'
    end
    object mtTarjetasCUOTAS: TIntegerField
      DisplayLabel = 'Cuotas'
      FieldName = 'CUOTAS'
      OnChange = mtTarjetasCUOTASChange
      DisplayFormat = '0'
    end
    object mtTarjetasCOEFICIENTE: TFloatField
      FieldName = 'COEFICIENTE'
      DisplayFormat = ',0.00'
    end
    object mtTarjetasCUOTAVALOR: TFloatField
      DisplayLabel = 'Valor Cuota'
      FieldName = 'CUOTAVALOR'
      DisplayFormat = ',0.00'
    end
    object mtTarjetasRECARGO: TFloatField
      FieldName = 'RECARGO'
      DisplayFormat = ',0.00'
    end
    object mtTarjetasIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object mtTarjetasNROCUPON: TIntegerField
      DisplayLabel = 'Nro.Cupon'
      FieldName = 'NROCUPON'
    end
    object mtTarjetasCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 8
    end
  end
  object DSTarjetas: TDataSource
    DataSet = mtTarjetas
    Left = 593
    Top = 580
  end
end

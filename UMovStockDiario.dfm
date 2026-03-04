object FormMovStockDiario: TFormMovStockDiario
  Left = 253
  Top = 164
  Caption = 'Movimiento Diario'
  ClientHeight = 442
  ClientWidth = 864
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
    Width = 864
    Height = 321
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 200
      Top = 8
      Width = 42
      Height = 13
      Caption = 'Ingresos'
    end
    object Label2: TLabel
      Left = 616
      Top = 8
      Width = 38
      Height = 13
      Caption = 'Egresos'
    end
    object dbgIngresos: TJvDBGrid
      Left = 16
      Top = 24
      Width = 409
      Height = 281
      DataSource = DSMovStock_I
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbgIngresosDblClick
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'TIPOCPBTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 27
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLASECPBTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 29
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NROCPBTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENTRA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 95
          Visible = True
        end>
    end
    object JvDBGrid1: TJvDBGrid
      Left = 431
      Top = 24
      Width = 409
      Height = 281
      DataSource = DSMovStock_E
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = JvDBGrid1DblClick
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'TIPOCPBTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 27
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLASECPBTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 29
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NROCPBTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SALE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 96
          Visible = True
        end>
    end
  end
  object DSMovStock_I: TDataSource
    AutoEdit = False
    DataSet = CDSMovStock_I
    Left = 147
    Top = 318
  end
  object CDSMovStock_I: TClientDataSet
    Aggregates = <>
    Filter = '(ENTRA > 0) and (SALE=0)'
    Filtered = True
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'deposito'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipomovimiento'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'modo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CONRTOS'
        ParamType = ptInput
        Size = 1
      end>
    ProviderName = 'DSPMovStock'
    Left = 232
    Top = 320
    object CDSMovStock_IID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object CDSMovStock_IFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSMovStock_ITIPOOPERACION: TStringField
      FieldName = 'TIPOOPERACION'
      Origin = 'TIPOOPERACION'
      Size = 1
    end
    object CDSMovStock_ITIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSMovStock_ICLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSMovStock_INROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSMovStock_IDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSMovStock_IUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object CDSMovStock_IID_COMPROB: TIntegerField
      FieldName = 'ID_COMPROB'
      Origin = 'ID_COMPROB'
    end
    object CDSMovStock_ICOSTO: TFloatField
      FieldName = 'COSTO'
      Origin = 'COSTO'
      DisplayFormat = ',0.000'
    end
    object CDSMovStock_IENTRA: TFloatField
      DisplayLabel = 'Entran'
      FieldName = 'ENTRA'
      Origin = 'ENTRA'
      DisplayFormat = '0.00;-,0.00;-'
    end
    object CDSMovStock_ISALE: TFloatField
      DisplayLabel = 'Salen'
      FieldName = 'SALE'
      Origin = 'SALE'
      DisplayFormat = '0.00;-,0.00;-'
    end
  end
  object DSPMovStock: TDataSetProvider
    DataSet = QMovStock
    Left = 312
    Top = 352
  end
  object CDSMovStock_E: TClientDataSet
    Aggregates = <>
    Filter = '(ENTRA = 0) and ( SALE > 0)'
    Filtered = True
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'deposito'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipomovimiento'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'modo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CONRTOS'
        ParamType = ptInput
        Size = 1
      end>
    ProviderName = 'DSPMovStock'
    Left = 232
    Top = 384
    object CDSMovStock_EID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object CDSMovStock_EFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSMovStock_ETIPOOPERACION: TStringField
      FieldName = 'TIPOOPERACION'
      Origin = 'TIPOOPERACION'
      Size = 1
    end
    object CDSMovStock_ETIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSMovStock_ECLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSMovStock_ENROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSMovStock_EDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSMovStock_EUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object CDSMovStock_EID_COMPROB: TIntegerField
      FieldName = 'ID_COMPROB'
      Origin = 'ID_COMPROB'
    end
    object CDSMovStock_ECOSTO: TFloatField
      FieldName = 'COSTO'
      Origin = 'COSTO'
      DisplayFormat = '0.00;-,0.00;-'
    end
    object CDSMovStock_EENTRA: TFloatField
      DisplayLabel = 'Entran'
      FieldName = 'ENTRA'
      Origin = 'ENTRA'
      DisplayFormat = '0.00;-,0.00;-'
    end
    object CDSMovStock_ESALE: TFloatField
      DisplayLabel = 'Salen'
      FieldName = 'SALE'
      Origin = 'SALE'
      DisplayFormat = '0.00;-,0.00;-'
    end
    object CDSMovStock_EUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
    end
  end
  object DSMovStock_E: TDataSource
    AutoEdit = False
    DataSet = CDSMovStock_E
    Left = 131
    Top = 382
  end
  object QMovStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from ver_movimientos_stock ( :codigo, :deposito, :tipom' +
        'ovimiento, :desde, :hasta, :modo, :conrtos )'
      'order by fecha,tipocpbte desc,clasecpbte,nrocpbte')
    Left = 400
    Top = 352
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'deposito'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'tipomovimiento'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'modo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'CONRTOS'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end>
  end
end

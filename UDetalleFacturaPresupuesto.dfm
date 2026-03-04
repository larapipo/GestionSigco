object FormDetallePresuFac: TFormDetallePresuFac
  Left = 0
  Top = 0
  Caption = 'Detalle Presupuesto - Factura'
  ClientHeight = 583
  ClientWidth = 1248
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object pnBase: TPanel
    Left = 0
    Top = 0
    Width = 1248
    Height = 542
    Align = alClient
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 1295
    ExplicitHeight = 529
    object dbgPresuDetalle: TDBGrid
      Left = 9
      Top = 17
      Width = 600
      Height = 503
      DataSource = DSDetallePresu
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDrawColumnCell = dbgPresuDetalleDrawColumnCell
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CODIGOARTICULO'
          Title.Alignment = taCenter
          Title.Caption = 'Cod.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE'
          Title.Alignment = taCenter
          Title.Caption = 'Detalle'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 230
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CANTIDAD'
          Title.Alignment = taCenter
          Title.Caption = 'Cant.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNITARIO_TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Unitario Total'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Total'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 93
          Visible = True
        end>
    end
    object dbgfacdetalle: TDBGrid
      Left = 615
      Top = 17
      Width = 624
      Height = 503
      DataSource = DSDetalleFactura
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CODIGOARTICULO'
          Title.Alignment = taCenter
          Title.Caption = 'Cod.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE'
          Title.Alignment = taCenter
          Title.Caption = 'Detalle'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 238
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CANTIDAD'
          Title.Alignment = taCenter
          Title.Caption = 'Cant.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNITARIO_TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Unitario Total'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Total'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 119
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 542
    Width = 1248
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 768
    ExplicitTop = 584
    ExplicitWidth = 185
  end
  object QDetalleFactura: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select fd.codigoarticulo,fd.detalle,fd.cantidad,fd.unitario_tota' +
        'l,fd.total'
      'from fcvtadet fd'
      'where fd.id_cabfac=:faccab'
      'order by fd.codigoarticulo')
    Left = 412
    Top = 383
    ParamData = <
      item
        Name = 'FACCAB'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QDetallePresu: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select pd.codigoarticulo,pd.detalle,pd.cantidad,pd.unitario_tota' +
        'l,pd.total'
      'from presdet pd'
      'where pd.id_cabpres=:prescab'
      'order by pd.codigoarticulo')
    Left = 412
    Top = 440
    ParamData = <
      item
        Name = 'PRESCAB'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object DSPDetallePresu: TDataSetProvider
    DataSet = QDetallePresu
    Left = 508
    Top = 440
  end
  object DSPDetalleFactura: TDataSetProvider
    DataSet = QDetalleFactura
    Left = 508
    Top = 383
  end
  object CDSDetalleFactura: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'FACCAB'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDetalleFactura'
    Left = 612
    Top = 375
    object CDSDetalleFacturaCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object CDSDetalleFacturaDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSDetalleFacturaCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSDetalleFacturaUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDetalleFacturaTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = ',0.00;,0.00;-'
    end
  end
  object CDSDetallePresu: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PRESCAB'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDetallePresu'
    Left = 612
    Top = 440
    object CDSDetallePresuCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Size = 8
    end
    object CDSDetallePresuDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSDetallePresuCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSDetallePresuUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSDetallePresuTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = ',0.00;,0.00;-'
    end
  end
  object DSDetallePresu: TDataSource
    DataSet = CDSDetallePresu
    Left = 698
    Top = 440
  end
  object DSDetalleFactura: TDataSource
    DataSet = CDSDetalleFactura
    Left = 698
    Top = 375
  end
end

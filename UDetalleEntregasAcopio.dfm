object FormMuestraEntregasAcopios: TFormMuestraEntregasAcopios
  Left = 406
  Top = 151
  BorderIcons = [biSystemMenu]
  Caption = 'Entregas de Acopio'
  ClientHeight = 442
  ClientWidth = 604
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 604
    Height = 361
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object JvDBGrid1: TJvDBGrid
      Left = 1
      Top = 42
      Width = 602
      Height = 263
      Align = alTop
      DataSource = DSEntregas
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 18
      Columns = <
        item
          Expanded = False
          FieldName = 'FECHA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 279
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NROCPBTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CANTIDAD'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object pncab: TPanel
      Left = 1
      Top = 1
      Width = 602
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 1
    end
    object Panel2: TPanel
      Left = 1
      Top = 319
      Width = 602
      Height = 41
      Align = alBottom
      Caption = 'pncab'
      TabOrder = 2
      object JvGradient2: TJvGradient
        Left = 1
        Top = 1
        Width = 600
        Height = 39
        Style = grVertical
        StartColor = clWhite
        EndColor = clGradientActiveCaption
        ExplicitLeft = 336
        ExplicitTop = 8
        ExplicitWidth = 100
        ExplicitHeight = 41
      end
      object btCerrar: TBitBtn
        Left = 488
        Top = 8
        Width = 75
        Height = 25
        Kind = bkClose
        NumGlyphs = 2
        TabOrder = 0
        OnClick = btCerrarClick
      end
    end
  end
  object DSPDetalleEntregas: TDataSetProvider
    DataSet = QDetalleEntregas
    Left = 296
    Top = 192
  end
  object DSEntregas: TDataSource
    DataSet = CDSDetalleEntregas
    Left = 488
    Top = 168
  end
  object CDSDetalleEntregas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDetalleEntregas'
    Left = 384
    Top = 200
    object CDSDetalleEntregasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDetalleEntregasID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
    end
    object CDSDetalleEntregasFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSDetalleEntregasTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSDetalleEntregasCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSDetalleEntregasDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object CDSDetalleEntregasCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object CDSDetalleEntregasDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSDetalleEntregasID_MERCA_ACOPIO_DET: TIntegerField
      FieldName = 'ID_MERCA_ACOPIO_DET'
      Origin = 'ID_MERCA_ACOPIO_DET'
    end
    object CDSDetalleEntregasNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 8
    end
    object CDSDetalleEntregasCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.00'
    end
  end
  object QDetalleEntregas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.* from rto_acopio_det d where d.id_merca_acopio_det=:id')
    Left = 216
    Top = 176
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end

object FormAplicacionesNCVta: TFormAplicacionesNCVta
  Left = 411
  Top = 289
  BorderIcons = [biSystemMenu]
  Caption = 'Aplicaciones de NC Venta'
  ClientHeight = 289
  ClientWidth = 384
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  TextHeight = 13
  object dbgAplicaciones: TDBGrid
    Left = 0
    Top = 0
    Width = 384
    Height = 233
    Align = alTop
    DataSource = DSAplica
    DrawingStyle = gdsGradient
    FixedColor = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'APLICA_TIPOCPBTE'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clGreen
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'APLICA_CLASECPBTE'
        Title.Alignment = taCenter
        Title.Caption = 'Clase'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clGreen
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DETALLE'
        Title.Alignment = taCenter
        Title.Caption = 'Nro'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clGreen
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 143
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPORTE'
        Title.Alignment = taCenter
        Title.Caption = '$'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clGreen
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 84
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 264
    Top = 239
    Width = 75
    Height = 25
    Action = Borrar
    Caption = '&Borrar'
    Glyph.Data = {
      56070000424D5607000000000000360400002800000028000000140000000100
      0800000000002003000000000000000000000001000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
      A600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0FBFF00A4A0A000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030303
      0303030303030303030303030303030303030303030303030303030303030303
      0303030303030303030303030303030303030303030303030303030303030303
      0303030303030303030303030303030303030303030303030303030303030303
      030303030303030303030303030303030303FF030303FF030303030303030303
      0303030303030303030303030303030303030303030303030303FF0303FFFFFF
      0303FF0303030303030303030303030303030303030303030303030303030303
      0303FFFFFFFFFFFFFFFFFFFF03030303030303030303030303030303030303FF
      FFFFFF03030303030303FFFFFFFFFFFFFFFFF801010103030303030303030303
      030303030303F8F8F8F8FFFF030303030303FFFFFFFFFFFFFFF8F9FDFD050103
      03030303030303030303030303F8FF0303F8F8FFFF0303030303FFFFFFFFFFFF
      FFF9FDF9FDFD050103030303030303030303030303F8FF030303F8F8FFFF0303
      0303FFFFFFFFFFFF03FDF9FFF9FDFD0500030303030303030303030303F8FF03
      030303F8F8FFFF030303FFFF03FFFFFF03F9FDFFFDF9FD000600030303030303
      0303030303F803FF030303F8F8F8FFFF0303FF030303FF030303F9FDFFFD0002
      0406000303030303030303030303F803FF03F8F8F8F8F8FFFF03FF0303030303
      030303F9FD00FA02020406000303030303030303030303F803F803F8F8F8F8F8
      FFFF0303030303030303030300FAFBFA020200F8000303030303030303030303
      F803FF03F8F8F8F8F8FF030303030303030303030300FAFBFA0004F8F8000303
      030303030303030303F803FF03F8F8F8F8F803030303030303030303030300FA
      0007FB04F8F8030303030303030303030303F803F80303F8F8F8030303030303
      030303030303030007FFFBFB04F803030303030303030303030303F803FF0303
      F8F8030303030303030303030303030300FFFFFBFB0403030303030303030303
      03030303F803FF0303F803030303030303030303030303030300FFFFFBFB0303
      03030303030303030303030303F803FF03030303030303030303030303030303
      030300FFFFFB03030303030303030303030303030303F8030303}
    NumGlyphs = 2
    TabOrder = 1
  end
  object DSAplica: TDataSource
    DataSet = CDSAplica
    Left = 88
    Top = 64
  end
  object DSPAplica: TDataSetProvider
    DataSet = QAplica
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 224
    Top = 64
  end
  object CDSAplica: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'clase'
        ParamType = ptInput
      end>
    ProviderName = 'DSPAplica'
    BeforeDelete = CDSAplicaBeforeDelete
    Left = 144
    Top = 64
    object CDSAplicaID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSAplicaID_MOVCCVTA: TIntegerField
      FieldName = 'ID_MOVCCVTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSAplicaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSAplicaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Required = True
      Size = 6
    end
    object CDSAplicaID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Required = True
    end
    object CDSAplicaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSAplicaCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSAplicaNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object CDSAplicaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSAplicaAPLICA_ID_CPBTE: TIntegerField
      FieldName = 'APLICA_ID_CPBTE'
      Required = True
    end
    object CDSAplicaAPLICA_TIPOCPBTE: TStringField
      FieldName = 'APLICA_TIPOCPBTE'
      Size = 2
    end
    object CDSAplicaAPLICA_CLASECPBTE: TStringField
      FieldName = 'APLICA_CLASECPBTE'
      Size = 2
    end
    object CDSAplicaAPLICA_NROCPBTE: TStringField
      FieldName = 'APLICA_NROCPBTE'
      Size = 13
    end
    object CDSAplicaDETALLE: TStringField
      FieldName = 'DETALLE'
    end
  end
  object ActionList1: TActionList
    Left = 168
    Top = 144
    object Borrar: TAction
      Caption = '&Borrar'
      OnExecute = BorrarExecute
    end
    object Cerrar: TAction
      Caption = 'Cerrar'
      ShortCut = 16451
      OnExecute = CerrarExecute
    end
  end
  object QAplica: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from movaplicaccvta where id_cpbte=:id and tipocpbte=:t' +
        'ipo and clasecpbte=:clase')
    Left = 288
    Top = 64
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'tipo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'clase'
        DataType = ftString
        ParamType = ptInput
      end>
    object QAplicaID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAplicaID_MOVCCVTA: TIntegerField
      FieldName = 'ID_MOVCCVTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAplicaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QAplicaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Required = True
      Size = 6
    end
    object QAplicaID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Required = True
    end
    object QAplicaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QAplicaCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QAplicaNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object QAplicaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QAplicaAPLICA_ID_CPBTE: TIntegerField
      FieldName = 'APLICA_ID_CPBTE'
      Required = True
    end
    object QAplicaAPLICA_TIPOCPBTE: TStringField
      FieldName = 'APLICA_TIPOCPBTE'
      Size = 2
    end
    object QAplicaAPLICA_CLASECPBTE: TStringField
      FieldName = 'APLICA_CLASECPBTE'
      Size = 2
    end
    object QAplicaAPLICA_NROCPBTE: TStringField
      FieldName = 'APLICA_NROCPBTE'
      Size = 13
    end
    object QAplicaDETALLE: TStringField
      FieldName = 'DETALLE'
    end
  end
end

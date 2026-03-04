object FormGarantes: TFormGarantes
  Left = 287
  Top = 126
  Caption = 'Garantes'
  ClientHeight = 442
  ClientWidth = 912
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
    Left = 24
    Top = 8
    Width = 849
    Height = 369
    Caption = 'Panel1'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 8
      Top = 8
      Width = 825
      Height = 297
      DataSource = DSGarantes
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DIRECCION'
          Title.Alignment = taCenter
          Width = 417
          Visible = True
        end>
    end
    object BitBtn1: TBitBtn
      Left = 744
      Top = 320
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 663
      Top = 320
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 2
      OnClick = BitBtn2Click
    end
  end
  object QGarantes: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from clientes_garantes Where codigoCliente=:Codigo'
      'order by por_defecto')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 200
    Top = 296
    object QGarantesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QGarantesCODIGOCLIENTE: TStringField
      FieldName = 'CODIGOCLIENTE'
      Required = True
      Size = 6
    end
    object QGarantesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object QGarantesDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 100
    end
    object QGarantesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 50
    end
    object QGarantesCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 10
    end
    object QGarantesTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Size = 15
    end
    object QGarantesTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Size = 15
    end
    object QGarantesCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object QGarantesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 150
    end
    object QGarantesPOR_DEFECTO: TStringField
      FieldName = 'POR_DEFECTO'
      FixedChar = True
      Size = 1
    end
  end
  object CDSGarantes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPGarantes'
    Left = 336
    Top = 296
    object CDSGarantesID: TIntegerField
      DisplayLabel = 'Cod.'
      FieldName = 'ID'
      Required = True
    end
    object CDSGarantesCODIGOCLIENTE: TStringField
      FieldName = 'CODIGOCLIENTE'
      Required = True
      Size = 6
    end
    object CDSGarantesNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSGarantesDIRECCION: TStringField
      DisplayLabel = 'Direccion'
      FieldName = 'DIRECCION'
      Size = 100
    end
    object CDSGarantesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 50
    end
    object CDSGarantesCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 10
    end
    object CDSGarantesTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Size = 15
    end
    object CDSGarantesTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Size = 15
    end
    object CDSGarantesCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object CDSGarantesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 150
    end
    object CDSGarantesPOR_DEFECTO: TStringField
      FieldName = 'POR_DEFECTO'
      FixedChar = True
      Size = 1
    end
  end
  object DSGarantes: TDataSource
    DataSet = CDSGarantes
    Left = 480
    Top = 264
  end
  object DSPGarantes: TDataSetProvider
    DataSet = QGarantes
    Left = 264
    Top = 296
  end
end

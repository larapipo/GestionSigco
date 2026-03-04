object FormAdministracionGarantes: TFormAdministracionGarantes
  Left = 339
  Top = 274
  Caption = 'Administracion de Garantes'
  ClientHeight = 484
  ClientWidth = 862
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
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 16
    Top = 8
    Width = 801
    Height = 345
    Caption = 'Panel1'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 9
      Top = 5
      Width = 785
      Height = 273
      DataSource = DSGarantes
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
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
          FieldName = 'DIRECCION'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 376
          Visible = True
        end>
    end
    object btCancelar: TBitBtn
      Left = 621
      Top = 295
      Width = 75
      Height = 30
      Hint = 'Cancela los cambios'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btCancelarClick
    end
    object btConfirma: TBitBtn
      Left = 702
      Top = 295
      Width = 75
      Height = 30
      Hint = 'Confirma los cambios realizados'
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btConfirmaClick
    end
  end
  object CDSGarantes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPGarantes'
    Left = 184
    Top = 384
    object CDSGarantesID: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSGarantesNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
    object CDSGarantesDIRECCION: TStringField
      DisplayLabel = 'Direccion'
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 100
    end
  end
  object DSGarantes: TDataSource
    DataSet = CDSGarantes
    Left = 304
    Top = 384
  end
  object DSPGarantes: TDataSetProvider
    DataSet = QGarantes
    Left = 424
    Top = 384
  end
  object QGarantes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from clientes_garantes where codigocliente= :codigo'
      'order by id')
    Left = 528
    Top = 376
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
end

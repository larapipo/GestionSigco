object FormNroSeries: TFormNroSeries
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Cambio de Series'
  ClientHeight = 459
  ClientWidth = 382
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object dbgSeries: TDBGrid
    Left = 17
    Top = 8
    Width = 337
    Height = 353
    Color = clWhite
    DataSource = DSVtaSubDetalle
    DrawingStyle = gdsGradient
    FixedColor = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnEditButtonClick = dbgSeriesEditButtonClick
    Columns = <
      item
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'SERIE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Codigo Barra/Nro.de Serie'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object btOk: TBitBtn
    Left = 271
    Top = 376
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
    OnClick = btOkClick
  end
  object btCancelar: TBitBtn
    Left = 190
    Top = 376
    Width = 75
    Height = 25
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
  end
  object DSPVtaSubDet: TDataSetProvider
    DataSet = DMMain_FD.QVtaSubDetalle
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 48
    Top = 287
  end
  object DSVtaSubDetalle: TDataSource
    DataSet = CDSVtaSubDetalle
    Left = 240
    Top = 295
  end
  object IBGFcVtaSubDet: TIBGenerator
    DatabaseIBX = DMMain_2.SQLConectionMain
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_FCVTASUBDETALLE'
    SystemGenerators = False
    Left = 328
    Top = 303
  end
  object CDSBuscaNroSerie: TClientDataSet
    Aggregates = <>
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
      end>
    ProviderName = 'DSPBuscaNroSerie'
    Left = 132
    Top = 215
    object CDSBuscaNroSerieCODIGOSERIE: TStringField
      DisplayLabel = 'Nro.Serie'
      DisplayWidth = 50
      FieldName = 'CODIGOSERIE'
      Size = 50
    end
    object CDSBuscaNroSerieID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object CDSBuscaNroSerieCODIGO_STK: TStringField
      DisplayWidth = 8
      FieldName = 'CODIGO_STK'
      Visible = False
      Size = 8
    end
    object CDSBuscaNroSerieFECHAINGRESO: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'FECHAINGRESO'
      Visible = False
    end
    object CDSBuscaNroSerieFECHAEGRESO: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'FECHAEGRESO'
      Visible = False
    end
    object CDSBuscaNroSerieDEPOSITO: TIntegerField
      DisplayWidth = 10
      FieldName = 'DEPOSITO'
      Required = True
      Visible = False
    end
  end
  object DSPBuscaNroSerie: TDataSetProvider
    DataSet = DMBuscadores.QBuscaNroSerie
    Options = [poAllowCommandText]
    Left = 52
    Top = 215
  end
  object CDSVtaSubDetalle: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPVtaSubDet'
    BeforeInsert = CDSVtaSubDetalleBeforeInsert
    BeforeDelete = CDSVtaSubDetalleBeforeDelete
    Left = 136
    Top = 288
    object CDSVtaSubDetalleID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSVtaSubDetalleID_DETFAC: TIntegerField
      FieldName = 'ID_DETFAC'
      Origin = 'ID_DETFAC'
    end
    object CDSVtaSubDetalleID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      Origin = 'ID_CABFAC'
    end
    object CDSVtaSubDetalleTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      FixedChar = True
      Size = 2
    end
    object CDSVtaSubDetalleCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      FixedChar = True
      Size = 2
    end
    object CDSVtaSubDetalleFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object CDSVtaSubDetalleNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSVtaSubDetalleCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Size = 8
    end
    object CDSVtaSubDetalleSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 50
    end
    object CDSVtaSubDetalleDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object CDSVtaSubDetalleTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object ComBuscadorSerie: TComBuscador
    Data = CDSBuscaNroSerie
    Campo = 'CODIOSERIE'
    Titulo = 'Nro. de Serie/Codigo Barra'
    rOk = False
    Left = 168
    Top = 128
  end
end

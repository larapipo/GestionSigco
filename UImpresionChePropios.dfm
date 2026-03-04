object FormImpresionChePropios: TFormImpresionChePropios
  Left = 0
  Top = 0
  Caption = 'Impresion de Cheques Propios(ChequesPropios)'
  ClientHeight = 357
  ClientWidth = 534
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
  object pnBase: TPanel
    Left = 0
    Top = 0
    Width = 534
    Height = 281
    Align = alTop
    Caption = 'pnBase'
    Color = clMenuHighlight
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    ParentBackground = False
    TabOrder = 0
    OnDblClick = pnBaseDblClick
    object dbgCheques: TDBGrid
      Left = 11
      Top = 11
      Width = 512
      Height = 225
      Align = alTop
      DataSource = DSCheques
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 142
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHA_EMISION'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHA_COBRO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPORTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 91
          Visible = True
        end>
    end
    object BitBtn1: TBitBtn
      Left = 440
      Top = 242
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 359
      Top = 242
      Width = 75
      Height = 25
      Caption = 'Cerrar'
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object chPreview: TCheckBox
      Left = 11
      Top = 246
      Width = 97
      Height = 17
      Caption = 'Preview'
      TabOrder = 3
    end
  end
  object frReport: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43244.589145023150000000
    ReportOptions.LastChange = 43244.589145023150000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 32
    Top = 272
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object DSCheques: TDataSource
    DataSet = CDSCheques
    Left = 280
    Top = 296
  end
  object CDSCheques: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'tipocpbte'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'idcpbte'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCheques'
    OnCalcFields = CDSChequesCalcFields
    Left = 208
    Top = 296
    object CDSChequesIDMOVCAJA: TIntegerField
      FieldName = 'IDMOVCAJA'
      Origin = 'ID_MOV_CAJA'
      Required = True
    end
    object CDSChequesID_CHEQUE_PRO: TIntegerField
      FieldName = 'ID_CHEQUE_PRO'
      Origin = 'ID_CHEQUE_PRO'
      ProviderFlags = []
    end
    object CDSChequesID_CHEQUERA: TIntegerField
      FieldName = 'ID_CHEQUERA'
      Origin = 'ID_CHEQUERA'
      ProviderFlags = []
    end
    object CDSChequesID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
      ProviderFlags = []
    end
    object CDSChequesNOMBRE: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
    end
    object CDSChequesFECHA_EMISION: TSQLTimeStampField
      DisplayLabel = 'F.Emision'
      FieldName = 'FECHA_EMISION'
      Origin = 'FECHA_EMISION'
      ProviderFlags = []
    end
    object CDSChequesFECHA_COBRO: TSQLTimeStampField
      DisplayLabel = 'F.Cobro'
      FieldName = 'FECHA_COBRO'
      Origin = 'FECHA_COBRO'
      ProviderFlags = []
    end
    object CDSChequesORDEN_DE: TStringField
      DisplayLabel = 'Orden de'
      FieldName = 'ORDEN_DE'
      Origin = 'ORDEN_DE'
      ProviderFlags = []
      Size = 30
    end
    object CDSChequesNUMERO: TIntegerField
      DisplayLabel = 'Numero'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
    end
    object CDSChequesOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      ProviderFlags = []
      Size = 200
    end
    object CDSChequesIMPLETRA: TStringField
      FieldKind = fkCalculated
      FieldName = 'IMPLETRA'
      Size = 100
      Calculated = True
    end
    object CDSChequesIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00'
    end
  end
  object DSPCheques: TDataSetProvider
    DataSet = QCheques
    Left = 144
    Top = 296
  end
  object frDBChequesLst: TfrxDBDataset
    UserName = 'frDBChequesLst'
    CloseDataSource = False
    DataSource = DSCheques
    BCDToCurrency = True
    DataSetOptions = []
    Left = 256
    Top = 216
    FieldDefs = <
      item
        FieldName = 'IDMOVCAJA'
        FieldAlias = 'IDMOVCAJA'
      end
      item
        FieldName = 'ID_CHEQUE_PRO'
        FieldAlias = 'ID_CHEQUE_PRO'
      end
      item
        FieldName = 'ID_CHEQUERA'
        FieldAlias = 'ID_CHEQUERA'
      end
      item
        FieldName = 'ID_BANCO'
        FieldAlias = 'ID_BANCO'
      end
      item
        FieldName = 'NOMBRE'
        FieldAlias = 'NOMBRE'
      end
      item
        FieldName = 'FECHA_EMISION'
        FieldAlias = 'FECHA_EMISION'
      end
      item
        FieldName = 'FECHA_COBRO'
        FieldAlias = 'FECHA_COBRO'
      end
      item
        FieldName = 'ORDEN_DE'
        FieldAlias = 'ORDEN_DE'
      end
      item
        FieldName = 'NUMERO'
        FieldAlias = 'NUMERO'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'OBSERVACIONES'
        FieldAlias = 'OBSERVACIONES'
      end
      item
        FieldName = 'IMPLETRA'
        FieldAlias = 'IMPLETRA'
      end>
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 416
    Top = 280
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 480
    Top = 288
  end
  object QCheques: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select m.id_mov_caja as IdMovCaja,ch.id_cheque_pro,ch.id_chequer' +
        'a,ch.id_banco,b.nombre,'
      
        '       ch.fecha_emision,ch.fecha_cobro,ch.orden_de,ch.numero,ch.' +
        'importe,ch.observaciones from caja_mov m'
      'left join cheque_propio ch on ch.id_mov_caja=m.id_mov_caja'
      'left join bancos b on b.id_banco=ch.id_banco'
      
        'where m.tipo_operacion='#39'E'#39' and m.tipo_comprob= :tipocpbte and m.' +
        'id_tpago=2 and m.id_comprobante = :idcpbte'
      'order by ch.id_banco, ch.numero')
    Left = 96
    Top = 296
    ParamData = <
      item
        Position = 1
        Name = 'tipocpbte'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'idcpbte'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end

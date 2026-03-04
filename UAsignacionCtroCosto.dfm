object FormAsignacionCentroCosto: TFormAsignacionCentroCosto
  Left = 232
  Top = 138
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Asignacion Centro de Costo'
  ClientHeight = 583
  ClientWidth = 926
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 926
    Height = 377
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 616
      Top = 323
      Width = 81
      Height = 16
      Caption = 'Total Aplicado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 480
      Top = 323
      Width = 67
      Height = 16
      Caption = 'Impor.Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object dbgAplic: TJvDBGrid
      Left = 1
      Top = 1
      Width = 924
      Height = 316
      Align = alTop
      Ctl3D = False
      DataSource = DSAplic
      DrawingStyle = gdsClassic
      FixedColor = clHighlight
      ParentCtl3D = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnColEnter = dbgAplicColEnter
      OnEditButtonClick = BuscarCtrosExecute
      OnKeyDown = dbgAplicKeyDown
      OnKeyPress = dbgAplicKeyPress
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 20
      Columns = <
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'CONCEPTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 81
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'DETALLE_CONCEP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 245
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'CTRO_COSTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 59
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'MUESTRACTROCOSTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 242
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPUTADO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PORCENTAJE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = '% del Imp.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 68
          Visible = True
        end
        item
          Color = clMoneyGreen
          Expanded = False
          FieldName = 'IMPORTE_LINEA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Color = clMoneyGreen
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -13
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 87
          Visible = True
        end>
    end
    object edTotalAplicado: TJvCalcEdit
      Left = 616
      Top = 342
      Width = 95
      Height = 24
      DisplayFormat = ',0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 1
      DisabledTextColor = clGreen
      DecimalPlacesAlwaysShown = False
    end
    object DBNavigator1: TDBNavigator
      Left = 11
      Top = 339
      Width = 225
      Height = 25
      DataSource = DSAplic
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      TabOrder = 2
    end
    object edTotalGral: TJvCalcEdit
      Left = 480
      Top = 342
      Width = 95
      Height = 24
      DisplayFormat = ',0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = False
      TabOrder = 3
      DisabledTextColor = clBlue
      DecimalPlacesAlwaysShown = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 377
    Width = 926
    Height = 56
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object JvGradient1: TJvGradient
      AlignWithMargins = True
      Left = 2
      Top = 2
      Width = 922
      Height = 52
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Style = grVertical
      StartColor = clMenuHighlight
      EndColor = clMenuHighlight
      ExplicitLeft = 1
      ExplicitTop = 24
      ExplicitWidth = 673
      ExplicitHeight = 45
    end
    object btAceptar: TBitBtn
      Left = 798
      Top = 14
      Width = 85
      Height = 28
      Hint = '(F7)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = btAceptarClick
    end
    object btCerrar: TBitBtn
      Left = 707
      Top = 14
      Width = 85
      Height = 28
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      Visible = False
      OnClick = btCerrarClick
    end
  end
  object CDSAplic: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipocpbte'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPAplic'
    AfterOpen = CDSAplicAfterOpen
    BeforeInsert = CDSAplicBeforeInsert
    BeforePost = CDSAplicBeforePost
    AfterPost = CDSAplicAfterPost
    AfterDelete = CDSAplicAfterDelete
    OnNewRecord = CDSAplicNewRecord
    Left = 344
    Top = 392
    object CDSAplicID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSAplicID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSAplicTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSAplicCTRO_COSTO: TIntegerField
      DisplayLabel = 'Ctr.Costo'
      FieldName = 'CTRO_COSTO'
      Origin = 'CTRO_COSTO'
      Required = True
      OnSetText = CDSAplicCTRO_COSTOSetText
    end
    object CDSAplicIMPUTADO: TFloatField
      DisplayLabel = 'Aplicado'
      FieldName = 'IMPUTADO'
      Origin = 'IMPUTADO'
      OnSetText = CDSAplicIMPUTADOSetText
      DisplayFormat = ',0.00'
    end
    object CDSAplicPORCENTAJE: TFloatField
      DisplayLabel = '%'
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
      OnSetText = CDSAplicPORCENTAJESetText
      DisplayFormat = '0.00'
    end
    object CDSAplicTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
    end
    object CDSAplicTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSAplicMUESTRACTROCOSTO: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'MUESTRACTROCOSTO'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 45
    end
    object CDSAplicCONCEPTO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CONCEPTO'
      Origin = 'CONCEPTO'
      Required = True
      OnSetText = CDSAplicCONCEPTOSetText
      Size = 8
    end
    object CDSAplicDETALLE_CONCEP: TStringField
      DisplayLabel = 'Det.Concepto'
      FieldName = 'DETALLE_CONCEP'
      Origin = 'DETALLE_CONCEP'
      Size = 50
    end
    object CDSAplicPORCENTAJE_TOTAL: TFloatField
      FieldName = 'PORCENTAJE_TOTAL'
      Origin = 'PORCENTAJE_TOTAL'
      DisplayFormat = '0.00'
    end
    object CDSAplicIMPORTE_LINEA: TFloatField
      DisplayLabel = 'Import.Gast'
      FieldName = 'IMPORTE_LINEA'
      Origin = 'IMPORTE_LINEA'
      OnSetText = CDSAplicIMPORTE_LINEASetText
      DisplayFormat = ',0.00'
    end
  end
  object DSAplic: TDataSource
    DataSet = CDSAplic
    Left = 416
    Top = 392
  end
  object DSPCtroCosto: TDataSetProvider
    DataSet = QCtroCosto
    Options = []
    Left = 280
    Top = 328
  end
  object CDSCtroCosto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCtroCosto'
    Left = 352
    Top = 328
    object CDSCtroCostoDESCRIPCION: TStringField
      DisplayLabel = 'Descripcion'
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 45
    end
    object CDSCtroCostoID: TIntegerField
      DisplayLabel = 'Cod.'
      FieldName = 'ID'
      Origin = '4'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCtroCostoPOR_DEFECTO: TStringField
      FieldName = 'POR_DEFECTO'
      Origin = 'POR_DEFECTO'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object ActionList1: TActionList
    Left = 344
    Top = 112
    object BuscarCtros: TAction
      Caption = 'BuscarCtros'
      ShortCut = 16397
      OnExecute = BuscarCtrosExecute
    end
  end
  object ibgId: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_CTRO_COSTO'
    SystemGenerators = False
    Left = 552
    Top = 400
  end
  object QPorDefecto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from centro_costo'
      'where por_defecto='#39'S'#39)
    Left = 232
    Top = 256
    object QPorDefectoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object QCtro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from centro_costo'
      'where id=:id')
    Left = 160
    Top = 472
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QCtroID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCtroDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 45
    end
    object QCtroPOR_DEFECTO: TStringField
      FieldName = 'POR_DEFECTO'
      Origin = 'POR_DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QUltimoId: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max(c.id) from  aplica_ctro_costo c')
    Left = 160
    Top = 528
  end
  object QAplic: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select ap.*,c.descripcion as MuestraCtroCosto from aplica_ctro_c' +
        'osto ap'
      'left join centro_costo c on c.id=ap.ctro_costo'
      'where ap.id_cpbte = :id and'
      'ap.tipocpbte = :tipocpbte and'
      'ap.tipo = :tipo')
    Left = 216
    Top = 392
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'tipocpbte'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'tipo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QAplicID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAplicID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAplicTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QAplicCTRO_COSTO: TIntegerField
      FieldName = 'CTRO_COSTO'
      Origin = 'CTRO_COSTO'
      Required = True
    end
    object QAplicIMPUTADO: TFloatField
      FieldName = 'IMPUTADO'
      Origin = 'IMPUTADO'
    end
    object QAplicTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QAplicPORCENTAJE: TFloatField
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
    end
    object QAplicTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QAplicCONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Origin = 'CONCEPTO'
      Required = True
      Size = 8
    end
    object QAplicDETALLE_CONCEP: TStringField
      FieldName = 'DETALLE_CONCEP'
      Origin = 'DETALLE_CONCEP'
      Size = 50
    end
    object QAplicIMPORTE_LINEA: TFloatField
      FieldName = 'IMPORTE_LINEA'
      Origin = 'IMPORTE_LINEA'
    end
    object QAplicPORCENTAJE_TOTAL: TFloatField
      FieldName = 'PORCENTAJE_TOTAL'
      Origin = 'PORCENTAJE_TOTAL'
    end
    object QAplicMUESTRACTROCOSTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACTROCOSTO'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 45
    end
  end
  object QCtroCosto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from centro_costo')
    Left = 224
    Top = 328
  end
  object ComBuscadorCtros: TComBuscador
    Data = CDSCtroCosto
    Campo = 'ID'
    rOk = False
    Left = 464
    Top = 120
  end
  object DSPAplic: TDataSetProvider
    DataSet = QAplic
    Options = []
    Left = 280
    Top = 393
  end
end

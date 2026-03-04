inherited FormABMPersonalConceptos: TFormABMPersonalConceptos
  Left = 422
  Top = 164
  Caption = 'ABM Conceptos'
  ClientHeight = 534
  ClientWidth = 634
  ExplicitWidth = 652
  ExplicitHeight = 575
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 243
    Top = 68
    Width = 38
    Height = 13
    Caption = 'M'#237'nimo:'
  end
  object Label3: TLabel [1]
    Left = 395
    Top = 60
    Width = 38
    Height = 13
    Caption = 'M'#237'nimo:'
  end
  inherited pnPrincipal: TPanel
    Width = 634
    Height = 161
    ExplicitWidth = 634
    ExplicitHeight = 161
    object LConcepto: TLabel
      Left = 88
      Top = 8
      Width = 46
      Height = 13
      Caption = 'Concepto'
    end
    object LTipo: TLabel
      Left = 16
      Top = 55
      Width = 21
      Height = 13
      Caption = 'Tipo'
    end
    object LCalculo: TLabel
      Left = 16
      Top = 101
      Width = 35
      Height = 13
      Caption = 'C'#225'lculo'
    end
    object LImporte: TLabel
      Left = 215
      Top = 55
      Width = 85
      Height = 13
      Caption = 'Unidades/Importe'
    end
    object LMinimo: TLabel
      Left = 523
      Top = 101
      Width = 35
      Height = 13
      Caption = 'M'#237'nimo'
    end
    object LConceptoBase: TLabel
      Left = 314
      Top = 55
      Width = 76
      Height = 13
      Caption = 'Concepto Base:'
    end
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 9
      Height = 13
      Caption = 'Id'
    end
    object Label4: TLabel
      Left = 523
      Top = 55
      Width = 36
      Height = 13
      Caption = 'Maximo'
    end
    object Label5: TLabel
      Left = 314
      Top = 101
      Width = 67
      Height = 13
      Caption = 'Conc. Base 2:'
    end
    object Label6: TLabel
      Left = 225
      Top = 101
      Width = 36
      Height = 13
      Caption = '% - Div.'
    end
    object dbeConcepto: TDBEdit
      Left = 88
      Top = 25
      Width = 345
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CONCEPTO'
      DataSource = DSBase
      TabOrder = 0
    end
    object DBEImporte: TDBEdit
      Left = 216
      Top = 72
      Width = 60
      Height = 21
      Hint = 'para calculo Fijo'
      DataField = 'IMPORTE'
      DataSource = DSBase
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
    object DBEPorcentaje: TDBEdit
      Left = 215
      Top = 117
      Width = 60
      Height = 21
      Hint = 'para calculo Porcentaje o Combinado'
      DataField = 'PORCENTAJE'
      DataSource = DSBase
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object DBEMinimo: TDBEdit
      Left = 523
      Top = 117
      Width = 70
      Height = 21
      DataField = 'MINIMO'
      DataSource = DSBase
      TabOrder = 6
    end
    object dbeId: TDBEdit
      Left = 16
      Top = 25
      Width = 60
      Height = 21
      Hint = 'Ingresar manualmente'
      Color = clInfoBk
      DataField = 'ID'
      DataSource = DSBase
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 523
      Top = 72
      Width = 70
      Height = 21
      DataField = 'MAXIMO'
      DataSource = DSBase
      TabOrder = 9
    end
    object chbVisible: TDBCheckBox
      Left = 523
      Top = 27
      Width = 97
      Height = 17
      Caption = 'Visible'
      DataField = 'VISIBLE'
      DataSource = DSBase
      TabOrder = 10
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object cbTipo: TJvDBComboBox
      Left = 16
      Top = 74
      Width = 180
      Height = 21
      DataField = 'TIPO'
      DataSource = DSBase
      Items.Strings = (
        'Remuneracion'
        'Remuneracion Exenta'
        'Retencion'
        'Contribucion'
        'Sueldo Basico'
        'Antiguedad'
        'Viaticos')
      TabOrder = 2
      Values.Strings = (
        'RM'
        'RX'
        'RT'
        'TC'
        'SB'
        'AT'
        'VI')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object cbCalculo: TJvDBComboBox
      Left = 16
      Top = 117
      Width = 180
      Height = 21
      DataField = 'CALCULO'
      DataSource = DSBase
      Items.Strings = (
        'Monto Fijo'
        'Porcentaje de otro Concepto'
        'Combinado (Fijo + %)'
        'Suma de 2 Concpetos'
        'Cociente de otro Concepto')
      TabOrder = 3
      Values.Strings = (
        'F'
        'P'
        'C'
        'S'
        'D')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
      OnChange = cbCalculoChange
    end
    object dbcConceptoBase: TJvDBLookupCombo
      Left = 287
      Top = 74
      Width = 230
      Height = 21
      DropDownCount = 15
      DisplayAllFields = True
      Color = clBtnFace
      DataField = 'CONCEPTOBASE'
      DataSource = DSBase
      Enabled = False
      LookupField = 'Id'
      LookupDisplay = 'ID;CONCEPTO'
      LookupSource = DSConceptos_1
      TabOrder = 7
    end
    object dbcConceptoDos: TJvDBLookupCombo
      Left = 287
      Top = 117
      Width = 230
      Height = 21
      DropDownCount = 15
      Color = clBtnFace
      DataField = 'CONCEPTOBASE2'
      DataSource = DSBase
      Enabled = False
      LookupField = 'Id'
      LookupDisplay = 'CONCEPTO'
      LookupSource = DSConceptos_2
      TabOrder = 8
    end
  end
  inherited ToolBar1: TToolBar
    Top = 161
    Width = 634
    ExplicitTop = 161
    ExplicitWidth = 634
  end
  inherited Panel1: TPanel
    Top = 191
    Width = 634
    ExplicitTop = 191
    ExplicitWidth = 634
    inherited sbEstado: TStatusBar
      Width = 472
      ExplicitWidth = 472
    end
  end
  inherited ActionList1: TActionList
    Left = 138
    Top = 320
  end
  inherited DSBase: TDataSource
    DataSet = CDSConcepto
    Left = 226
    Top = 240
  end
  inherited ImageList1: TImageList
    Left = 232
    Top = 128
  end
  inherited JvFormStorage: TJvFormStorage
    Top = 224
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 32
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 416
    Top = 224
  end
  inherited ComBuscadorBase: TComBuscador
    Data = CDSBuscador
    Campo = 'ID'
    Titulo = 'Conceptos'
    Left = 560
    Top = 240
  end
  inherited QBrowse2: TFDQuery
    Left = 40
    Top = 392
  end
  inherited QUltimoCodigo2: TFDQuery
    SQL.Strings = (
      'select max(id) from personal_conceptos')
    Left = 32
    Top = 440
  end
  object DSConceptos_1: TDataSource
    DataSet = CDSLstConceptos_1
    Left = 576
    Top = 352
  end
  object CDSLstConceptos_1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPLstConceptos'
    Left = 512
    Top = 352
    object CDSLstConceptos_1ID: TIntegerField
      DisplayWidth = 4
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSLstConceptos_1CONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Origin = 'CONCEPTO'
      Size = 30
    end
  end
  object DSPLstConceptos: TDataSetProvider
    DataSet = QLstConceptos
    Options = []
    Left = 424
    Top = 392
  end
  object CDSLstConceptos_2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPLstConceptos'
    Left = 496
    Top = 424
    object CDSLstConceptos_2ID: TIntegerField
      DisplayWidth = 4
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSLstConceptos_2CONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Origin = 'CONCEPTO'
      Size = 30
    end
  end
  object DSConceptos_2: TDataSource
    DataSet = CDSLstConceptos_2
    Left = 568
    Top = 424
  end
  object QLstConceptos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select id, concepto from personal_conceptos order by concepto')
    Left = 344
    Top = 376
    object QLstConceptosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLstConceptosCONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Origin = 'CONCEPTO'
      Size = 30
    end
  end
  object QConcepto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from personal_conceptos where id=:id')
    Left = 200
    Top = 296
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QConceptoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QConceptoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 2
    end
    object QConceptoCONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Origin = 'CONCEPTO'
      Size = 30
    end
    object QConceptoCALCULO: TStringField
      FieldName = 'CALCULO'
      Origin = 'CALCULO'
      Size = 3
    end
    object QConceptoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QConceptoPORCENTAJE: TFloatField
      FieldName = 'PORCENTAJE'
      Origin = 'PORCENTAJE'
    end
    object QConceptoMINIMO: TFloatField
      FieldName = 'MINIMO'
      Origin = 'MINIMO'
    end
    object QConceptoCONCEPTOBASE: TIntegerField
      FieldName = 'CONCEPTOBASE'
      Origin = 'CONCEPTOBASE'
    end
    object QConceptoCOLUMNA: TIntegerField
      FieldName = 'COLUMNA'
      Origin = 'COLUMNA'
    end
    object QConceptoMAXIMO: TIntegerField
      FieldName = 'MAXIMO'
      Origin = 'MAXIMO'
    end
    object QConceptoVISIBLE: TStringField
      FieldName = 'VISIBLE'
      Origin = 'VISIBLE'
      FixedChar = True
      Size = 1
    end
    object QConceptoCONCEPTOBASE2: TIntegerField
      FieldName = 'CONCEPTOBASE2'
      Origin = 'CONCEPTOBASE2'
    end
  end
  object DSPConcpeto: TDataSetProvider
    DataSet = QConcepto
    Options = []
    Left = 272
    Top = 296
  end
  object CDSConcepto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPConcpeto'
    OnNewRecord = CDSConceptoNewRecord
    Left = 344
    Top = 296
    object CDSConceptoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSConceptoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 2
    end
    object CDSConceptoCONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Size = 30
    end
    object CDSConceptoCALCULO: TStringField
      FieldName = 'CALCULO'
      Size = 3
    end
    object CDSConceptoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSConceptoPORCENTAJE: TFloatField
      FieldName = 'PORCENTAJE'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSConceptoMINIMO: TFloatField
      FieldName = 'MINIMO'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSConceptoCONCEPTOBASE: TIntegerField
      FieldName = 'CONCEPTOBASE'
    end
    object CDSConceptoCOLUMNA: TIntegerField
      FieldName = 'COLUMNA'
    end
    object CDSConceptoMAXIMO: TIntegerField
      FieldName = 'MAXIMO'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSConceptoVISIBLE: TStringField
      FieldName = 'VISIBLE'
      FixedChar = True
      Size = 1
    end
    object CDSConceptoCONCEPTOBASE2: TIntegerField
      FieldName = 'CONCEPTOBASE2'
    end
  end
  object QBuscador: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from personal_conceptos order by concepto')
    Left = 152
    Top = 456
  end
  object DSPBuscador: TDataSetProvider
    DataSet = QBuscador
    Options = []
    Left = 224
    Top = 456
  end
  object CDSBuscador: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscador'
    OnNewRecord = CDSConceptoNewRecord
    Left = 296
    Top = 456
    object StringField6: TStringField
      DisplayLabel = 'Concepto'
      FieldName = 'CONCEPTO'
      Size = 30
    end
    object StringField5: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Size = 2
    end
    object IntegerField6: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Required = True
    end
  end
end

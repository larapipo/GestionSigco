object FormDepositosControlados: TFormDepositosControlados
  Left = 0
  Top = 0
  Caption = 'Depositos Controlados'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 329
    Height = 393
    Caption = 'Panel1'
    Padding.Left = 20
    Padding.Top = 20
    Padding.Right = 20
    Padding.Bottom = 20
    TabOrder = 0
    object JvDBGrid1: TJvDBGrid
      Left = 21
      Top = 21
      Width = 287
      Height = 351
      Align = alClient
      DataSource = DSLstDepositos
      DrawingStyle = gdsClassic
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      FixedCols = 2
      PostOnEnterKey = True
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      CanDelete = False
      EditControls = <>
      RowsHeight = 19
      TitleRowHeight = 19
      OnCheckIfBooleanField = JvDBGrid1CheckIfBooleanField
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CENTRALIZA_STOCK'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 36
          Visible = True
        end>
      Delphi2010OptionsMigrated = True
    end
  end
  object QLstDepositos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select id,nombre,centraliza_stock from  depositos')
    Left = 72
    Top = 384
    object QLstDepositosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLstDepositosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object QLstDepositosCENTRALIZA_STOCK: TStringField
      FieldName = 'CENTRALIZA_STOCK'
      Origin = 'CENTRALIZA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object CDSLstDepositos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPLstDepositos'
    AfterPost = CDSLstDepositosAfterPost
    Left = 264
    Top = 384
    object CDSLstDepositosID: TIntegerField
      DisplayLabel = 'Cod'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSLstDepositosNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object CDSLstDepositosCENTRALIZA_STOCK: TStringField
      DisplayLabel = 'Opc'
      FieldName = 'CENTRALIZA_STOCK'
      Origin = 'CENTRALIZA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPLstDepositos: TDataSetProvider
    DataSet = QLstDepositos
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 184
    Top = 384
  end
  object DSLstDepositos: TDataSource
    DataSet = CDSLstDepositos
    Left = 392
    Top = 352
  end
end

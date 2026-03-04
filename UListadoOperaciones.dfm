object FormListaPorOperaciones: TFormListaPorOperaciones
  Left = 398
  Top = 170
  Caption = 'Operaciones Relacionadas'
  ClientHeight = 502
  ClientWidth = 767
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
    Left = 8
    Top = 8
    Width = 745
    Height = 409
    Caption = 'Panel1'
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object JvDBGrid1: TJvDBGrid
      Left = 1
      Top = 41
      Width = 743
      Height = 296
      Align = alTop
      DataSource = DSOp
      Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'TIPO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 41
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLASE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 41
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 309
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEBE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HABER'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 102
          Visible = True
        end>
    end
    object edDebe: TJvCalcEdit
      Left = 496
      Top = 343
      Width = 97
      Height = 21
      DisplayFormat = ',0.00'
      Enabled = False
      ShowButton = False
      TabOrder = 1
      DisabledTextColor = clBlack
      DecimalPlacesAlwaysShown = False
    end
    object edHaber: TJvCalcEdit
      Left = 599
      Top = 343
      Width = 97
      Height = 21
      DisplayFormat = ',0.00'
      Enabled = False
      ShowButton = False
      TabOrder = 2
      DisabledTextColor = clBlack
      DecimalPlacesAlwaysShown = False
    end
    object edSaldo: TJvCalcEdit
      Left = 599
      Top = 378
      Width = 97
      Height = 21
      DisplayFormat = ',0.00'
      Enabled = False
      ShowButton = False
      TabOrder = 3
      DisabledTextColor = clBlack
      DecimalPlacesAlwaysShown = False
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 743
      Height = 40
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 4
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 274
        Height = 25
        Caption = 'Operaciones Relacionadas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object CDSOp: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'numero_op'
        ParamType = ptInput
      end>
    ProviderName = 'DSPOp'
    Left = 544
    Top = 392
    object CDSOpID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object CDSOpTIPO: TStringField
      DisplayLabel = 'Tppo'
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 2
    end
    object CDSOpCLASE: TStringField
      DisplayLabel = 'Clase'
      FieldName = 'CLASE'
      Origin = 'CLASE'
      Size = 2
    end
    object CDSOpFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSOpNUMERO: TStringField
      DisplayLabel = 'Numero'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 13
    end
    object CDSOpDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object CDSOpDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00;-0.00;-'
    end
    object CDSOpHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00;-0.00;-'
    end
  end
  object DSPOp: TDataSetProvider
    DataSet = Qop
    Options = []
    Left = 432
    Top = 400
  end
  object DSOp: TDataSource
    DataSet = CDSOp
    Left = 640
    Top = 400
  end
  object Qop: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from listado_por_nro_op ( :numero_op )')
    Left = 240
    Top = 408
    ParamData = <
      item
        Position = 1
        Name = 'numero_op'
        DataType = ftString
        ParamType = ptInput
      end>
  end
end

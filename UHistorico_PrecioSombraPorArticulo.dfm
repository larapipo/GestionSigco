object FormHistorico_PrecSombra_Art: TFormHistorico_PrecSombra_Art
  Left = 221
  Top = 172
  BorderStyle = bsDialog
  Caption = 'Historial Precio Sombra'
  ClientHeight = 376
  ClientWidth = 691
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 40
    Top = 40
    Width = 593
    Height = 313
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object dbtUsuario: TDBText
      Left = 70
      Top = 280
      Width = 259
      Height = 17
      DataField = 'USUARIO'
      DataSource = DSHistorico
    end
    object Label1: TLabel
      Left = 16
      Top = 280
      Width = 40
      Height = 13
      Caption = 'Usuario:'
    end
    object JvDBGrid1: TJvDBGrid
      Left = 5
      Top = 16
      Width = 585
      Height = 258
      DataSource = DSHistorico
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'FECHA_APLICACION'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha'
          Width = 115
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'COSTO_GRAVADO_OLD'
          Title.Alignment = taCenter
          Title.Caption = 'Costo Grav.Viejo'
          Width = 109
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'COSTO_EXENTO_OLD'
          Title.Alignment = taCenter
          Title.Caption = 'Costo Exe. Viejo'
          Width = 114
          Visible = True
        end
        item
          Color = 10930928
          Expanded = False
          FieldName = 'COSTO_GRAVADO_NEW'
          Title.Alignment = taCenter
          Title.Caption = 'Costo Grav.Nuevo'
          Width = 118
          Visible = True
        end
        item
          Color = 10930928
          Expanded = False
          FieldName = 'COSTO_EXENTO_NEW'
          Title.Alignment = taCenter
          Title.Caption = 'Costo Exe.Nuevo'
          Visible = True
        end>
    end
  end
  object DSHistorico: TDataSource
    DataSet = CDSHistorico
    Left = 456
    Top = 256
  end
  object CDSHistorico: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPHistorico'
    Left = 368
    Top = 248
    object CDSHistoricoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 8
    end
    object CDSHistoricoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object CDSHistoricoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSHistoricoCOSTO_GRAVADO_NEW: TFMTBCDField
      FieldName = 'COSTO_GRAVADO_NEW'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSHistoricoCOSTO_GRAVADO_OLD: TFMTBCDField
      FieldName = 'COSTO_GRAVADO_OLD'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSHistoricoCOSTO_EXENTO_NEW: TFMTBCDField
      FieldName = 'COSTO_EXENTO_NEW'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSHistoricoCOSTO_EXENTO_OLD: TFMTBCDField
      FieldName = 'COSTO_EXENTO_OLD'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSHistoricoFECHA_APLICACION: TSQLTimeStampField
      FieldName = 'FECHA_APLICACION'
    end
  end
  object DSPHistorico: TDataSetProvider
    DataSet = QHistorico
    Left = 264
    Top = 248
  end
  object QHistorico: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from HISTORICO_PRECIO_SOMBRA'
      'where codigo=:codigo'
      'order by fecha_aplicacion desc')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 184
    Top = 248
  end
end

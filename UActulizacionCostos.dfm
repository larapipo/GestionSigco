inherited FormActualizacionCosto: TFormActualizacionCosto
  Left = 160
  Top = 65
  Caption = 'Actualizacion de Costos'
  ClientHeight = 482
  ClientWidth = 607
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 607
    Height = 385
    object Label1: TLabel
      Left = 8
      Top = 230
      Width = 30
      Height = 13
      Caption = 'Marca'
    end
    object Label2: TLabel
      Left = 9
      Top = 271
      Width = 29
      Height = 13
      Caption = 'Rubro'
    end
    object Label3: TLabel
      Left = 8
      Top = 315
      Width = 51
      Height = 13
      Caption = 'Sub Rubro'
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 8
      Top = 246
      Width = 201
      Height = 21
      DropDownCount = 8
      DisplayEmpty = 'Todas las Marcas'
      LookupField = 'MARCA_STK'
      LookupDisplay = 'DESCRIPCION_MARCA'
      LookupSource = DSMarca
      TabOrder = 0
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 11
      Top = 288
      Width = 201
      Height = 21
      DropDownCount = 8
      DisplayEmpty = 'Todas los Rubros'
      LookupField = 'CODIGO_RUBRO'
      LookupDisplay = 'DETALLE_RUBRO'
      LookupSource = DSRubro
      TabOrder = 1
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 11
      Top = 330
      Width = 201
      Height = 21
      DropDownCount = 8
      DisplayEmpty = 'Todas los Sub-Rubros'
      LookupField = 'CODIGO_SUBRUBRO'
      LookupDisplay = 'DETALLE_SUBRUBRO'
      LookupSource = DSSubRubro
      TabOrder = 2
    end
    object wwDBGrid1: TwwDBGrid
      Left = 0
      Top = 0
      Width = 607
      Height = 209
      Selected.Strings = (
        'CODIGO_STK'#9'10'#9'Codigo'
        'DETALLE_STK'#9'46'#9'Detalle'
        'COSTO_TOTAL_STK'#9'12'#9'Costo'
        'FIJACION_PRECIO_TOTAL'#9'12'#9'Pr Grav.'
        'CostoNuevo'#9'11'#9'N.Pre.Grav')
      IniAttributes.Delimiter = ';;'
      TitleColor = clGreen
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alTop
      DataSource = DSBase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 3
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      TitleLines = 1
      TitleButtons = True
      PaintOptions.AlternatingRowColor = 12639424
    end
  end
  inherited ToolBar1: TToolBar
    Top = 385
    Width = 607
    inherited btNuevo: TBitBtn
      Visible = False
    end
    inherited btBorrar: TBitBtn
      Visible = False
    end
  end
  inherited Panel1: TPanel
    Top = 419
    Width = 607
  end
  inherited DSBase: TDataSource
    DataSet = CDSConsultaStock
  end
  inherited QUltimoCodigo: TQuery
    Left = 8
    Top = 424
  end
  object DSPConsultaStock: TDataSetProvider
    DataSet = QConsultaStock
    Constraints = True
    Left = 32
    Top = 40
  end
  object CDSConsultaStock: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'Rubro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'subrubro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'marca'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPConsultaStock'
    Left = 112
    Top = 48
    object CDSConsultaStockCostoNuevo: TFloatField
      DisplayLabel = 'N.Pre.Grav'
      DisplayWidth = 11
      FieldKind = fkInternalCalc
      FieldName = 'CostoNuevo'
    end
  end
  object QConsultaStock: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select s.codigo_stk,s.detalle_stk,s.fijacion_precio_total,'
      's.marca_stk,s.rubro_stk,s.subrubro_stk,s.costo_total_stk'
      'from stock s where s.clase_articulo=3 '
      'order by s.detalle_stk'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 216
    Top = 40
    ParamData = <
      item
        DataType = ftString
        Name = 'Rubro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'subrubro'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'marca'
        ParamType = ptUnknown
      end>
  end
  object DSRubro: TDataSource
    DataSet = QRubro
    Left = 312
    Top = 208
  end
  object DSMarca: TDataSource
    DataSet = QMarca
    Left = 328
    Top = 256
  end
  object QMarca: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select marca_stk,descripcion_Marca from marcas'
      'order by descripcion_marca')
    Left = 408
    Top = 248
  end
  object QSubRubro: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      
        'select codigo_subrubro,detalle_subrubro from subrubros order by ' +
        'detalle_subrubro')
    Left = 408
    Top = 312
  end
  object DSSubRubro: TDataSource
    DataSet = QSubRubro
    Left = 328
    Top = 312
  end
  object QRubro: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      
        'select codigo_rubro,detalle_rubro from rubros order by detalle_r' +
        'ubro')
    Left = 392
    Top = 200
  end
end

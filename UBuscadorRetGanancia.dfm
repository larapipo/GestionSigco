object FormBuscadoRetGanancia: TFormBuscadoRetGanancia
  Left = 312
  Top = 110
  Caption = 'Buscador de Ret.de Ganancia'
  ClientHeight = 552
  ClientWidth = 557
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 16
    Top = 8
    Width = 498
    Height = 297
    Caption = 'Panel1'
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object dbgRet: TDBGrid
      Left = 5
      Top = 24
      Width = 487
      Height = 217
      DataSource = DSRet
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbgRetDblClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FECHA'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 106
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NUMERO_RETENCION'
          Title.Alignment = taCenter
          Title.Caption = 'Numero Ret.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 99
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CODIGO_PROVEEDOR'
          Title.Alignment = taCenter
          Title.Caption = 'Codigo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 65
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'IMPUESTO_RETENIDO'
          Title.Alignment = taCenter
          Title.Caption = 'Imp-Retenido'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 103
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TASA'
          Title.Alignment = taCenter
          Title.Caption = '%'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 76
          Visible = True
        end>
    end
    object BitBtn1: TBitBtn
      Left = 312
      Top = 248
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 392
      Top = 248
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 2
    end
  end
  object DSRet: TDataSource
    DataSet = CDSRet
    Left = 240
    Top = 320
  end
  object ActionList1: TActionList
    Left = 328
    Top = 72
    object Aceptar: TAction
      Caption = '&Aceptar'
      OnExecute = AceptarExecute
    end
    object Cancelar: TAction
      Caption = '&Cancelar'
      OnExecute = CancelarExecute
    end
  end
  object CDSRet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPRet'
    Left = 184
    Top = 312
    object CDSRetFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Required = True
    end
    object CDSRetNUMERO_RETENCION: TStringField
      FieldName = 'NUMERO_RETENCION'
      Required = True
      FixedChar = True
      Size = 14
    end
    object CDSRetCODIGO_PROVEEDOR: TStringField
      FieldName = 'CODIGO_PROVEEDOR'
      Required = True
      Size = 6
    end
    object CDSRetTASA: TFMTBCDField
      FieldName = 'TASA'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSRetIMPUESTO_RETENIDO: TFMTBCDField
      FieldName = 'IMPUESTO_RETENIDO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSRetESTADO: TStringField
      FieldName = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSRetID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object DSPRet: TDataSetProvider
    DataSet = QRet
    Left = 120
    Top = 312
  end
  object QRet: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select r.fecha,r.numero_retencion,r.codigo_proveedor,'
      
        'r.tasa,r.impuesto_retenido,r.estado,r.id from retenciones_gananc' +
        'ia r'
      'where r.estado='#39'P'#39' and r.anulada='#39'N'#39
      'and r.CODIGO_PROVEEDOR=:codigo')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 64
    Top = 312
  end
end

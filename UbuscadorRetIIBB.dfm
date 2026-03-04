object FormBuscadorRetIIBB: TFormBuscadorRetIIBB
  Left = 87
  Top = 95
  Caption = 'Buscador Retenciones de Ing.Brutos'
  ClientHeight = 442
  ClientWidth = 854
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
    Width = 497
    Height = 297
    Caption = 'Panel1'
    TabOrder = 0
    object dbgRet: TDBGrid
      Left = 8
      Top = 24
      Width = 475
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
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NROCPBTE'
          Title.Alignment = taCenter
          Title.Caption = 'Numero Ret.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 99
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'Codigo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 65
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Imp-Retenido'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 103
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TASA_RETENCION'
          Title.Alignment = taCenter
          Title.Caption = '%'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object BitBtn1: TBitBtn
      Left = 312
      Top = 248
      Width = 75
      Height = 25
      Action = Aceptar
      Caption = '&Aceptar'
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 392
      Top = 248
      Width = 75
      Height = 25
      Action = Cancelar
      Caption = '&Cancelar'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 2
    end
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
  object DSRet: TDataSource
    DataSet = CDSRet
    Left = 80
    Top = 272
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
    Left = 56
    Top = 360
    object CDSRetFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSRetID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSRetCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSRetNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSRetDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object CDSRetID_CPBTE_ORIGEN: TIntegerField
      FieldName = 'ID_CPBTE_ORIGEN'
    end
    object CDSRetTIPOCPBTE_ORIGEN: TStringField
      FieldName = 'TIPOCPBTE_ORIGEN'
      Size = 4
    end
    object CDSRetCLASECPBTE_ORIGEN: TStringField
      FieldName = 'CLASECPBTE_ORIGEN'
      Size = 4
    end
    object CDSRetNROCPBTE_ORIGEN: TStringField
      FieldName = 'NROCPBTE_ORIGEN'
      Size = 13
    end
    object CDSRetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSRetTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSRetNETO_GRAVADO: TFMTBCDField
      FieldName = 'NETO_GRAVADO'
      Required = True
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSRetTASA_RETENCION: TFMTBCDField
      FieldName = 'TASA_RETENCION'
      Required = True
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
  end
  object DSPRet: TDataSetProvider
    DataSet = QRet
    Left = 120
    Top = 360
  end
  object QRet: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select c.fecha,c.id,c.codigo,c.nombre,c.direccion,c.id_cpbte_ori' +
        'gen,c.tipocpbte_origen,'
      
        'c.clasecpbte_origen,c.nrocpbte_origen,c.nrocpbte,c.total,c.neto_' +
        'gravado,c.tasa_retencion'
      ' from cpbte_ret_ingbr_cab c where'
      'c.estado='#39'P'#39' and c.codigo=:codigo and c.anulado='#39'N'#39)
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 176
    Top = 360
  end
end

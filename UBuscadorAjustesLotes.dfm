object FormBuscadorAjustesLotes: TFormBuscadorAjustesLotes
  Left = 0
  Top = 0
  Caption = 'Buscador de Ajustes Lotes'
  ClientHeight = 407
  ClientWidth = 712
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
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 712
    Height = 289
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 694
    object dbgAjustes: TDBGrid
      Left = 8
      Top = 8
      Width = 697
      Height = 265
      DataSource = DSAjustes
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHA'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOTE'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRASTOCK'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 289
    Width = 712
    Height = 40
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 694
    object BitBtn1: TBitBtn
      Left = 488
      Top = 6
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 584
      Top = 6
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object DSPAjustes: TDataSetProvider
    DataSet = QAjustes
    UpdateMode = upWhereKeyOnly
    Left = 368
    Top = 352
  end
  object CDSAjustes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPAjustes'
    Left = 464
    Top = 352
    object CDSAjustesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSAjustesID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      Origin = 'ID_LOTE'
      Required = True
    end
    object CDSAjustesCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object CDSAjustesLOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 15
    end
    object CDSAjustesDESPACHO: TStringField
      FieldName = 'DESPACHO'
      Origin = 'DESPACHO'
      Size = 15
    end
    object CDSAjustesFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSAjustesFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
    object CDSAjustesDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object CDSAjustesTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Size = 2
    end
    object CDSAjustesMUESTRASTOCK: TStringField
      DisplayLabel = 'Articulo'
      FieldName = 'MUESTRASTOCK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
    object CDSAjustesMUESTRADEPOSITO: TStringField
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object CDSAjustesENTRA: TFloatField
      FieldName = 'ENTRA'
      Origin = 'ENTRA'
      DisplayFormat = ',0.00;-0.00;-'
    end
    object CDSAjustesSALE: TFloatField
      FieldName = 'SALE'
      Origin = 'SALE'
      DisplayFormat = ',0.00;-0.00;-'
    end
  end
  object DSAjustes: TDataSource
    DataSet = CDSAjustes
    Left = 528
    Top = 240
  end
  object QAjustes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select  a.*,s.detalle_stk as MuestraStock,nombre as MuestraDepos' +
        'ito  from ajuste_lotes a '
      'left join Stock s on s.codigo_stk=a.codigo'
      'left join depositos d on d.id = a.deposito'
      '')
    Left = 280
    Top = 336
  end
end

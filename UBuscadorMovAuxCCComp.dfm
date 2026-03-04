object FormBuscadorMovAuxCCComp: TFormBuscadorMovAuxCCComp
  Left = 0
  Top = 0
  Caption = 'Buscador de Movimientos'
  ClientHeight = 544
  ClientWidth = 762
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pnBase: TPanel
    Left = 0
    Top = 0
    Width = 762
    Height = 441
    Align = alTop
    TabOrder = 0
    object pnPie: TPanel
      Left = 1
      Top = 392
      Width = 760
      Height = 48
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object btCancelar: TBitBtn
        Left = 583
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        Kind = bkCancel
        NumGlyphs = 2
        TabOrder = 0
        OnClick = btCancelarClick
      end
      object btOk: TBitBtn
        Left = 664
        Top = 8
        Width = 75
        Height = 25
        Kind = bkOK
        NumGlyphs = 2
        TabOrder = 1
        OnClick = btOkClick
      end
    end
    object pnCab: TPanel
      Left = 1
      Top = 1
      Width = 760
      Height = 32
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
    end
    object dbgMov: TDBGrid
      Left = 1
      Top = 33
      Width = 760
      Height = 344
      Align = alTop
      DataSource = DSMov
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbgMovDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'FECHA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRATIPO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 206
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRAPROVEEDOR'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
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
          Visible = True
        end>
    end
  end
  object QMov: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select m.*,t.detalle as MuestraTipo,p.nombre as MuestraProveedor' +
        ' from mov_adiccional_cccomp m'
      'left join tipo_adicional_cccomp t on t.id=m.id_tipo'
      'left join poveedor p on p.codigo=m.codigo_prov'
      'order by m.fecha')
    SQLConnection = DMMain_2.SQLConectionMain
    Left = 312
    Top = 480
  end
  object DSPMov: TDataSetProvider
    DataSet = QMov
    Left = 400
    Top = 480
  end
  object CDSMov: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMov'
    Left = 488
    Top = 480
    object CDSMovID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSMovFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
    end
    object CDSMovCODIGO_PROV: TStringField
      DisplayLabel = 'Cod.Prov.'
      FieldName = 'CODIGO_PROV'
      Required = True
      Size = 6
    end
    object CDSMovID_TIPO: TIntegerField
      FieldName = 'ID_TIPO'
      Required = True
    end
    object CDSMovDEBE: TFMTBCDField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSMovHABER: TFMTBCDField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      DisplayFormat = ',0.00'
      Precision = 15
      Size = 3
    end
    object CDSMovID_OP: TIntegerField
      FieldName = 'ID_OP'
    end
    object CDSMovMUESTRATIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'MUESTRATIPO'
      Size = 50
    end
    object CDSMovMUESTRAPROVEEDOR: TStringField
      DisplayLabel = 'Proveedor'
      FieldName = 'MUESTRAPROVEEDOR'
      Size = 35
    end
  end
  object DSMov: TDataSource
    DataSet = CDSMov
    Left = 560
    Top = 480
  end
end

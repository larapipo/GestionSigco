object FormBuscadorPlanillaArmadoProduccion: TFormBuscadorPlanillaArmadoProduccion
  Left = 158
  Top = 141
  BorderStyle = bsSingle
  Caption = 'Planillas Armado de Produccion'
  ClientHeight = 520
  ClientWidth = 769
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
    Width = 769
    Height = 377
    Align = alTop
    Caption = 'pnPrincipal'
    TabOrder = 0
    object TPanel
      Left = 1
      Top = 1
      Width = 767
      Height = 56
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 0
      object rgEsatdo: TRadioGroup
        Left = 560
        Top = -1
        Width = 200
        Height = 51
        Caption = 'Estados'
        ItemIndex = 0
        Items.Strings = (
          'Nuevos'
          'Terminados')
        TabOrder = 0
        OnClick = BuscarExecute
      end
    end
    object pnBot: TPanel
      Left = 1
      Top = 336
      Width = 767
      Height = 40
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 1
      object btOk: TBitBtn
        Left = 665
        Top = 8
        Width = 75
        Height = 25
        Kind = bkOK
        NumGlyphs = 2
        TabOrder = 0
        OnClick = btOkClick
      end
      object btCancelar: TBitBtn
        Left = 584
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        Kind = bkCancel
        NumGlyphs = 2
        TabOrder = 1
        OnClick = btCancelarClick
      end
    end
    object dbgPlanillas: TJvDBGrid
      Left = 2
      Top = 63
      Width = 759
      Height = 258
      DataSource = DSPlanillas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnDblClick = dbgPlanillasDblClick
      TitleButtons = True
      OnTitleBtnClick = dbgPlanillasTitleBtnClick
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
    end
  end
  object CDSPlanillas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'estado'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPlanillas'
    Left = 200
    Top = 360
    object CDSPlanillasFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      DisplayWidth = 12
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object CDSPlanillasNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      DisplayWidth = 15
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSPlanillasCODIGO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object CDSPlanillasDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 40
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
    object CDSPlanillasCODIGOSERIE: TStringField
      DisplayLabel = 'Nro.Serie'
      DisplayWidth = 40
      FieldName = 'CODIGOSERIE'
      Origin = 'CODIGOSERIE'
      Size = 16
    end
    object CDSPlanillasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
  end
  object DSPPlanillas: TDataSetProvider
    DataSet = QPlanillas
    Left = 248
    Top = 352
  end
  object DSPlanillas: TDataSource
    DataSet = CDSPlanillas
    Left = 352
    Top = 368
  end
  object ActionList: TActionList
    Left = 520
    Top = 360
    object Buscar: TAction
      Caption = 'Buscar'
      OnExecute = BuscarExecute
    end
  end
  object QPlanillas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select p.fecha,p.nrocpbte,p.codigo,'
      
        '       s.detalle_stk,p.codigoserie,p.id from planilla_armado_cab' +
        ' p'
      'left join stock s on s.codigo_stk=p.codigo'
      'where p.estado=:estado'
      'order by p.fecha desc')
    Left = 336
    Top = 432
    ParamData = <
      item
        Position = 1
        Name = 'estado'
        DataType = ftString
        ParamType = ptInput
      end>
  end
end

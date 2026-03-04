object FormSeccionCategorias: TFormSeccionCategorias
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Seciones / Categorias'
  ClientHeight = 658
  ClientWidth = 752
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
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 752
    Height = 658
    Align = alClient
    Color = clHighlight
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      752
      658)
    object btAceptar: TBitBtn
      Left = 660
      Top = 613
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btAceptarClick
    end
    object BitBtn2: TBitBtn
      Left = 563
      Top = 613
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
    object mSeleccionados: TMemo
      Left = 6
      Top = 491
      Width = 522
      Height = 127
      Anchors = [akLeft, akRight, akBottom]
      ScrollBars = ssVertical
      TabOrder = 2
    end
    object Button1: TButton
      Left = 631
      Top = 489
      Width = 115
      Height = 25
      Action = LeerSelecionados
      Anchors = [akRight, akBottom]
      TabOrder = 3
    end
    object tvSecciones: TAdvCheckTreeView
      Left = 6
      Top = 6
      Width = 740
      Height = 466
      Align = alTop
      Anchors = [akTop, akRight, akBottom]
      Indent = 19
      TabOrder = 4
      OnNodeCheckedChanged = tvSeccionesNodeCheckedChanged
      Version = '1.0.3.0'
      ExplicitTop = 0
    end
  end
  object CDSSeccion: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DETALLE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'PARENT'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'DSPSeccion'
    StoreDefs = True
    AfterPost = CDSSeccionAfterPost
    AfterDelete = CDSSeccionAfterDelete
    OnNewRecord = CDSSeccionNewRecord
    Left = 200
    Top = 272
    object CDSSeccionID: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSSeccionDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
    object CDSSeccionPARENT: TIntegerField
      FieldName = 'PARENT'
      Origin = 'PARENT'
      Required = True
    end
  end
  object DSPSeccion: TDataSetProvider
    DataSet = QSeccion
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 280
  end
  object DSSeccion: TDataSource
    DataSet = CDSSeccion
    Left = 264
    Top = 272
  end
  object QSeccion: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from  PLU_SECCION where parent=0 '
      'order by parent,id asc')
    Left = 64
    Top = 278
    object QSeccionID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QSeccionDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 50
    end
    object QSeccionPARENT: TIntegerField
      FieldName = 'PARENT'
      Origin = 'PARENT'
      Required = True
    end
  end
  object QMaxID: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max(id) from PLU_SECCION ')
    Left = 64
    Top = 102
  end
  object ActionList1: TActionList
    Left = 376
    Top = 256
    object GenerarTw: TAction
      Caption = 'GenerarTW'
      OnExecute = GenerarTwExecute
    end
    object LeerSelecionados: TAction
      Caption = 'Leer Selecionados'
      OnExecute = LeerSelecionadosExecute
    end
  end
end

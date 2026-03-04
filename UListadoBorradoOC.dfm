inherited FormListadoBorradoOC: TFormListadoBorradoOC
  Caption = 'Borrador de Orden de Compra'
  ClientHeight = 627
  ClientWidth = 655
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 673
  ExplicitHeight = 668
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 655
    Height = 489
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 655
    ExplicitHeight = 489
    object dbgOrdenesDeCompra: TDBGrid
      Left = 0
      Top = 41
      Width = 655
      Height = 407
      Align = alClient
      DataSource = DSBorradoOC
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      PopupMenu = PopupMenu1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbgOrdenesDeCompraDblClick
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 655
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Borrador de Ordenes de Compras'
      Color = clMenuHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
    end
    object Panel3: TPanel
      Left = 0
      Top = 448
      Width = 655
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      Caption = ' '
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 2
    end
  end
  inherited ToolBar1: TToolBar
    Top = 489
    Width = 655
    ExplicitTop = 489
    ExplicitWidth = 655
    inherited btConfirma: TBitBtn
      Visible = False
    end
    inherited btNuevo: TBitBtn
      Visible = False
    end
    inherited btCancelar: TBitBtn
      Visible = False
    end
    inherited btModificar: TBitBtn
      Visible = False
    end
    inherited Pr: TSpeedButton
      Visible = False
    end
    inherited Ne: TSpeedButton
      Visible = False
    end
    inherited btBorrar: TBitBtn
      Visible = False
    end
  end
  inherited Panel1: TPanel
    Top = 519
    Width = 655
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 519
    ExplicitWidth = 655
    inherited sbEstado: TStatusBar
      Width = 493
      ExplicitWidth = 493
    end
  end
  inherited ActionList1: TActionList
    object BorrarOC: TAction
      Caption = 'BorrarOC'
      OnExecute = BorrarOCExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 528
    Top = 65528
  end
  object QBorradorOC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select occ.id_oc,occ.tipocpbte,occ.clasecpbte,occ.nrocpbte,b.fec' +
        'ha_recepcion,occ.codigo,occ.nombre from borrador_ordencompra b'
      ' left join ordencompracab occ on occ.id_oc=b.id_oc'
      ''
      
        'group by occ.id_oc,occ.tipocpbte,occ.clasecpbte,occ.nrocpbte,b.f' +
        'echa_recepcion,occ.codigo,occ.nombre')
    Left = 200
    Top = 488
    ParamData = <
      item
        Position = 1
        Name = 'ID_OC'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPBorradorOC: TDataSetProvider
    DataSet = QBorradorOC
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 288
    Top = 488
  end
  object CDSBorradorOC: TClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_OC'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBorradorOC'
    Left = 360
    Top = 488
    object CDSBorradorOCID_OC: TIntegerField
      DisplayLabel = 'Id'
      DisplayWidth = 6
      FieldName = 'ID_OC'
      Origin = 'ID_OC'
    end
    object CDSBorradorOCTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      DisplayWidth = 4
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSBorradorOCCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      DisplayWidth = 5
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSBorradorOCNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      DisplayWidth = 14
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      EditMask = 'a-9999-99999999;0'
      Size = 13
    end
    object CDSBorradorOCFECHA_RECEPCION: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      DisplayWidth = 10
      FieldName = 'FECHA_RECEPCION'
      Origin = 'FECHA_RECEPCION'
    end
    object CDSBorradorOCCODIGO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object CDSBorradorOCNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 42
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
  end
  object DSBorradoOC: TDataSource
    DataSet = CDSBorradorOC
    Left = 456
    Top = 488
  end
  object PopupMenu1: TPopupMenu
    Left = 512
    Top = 200
    object BorrarOC1: TMenuItem
      Action = BorrarOC
    end
  end
  object QBorrar: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from borrador_ordencompra b where b.id_oc = :id')
    Left = 424
    Top = 552
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end>
  end
end

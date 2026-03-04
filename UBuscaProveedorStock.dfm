object FormBuscaProveedorStock: TFormBuscaProveedorStock
  Left = 259
  Top = 193
  Caption = 'Buscador Proveedor de Stock'
  ClientHeight = 532
  ClientWidth = 665
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 13
  object pnPx: TPanel
    Left = 0
    Top = 0
    Width = 665
    Height = 532
    Align = alClient
    TabOrder = 0
    DesignSize = (
      665
      532)
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 663
      Height = 464
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = DSProveedor
      DrawingStyle = gdsGradient
      FixedColor = clBlue
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = btAceptarClick
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO_PROV'
          Title.Alignment = taCenter
          Title.Caption = 'Codigo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRAPROVEEDOR'
          Title.Alignment = taCenter
          Title.Caption = 'Nombre'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 347
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECIO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ULTIMA_ACTUALIZACION'
          Title.Alignment = taCenter
          Title.Caption = 'Ult..Fecha'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 94
          Visible = True
        end>
    end
    object btCancelar: TBitBtn
      Left = 463
      Top = 487
      Width = 75
      Height = 25
      Anchors = [akLeft, akBottom]
      Cancel = True
      Caption = 'Cancel'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btCancelarClick
    end
    object btAceptar: TBitBtn
      Left = 544
      Top = 487
      Width = 75
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = '&Ok'
      Glyph.Data = {
        F2010000424DF201000000000000760000002800000024000000130000000100
        0400000000007C01000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
        3333333333388F3333333333000033334224333333333333338338F333333333
        0000333422224333333333333833338F33333333000033422222243333333333
        83333338F3333333000034222A22224333333338F33F33338F33333300003222
        A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
        38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
        2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
        0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
        333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
        33333A2224A2233333333338F338F83300003333333333A2224A333333333333
        8F338F33000033333333333A222433333333333338F338F30000333333333333
        A224333333333333338F38F300003333333333333A223333333333333338F8F3
        000033333333333333A3333333333333333383330000}
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btAceptarClick
    end
    object JvDBFindEdit1: TJvDBFindEdit
      Left = 80
      Top = 489
      Width = 377
      Height = 21
      Anchors = [akLeft, akBottom]
      TabOrder = 3
      Text = ''
      TextHint = 'Buscar por Nombre'
      DataField = 'MUESTRAPROVEEDOR'
      DataSource = DSProveedor
      FindStyle = fsFilter
      FindMode = fmAnyPos
      HideSelection = False
    end
  end
  object DSProveedor: TDataSource
    DataSet = CDSProveedor
    Left = 435
    Top = 119
  end
  object CDSProveedor: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPProveedor'
    Left = 336
    Top = 120
    object CDSProveedorCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CDSProveedorCODIGO_PROV: TStringField
      FieldName = 'CODIGO_PROV'
      Origin = 'CODIGO_PROV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSProveedorPRECIO: TFloatField
      DisplayLabel = 'Precio'
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      DisplayFormat = ',0.00'
    end
    object CDSProveedorMUESTRAPROVEEDOR: TStringField
      FieldName = 'MUESTRAPROVEEDOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object CDSProveedorULTIMA_ACTUALIZACION: TSQLTimeStampField
      FieldName = 'ULTIMA_ACTUALIZACION'
      Origin = 'ULTIMA_ACTUALIZACION'
    end
  end
  object DSPProveedor: TDataSetProvider
    DataSet = QProveedor
    Options = []
    Left = 224
    Top = 120
  end
  object CDSProveedorLista: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPProveedorLista'
    Left = 336
    Top = 248
    object CDSProveedorListaCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object CDSProveedorListaCODIGO_PROV: TStringField
      FieldName = 'CODIGO_PROV'
      Origin = 'CODIGO_PROVEE'
      ProviderFlags = []
      Size = 6
    end
    object CDSProveedorListaPRECIO: TFloatField
      DisplayLabel = 'Precio'
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSProveedorListaMUESTRAPROVEEDOR: TStringField
      FieldName = 'MUESTRAPROVEEDOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 45
    end
    object CDSProveedorListaULTIMA_ACTUALIZACION: TSQLTimeStampField
      FieldName = 'ULTIMA_ACTUALIZACION'
      Origin = 'FECHA'
      ProviderFlags = []
    end
  end
  object DSPProveedorLista: TDataSetProvider
    DataSet = QProveedorLista
    Options = []
    Left = 224
    Top = 248
  end
  object QProveedor: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select r.codigo_stk,r.codigo_prov,r.precio, p.nombre as MuestraP' +
        'roveedor,'
      'r.ultima_actualizacion from relacion_articuloprovee r'
      'left join poveedor p on p.codigo=r.codigo_prov'
      'where r.codigo_stk=:codigo'
      '')
    Left = 136
    Top = 120
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QProveedorLista: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select d.codigo,c.codigo_provee as codigo_prov,d.precio, c.nombr' +
        'e as MuestraProveedor,'
      
        'c.fecha as Ultima_actualizacion from lista_precios_prov_detalle ' +
        'd'
      'left join lista_precios_prov_cabecera c on c.id=d.id_cab'
      'where d.codigo=:codigo'
      '')
    Left = 128
    Top = 248
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
end

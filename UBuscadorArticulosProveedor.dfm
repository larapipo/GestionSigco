object FormBuscadorArtiProv: TFormBuscadorArtiProv
  Left = 397
  Top = 69
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Buscador de Articulos Proveedor'
  ClientHeight = 678
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 632
    Height = 489
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object JvGradient1: TJvGradient
      Left = 1
      Top = 429
      Width = 630
      Height = 41
      Align = alBottom
      Style = grVertical
      StartColor = clWhite
      EndColor = clGradientInactiveCaption
      ExplicitLeft = 0
      ExplicitTop = 319
      ExplicitWidth = 609
    end
    object Label4: TLabel
      Left = 7
      Top = 443
      Width = 103
      Height = 13
      Caption = 'Registro Encontrados'
    end
    object Label8: TLabel
      Left = 3
      Top = 406
      Width = 78
      Height = 13
      Caption = 'Detalle Adicional'
    end
    object DBText1: TDBText
      Left = 88
      Top = 406
      Width = 645
      Height = 17
      DataField = 'DETALLE_STK_ADICIONAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBStatusLabel1: TJvDBStatusLabel
      Left = 145
      Top = 443
      Width = 102
      Height = 13
      Style = lsRecordNo
      CalcRecCount = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowPos = spLeftTop
      Transparent = True
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 630
      Height = 136
      Align = alTop
      Color = clInactiveCaptionText
      ParentBackground = False
      TabOrder = 0
      object JvGradient2: TJvGradient
        Left = 1
        Top = 1
        Width = 628
        Height = 134
        Style = grVertical
        StartColor = clWhite
        EndColor = clGradientInactiveCaption
        ExplicitLeft = 648
        ExplicitTop = 80
        ExplicitWidth = 100
        ExplicitHeight = 41
      end
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 99
        Height = 16
        Caption = 'Dato a Buscar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 405
        Top = 1
        Width = 69
        Height = 13
        Caption = 'Lista de Precio'
      end
      object pnDatos: TPanel
        Left = 6
        Top = 49
        Width = 531
        Height = 76
        Color = clInactiveCaptionText
        Enabled = False
        ParentBackground = False
        TabOrder = 1
        object JvGradient3: TJvGradient
          Left = 1
          Top = 1
          Width = 529
          Height = 74
          Style = grVertical
          StartColor = clGradientInactiveCaption
          EndColor = clWhite
          ExplicitLeft = 464
          ExplicitTop = 24
          ExplicitWidth = 100
          ExplicitHeight = 41
        end
        object Label7: TLabel
          Left = 6
          Top = 6
          Width = 29
          Height = 13
          Caption = 'Marca'
          FocusControl = DBEdit3
        end
        object Label3: TLabel
          Left = 6
          Top = 29
          Width = 29
          Height = 13
          Caption = 'Rubro'
          FocusControl = DBEdit1
        end
        object Label6: TLabel
          Left = 6
          Top = 52
          Width = 50
          Height = 13
          Caption = 'Sub Rubro'
        end
        object DBEdit3: TDBEdit
          Left = 63
          Top = 3
          Width = 329
          Height = 21
          Color = clInfoBk
          DataField = 'DESCRIPCION_MARCA'
          TabOrder = 0
        end
        object DBEdit1: TDBEdit
          Left = 63
          Top = 25
          Width = 329
          Height = 21
          Color = clInfoBk
          DataField = 'DETALLE_RUBRO'
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 63
          Top = 47
          Width = 458
          Height = 21
          Color = clInfoBk
          DataField = 'DETALLE_SUBRUBRO'
          TabOrder = 2
        end
      end
      object edDato: TEdit
        Left = 7
        Top = 24
        Width = 391
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        OnClick = edDatoClick
        OnKeyPress = edDatoKeyPress
      end
    end
    object dbgResultado: TDBGrid
      Left = 1
      Top = 137
      Width = 630
      Height = 263
      Align = alTop
      DataSource = DSStock
      DrawingStyle = gdsGradient
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = AceptarExecute
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO_STK'
          Title.Alignment = taCenter
          Title.Color = clBlue
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE_STK'
          Title.Alignment = taCenter
          Title.Color = clBlue
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 415
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SIGNO'
          Title.Alignment = taCenter
          Title.Caption = 'Md'
          Title.Color = clBlue
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 30
          Visible = True
        end
        item
          Color = clWhite
          Expanded = False
          FieldName = 'FIJACION_PRECIO_TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Color = clBlue
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 79
          Visible = True
        end>
    end
    object btCancelar: TBitBtn
      Left = 438
      Top = 439
      Width = 75
      Height = 25
      Action = Cancelar
      Cancel = True
      Caption = 'Cancelar'
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
      ModalResult = 2
      NumGlyphs = 2
      TabOrder = 2
    end
    object btAceptar: TBitBtn
      Left = 519
      Top = 439
      Width = 75
      Height = 25
      Action = Aceptar
      Caption = 'Aceptar'
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
      ModalResult = 8
      NumGlyphs = 2
      TabOrder = 3
    end
    object Panel2: TPanel
      Left = 1
      Top = 470
      Width = 630
      Height = 18
      Align = alBottom
      TabOrder = 4
    end
  end
  object DSStock: TDataSource
    DataSet = CDSStock
    Left = 368
    Top = 208
  end
  object ActionList1: TActionList
    Left = 432
    Top = 248
    object Buscar: TAction
      Caption = 'Buscar'
      OnExecute = BuscarExecute
    end
    object Aceptar: TAction
      Caption = 'Aceptar'
      OnExecute = AceptarExecute
    end
    object Cancelar: TAction
      Caption = 'Cancelar'
      OnExecute = CancelarExecute
    end
  end
  object CDSStock: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'dato'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPStock'
    Left = 272
    Top = 256
    object CDSStockCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CDSStockDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSStockMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Origin = 'MARCA_STK'
      Size = 4
    end
    object CDSStockDETALLE_STK_ADICIONAL: TStringField
      FieldName = 'DETALLE_STK_ADICIONAL'
      Origin = 'DETALLE_STK_ADICIONAL'
      Size = 200
    end
    object CDSStockRUBRO_STK: TStringField
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      Required = True
      Size = 3
    end
    object CDSStockSUBRUBRO_STK: TStringField
      FieldName = 'SUBRUBRO_STK'
      Origin = 'SUBRUBRO_STK'
      Required = True
      Size = 5
    end
    object CDSStockUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object CDSStockDESCRIPCION_MARCA: TStringField
      FieldName = 'DESCRIPCION_MARCA'
      Origin = 'DESCRIPCION_MARCA'
      ProviderFlags = []
      Size = 25
    end
    object CDSStockDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      ProviderFlags = []
      Size = 35
    end
    object CDSStockDETALLE_SUBRUBRO: TStringField
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      ProviderFlags = []
      Size = 45
    end
    object CDSStockMONEDA: TIntegerField
      DisplayLabel = 'Md'
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object CDSStockSIGNO: TStringField
      FieldName = 'SIGNO'
      Origin = 'SIGNO'
      ProviderFlags = []
      Size = 5
    end
    object CDSStockCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSStockFIJACION_PRECIO_TOTAL: TFloatField
      DisplayLabel = 'Precio'
      FieldName = 'FIJACION_PRECIO_TOTAL'
      Origin = 'FIJACION_PRECIO_TOTAL'
      Required = True
      DisplayFormat = ',0.00'
    end
  end
  object DSPStock: TDataSetProvider
    DataSet = QStk
    Options = [poAllowCommandText]
    Left = 232
    Top = 256
  end
  object QStk: TFDQuery
    ObjectView = False
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.codigo_stk,s.detalle_stk,s.marca_stk,s.detalle_stk_adic' +
        'ional,'
      's.rubro_stk,s.subrubro_stk, s.fijacion_precio_total,'
      's.unidad,m.descripcion_marca,r.detalle_rubro,'
      'sr.detalle_subrubro,s.moneda,mon.cotizacion,mon.signo'
      'from stock s'
      'left join marcas m on m.marca_stk=s.marca_stk'
      'left join rubros r on r.codigo_rubro=s.rubro_stk'
      'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk'
      'left join gravamen grav on grav.codigo=s.tasa_iva'
      'left join monedas mon on mon.id=s.moneda'
      'where (s.detalle_stk containing :dato) and'
      
        '(exists (select rel.codigo_stk from relacion_articuloprovee rel ' +
        'where rel.codigo_prov=:codigo and rel.codigo_stk=s.codigo_stk))'
      'order by s.detalle_stk')
    Left = 160
    Top = 248
    ParamData = <
      item
        Position = 1
        Name = 'dato'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
end

object formDetalleCompraArticulo: TformDetalleCompraArticulo
  Left = 293
  Top = 154
  BorderIcons = [biSystemMenu]
  Caption = 'Detalle de Compra de Art'#237'culo'
  ClientHeight = 579
  ClientWidth = 529
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 529
    Height = 505
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object JvGradient3: TJvGradient
      Left = 1
      Top = 304
      Width = 527
      Height = 28
      Align = alTop
      Style = grVertical
      StartColor = clWhite
      EndColor = clMenu
      ExplicitLeft = 2
      ExplicitTop = 305
      ExplicitWidth = 521
    end
    object JvGradient2: TJvGradient
      Left = 1
      Top = 1
      Width = 527
      Height = 24
      Align = alTop
      Style = grVertical
      StartColor = clWhite
      EndColor = clGradientInactiveCaption
      ExplicitLeft = 0
      ExplicitTop = 2
      ExplicitWidth = 521
    end
    object JvGradient1: TJvGradient
      Left = 1
      Top = 154
      Width = 527
      Height = 20
      Align = alTop
      Style = grVertical
      StartColor = clWhite
      EndColor = clBtnFace
      ExplicitTop = 155
      ExplicitWidth = 520
    end
    object Label1: TLabel
      Left = 5
      Top = 7
      Width = 258
      Height = 13
      Caption = 'Detalles de las Ultimas compras de Este Item.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 5
      Top = 158
      Width = 163
      Height = 13
      Caption = 'Compras con Otro Proveedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 5
      Top = 311
      Width = 168
      Height = 13
      Caption = 'Detalle desde Lista de Precios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbgCompras: TJvDBGrid
      Left = 1
      Top = 25
      Width = 527
      Height = 129
      Align = alTop
      Color = clWhite
      DataSource = DSArti
      DrawingStyle = gdsClassic
      Options = [dgTitles, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleButtons = True
      OnTitleBtnClick = dbgComprasTitleBtnClick
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 16
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'FECHACOMPRA'
          Title.Alignment = taCenter
          Title.Caption = 'F.de Compra'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPOCPBTE'
          Title.Alignment = taCenter
          Title.Caption = 'Tp.'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NROCPBTE'
          Title.Alignment = taCenter
          Title.Caption = 'Nro.Cpbte'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COSTO_TOTAL'
          Title.Alignment = taCenter
          Title.Caption = '$ Unitario'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CANTIDAD'
          Title.Alignment = taCenter
          Title.Caption = 'Cantidad'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Alignment = taCenter
          Title.Caption = '$ Total'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clYellow
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 84
          Visible = True
        end>
    end
    object btSalir: TBitBtn
      Left = 431
      Top = 466
      Width = 75
      Height = 25
      Caption = '&Salir'
      Glyph.Data = {
        56070000424D5607000000000000360400002800000028000000140000000100
        0800000000002003000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A600000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030707070707
        070707070707070707070707070703FFFFFFFFFFFFFFFFFFFFFFFF0303030303
        03FFF8F8F8F8F8F8F8F8F8F8F8F8FF07FF07FF07F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8030303030303F8F8F8F8F8F8F8F8F8F8F8F8F80707FF07FF07F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8FF030303FFFFF8F8F80404040404040000F8F8F8FFFFFF
        040404040404F8F8F8F8F8F8F8F8F8F8F8030303F8F8F8F8F803030303030304
        FD05000007FFFFFF0403030303030303030303F8FFF8F8F8FF030303F8FF0303
        030303030303030405FD0500FFFFFFFF0403030303030303030303F8F807F8F8
        FF030303F8FF03030303030303030304FD05FD00FFFFFFFF0403030303030303
        030303F8FFF807F8FF030303F8FF0303030303030303030405FD0500FFFEFFFE
        0403030303030303030303F8F807F8F8FF030303F8FF03030303030303030304
        FD05FD00FFFFFFFF0403030303030303030303F8FFF807F8FF030303F8FF0303
        030303030303030405FD0500FFFEFFFE0403030303030303030303F8F807F8F8
        FF030303F8FF03030303030303030304FD05FD00FFFFFFFF0403030303030303
        030303F8FFF807F8FF030303F8FF0303030303030303030405FD0500FFFEFFFE
        0403030303030303030303F8F807F8F8FF030303F8FF03030303030303030304
        FD05FD00FEFFFEFF0403030303030303030303F8FFF807F8FF030303F8FF0303
        030303030303030405FD0500FFFEFFFE0403030303030303030303F8F807F8F8
        FF030303F8FF03030303030303030304FD05FD00FEFFFEFF0403030303030303
        030303F8FFF8FFF8FFFFFFFFF8FF030303030303030303040404040404040404
        0403030303030303030303F8F8F8F8F8F8F8F8F8F80303030303030303030303
        03030303030303030303030303030303030303030303FFFFFFFFFFFF03030303
        0303030303030303030000000000000303030303030303030303030303F8F8F8
        F8F8F8FF0303030303030303030303030300FAFAFAFA00030303030303030303
        0303030303F8FFFFFFFFF8FF0303030303030303030303030300000000000003
        03030303030303030303030303F8F8F8F8F8F803030303030303}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btSalirClick
    end
    object dbgProveedores: TJvDBGrid
      Left = 1
      Top = 174
      Width = 527
      Height = 130
      Align = alTop
      Color = clWhite
      DataSource = DSOtroProveedor
      DrawingStyle = gdsClassic
      Options = [dgTitles, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleButtons = True
      OnTitleBtnClick = dbgComprasTitleBtnClick
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 16
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'RAZON_SOCIAL'
          Title.Alignment = taCenter
          Title.Caption = 'Proveedor'
          Title.Color = clMaroon
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 233
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COSTO_BRUTO'
          Title.Alignment = taCenter
          Title.Caption = '$ Bruto'
          Title.Color = clMaroon
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COSTO_NETO'
          Title.Alignment = taCenter
          Title.Caption = '$ Neto'
          Title.Color = clMaroon
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ULTIMA_COMPRA'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha'
          Title.Color = clMaroon
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 88
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 1
      Top = 332
      Width = 527
      Height = 118
      Align = alTop
      Enabled = False
      TabOrder = 3
      object Label5: TLabel
        Left = 7
        Top = 8
        Width = 32
        Height = 13
        Caption = 'Fecha '
        FocusControl = DBEdit3
      end
      object Label3: TLabel
        Left = 121
        Top = 8
        Width = 86
        Height = 13
        Caption = 'Codigo Proveedor'
        FocusControl = DBEdit1
      end
      object Label7: TLabel
        Left = 7
        Top = 54
        Width = 67
        Height = 13
        Caption = 'Bonificaciones'
        FocusControl = DBEdit5
      end
      object Label4: TLabel
        Left = 372
        Top = 54
        Width = 29
        Height = 13
        Caption = 'Precio'
        FocusControl = DBEdit2
      end
      object Label6: TLabel
        Left = 372
        Top = 8
        Width = 46
        Height = 13
        Caption = 'Lista Nro.'
        FocusControl = DBEdit4
      end
      object DBEdit3: TDBEdit
        Left = 7
        Top = 27
        Width = 87
        Height = 21
        DataField = 'FECHA'
        DataSource = DSListaProvee
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 121
        Top = 27
        Width = 108
        Height = 21
        DataField = 'CODIGO_PROVEEDOR'
        DataSource = DSListaProvee
        TabOrder = 1
      end
      object DBEdit5: TDBEdit
        Left = 7
        Top = 73
        Width = 247
        Height = 21
        DataSource = DSListaProvee
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 371
        Top = 27
        Width = 134
        Height = 21
        DataField = 'PRECIO'
        DataSource = DSListaProvee
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 371
        Top = 73
        Width = 134
        Height = 21
        DataField = 'LISTA_NRO'
        DataSource = DSListaProvee
        TabOrder = 4
      end
    end
  end
  object DSArti: TDataSource
    DataSet = CDSArti
    Left = 216
    Top = 104
  end
  object CDSArti: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'TIPOCPBTE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'NROCPBTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'FECHACOMPRA'
        Attributes = [faRequired]
        DataType = ftTimeStamp
      end
      item
        Name = 'CODIGOARTICULO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'DETALLE'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'CANTIDAD'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'COSTO_TOTAL'
        DataType = ftFloat
      end
      item
        Name = 'RAZONSOCIAL'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 35
      end
      item
        Name = 'CODIGO'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'ID_CABFAC'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'FECHACOMPRA'
        Fields = 'FECHACOMPRA'
        Options = [ixDescending]
      end
      item
        Name = 'NROCPBTE'
        Fields = 'NROCPBTE'
        Options = [ixDescending]
      end
      item
        Name = 'UNITARIO_TOTAL'
        Fields = 'UNITARIO_TOTAL'
      end
      item
        Name = 'COSTO_TOTAL'
        Fields = 'COSTO_TOTAL'
      end>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigoProvee'
        ParamType = ptInput
      end>
    ProviderName = 'DSPArti'
    StoreDefs = True
    Left = 424
    Top = 96
    object CDSArtiTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      FixedChar = True
      Size = 2
    end
    object CDSArtiNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSArtiCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Size = 8
    end
    object CDSArtiDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSArtiRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSArtiCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      Size = 6
    end
    object CDSArtiID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      Origin = 'ID_CABFAC'
    end
    object CDSArtiFECHACOMPRA: TSQLTimeStampField
      FieldName = 'FECHACOMPRA'
      Origin = 'FECHACOMPRA'
      Required = True
    end
    object CDSArtiCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSArtiTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
    end
    object CDSArtiCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      Required = True
      DisplayFormat = ',0.00'
    end
  end
  object DSPArti: TDataSetProvider
    DataSet = QArti
    Options = []
    Left = 360
    Top = 88
  end
  object DSOtroProveedor: TDataSource
    DataSet = CDSOtroProveedor
    Left = 128
    Top = 224
  end
  object DSListaProvee: TDataSource
    DataSet = QListaProvee
    Left = 184
    Top = 464
  end
  object CDSOtroProveedor: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigoStk'
        ParamType = ptInput
      end>
    ProviderName = 'DSPOtroProveedor'
    Left = 208
    Top = 224
    object CDSOtroProveedorRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSOtroProveedorNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSOtroProveedorCLASE_CPBTE: TStringField
      FieldName = 'CLASE_CPBTE'
      Origin = 'CLASE_CPBTE'
      Size = 2
    end
    object CDSOtroProveedorULTIMA_COMPRA: TSQLTimeStampField
      FieldName = 'ULTIMA_COMPRA'
      Origin = 'ULTIMA_COMPRA'
    end
    object CDSOtroProveedorCOSTO_BRUTO: TFloatField
      FieldName = 'COSTO_BRUTO'
      Origin = 'COSTO_BRUTO'
      DisplayFormat = ',0.00'
    end
    object CDSOtroProveedorCOSTO_NETO: TFloatField
      FieldName = 'COSTO_NETO'
      Origin = 'COSTO_NETO'
      DisplayFormat = ',0.00'
    end
  end
  object DSPOtroProveedor: TDataSetProvider
    DataSet = QOtroProveedor
    Options = []
    Left = 296
    Top = 224
  end
  object QArti: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.tipocpbte,d.nrocpbte,d.fechacompra,d.codigoarticulo,'
      '       d.detalle,d.total,d.cantidad, d.costo_total,'
      '          c.razonsocial,c.codigo,d.id_cabfac from FcCompDet D'
      'left join FcCompCab C on c.id_fc= d.id_cabFac'
      
        'where d.tipocpbte in ('#39'FO'#39','#39'FC'#39') and d.codigoarticulo=:codigo an' +
        'd c.codigo=:codigoProvee'
      'order By d.fechaCompra,d.Detalle')
    Left = 288
    Top = 104
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'codigoProvee'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QOtroProveedor: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select pr.razon_social,p.costo_bruto,p.costo_neto,p.ultima_compr' +
        'a,p.nrocpbte,p.clase_cpbte from proveestock p'
      ' left join poveedor pr on pr.codigo=p.codigo_proveedor'
      ' where p.codigo_stk=:codigoStk '
      ' order by p.ultima_compra desc')
    Left = 384
    Top = 232
    ParamData = <
      item
        Position = 1
        Name = 'codigoStk'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QListaProvee: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select lp.*,lpc.* from lista_precios_prov_detalle lp'
      'left join lista_precios_prov_cabecera lpc on lpc.id=lp.id_cab'
      'where lp.codigo=:codigo and lpc.codigo_provee=:provee')
    Left = 96
    Top = 456
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end
      item
        Name = 'PROVEE'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end>
    object QListaProveeID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QListaProveeID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QListaProveeCODIGO_PROVEEDOR: TStringField
      FieldName = 'CODIGO_PROVEEDOR'
      Origin = 'CODIGO_PROVEEDOR'
      Size = 15
    end
    object QListaProveeCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object QListaProveeDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QListaProveePRECIO_LISTA: TFloatField
      FieldName = 'PRECIO_LISTA'
      Origin = 'PRECIO_LISTA'
      Required = True
    end
    object QListaProveeDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      Required = True
    end
    object QListaProveePRECIO: TFloatField
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      Required = True
    end
    object QListaProveeRUBRO: TStringField
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
      Size = 3
    end
    object QListaProveeSUBRUBRO: TStringField
      FieldName = 'SUBRUBRO'
      Origin = 'SUBRUBRO'
      Size = 5
    end
    object QListaProveeMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 4
    end
    object QListaProveeCODIGOBARRA: TStringField
      FieldName = 'CODIGOBARRA'
      Origin = 'CODIGOBARRA'
      Size = 50
    end
    object QListaProveeDETALLE_ADICIONAL: TStringField
      FieldName = 'DETALLE_ADICIONAL'
      Origin = 'DETALLE_ADICIONAL'
      Size = 300
    end
    object QListaProveeFECHA_ACTUALIZ: TSQLTimeStampField
      FieldName = 'FECHA_ACTUALIZ'
      Origin = 'FECHA_ACTUALIZ'
    end
    object QListaProveeID_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_1'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object QListaProveeCODIGO_PROVEE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_PROVEE'
      Origin = 'CODIGO_PROVEE'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object QListaProveeNOMBRE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object QListaProveeFECHA: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'FECHA'
      Origin = 'FECHA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QListaProveeOBS: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'OBS'
      Origin = 'OBS'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
    end
    object QListaProveeLISTA_NRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LISTA_NRO'
      Origin = 'LISTA_NRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
  end
end

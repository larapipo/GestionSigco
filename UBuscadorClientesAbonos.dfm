object FormBuscadorClientesAbonados: TFormBuscadorClientesAbonados
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Buscado Clientes Abonados'
  ClientHeight = 547
  ClientWidth = 996
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
  OnShow = FormShow
  TextHeight = 13
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 996
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 137
      Top = 3
      Width = 37
      Height = 13
      Caption = 'Nombre'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 505
      Top = 3
      Width = 43
      Height = 13
      Caption = 'Direccion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 17
      Top = 3
      Width = 33
      Height = 13
      Caption = 'Codigo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edNombre: TJvDBFindEdit
      Left = 137
      Top = 22
      Width = 362
      Height = 21
      TabOrder = 0
      Text = ''
      OnKeyDown = edNombreKeyDown
      DataField = 'NOMBRE'
      DataSource = DSClientes
      FindStyle = fsFilter
      FindMode = fmAnyPos
    end
    object edDireccio: TJvDBFindEdit
      Left = 505
      Top = 22
      Width = 362
      Height = 21
      TabOrder = 1
      Text = ''
      OnKeyDown = edDireccioKeyDown
      DataField = 'DIRECCION_COMERCIAL'
      DataSource = DSClientes
      FindStyle = fsFilter
      FindMode = fmAnyPos
    end
    object edCodigo: TJvDBFindEdit
      Left = 17
      Top = 22
      Width = 114
      Height = 21
      TabOrder = 2
      Text = ''
      OnKeyDown = edCodigoKeyDown
      DataField = 'CODIGO'
      DataSource = DSClientes
      FindStyle = fsFilter
      FindMode = fmAnyPos
    end
  end
  object pnCuerpo: TPanel
    Left = 0
    Top = 49
    Width = 996
    Height = 360
    Align = alTop
    TabOrder = 1
    object dbgCupones: TcxGrid
      Left = 1
      Top = 1
      Width = 994
      Height = 336
      Align = alTop
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object dbgCuponesDBTableView1: TcxGridDBTableView
        OnDblClick = dbgCuponesDBTableView1DblClick
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = dbgCuponesDBTableView1CustomDrawCell
        DataController.DataSource = DSClientes
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.NoDataToDisplayInfoText = 'Sin Datos'
        OptionsView.GroupByBox = False
        object dbgCuponesDBTableView1CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
          HeaderAlignmentHorz = taCenter
          Width = 52
        end
        object dbgCuponesDBTableView1NOMBRE: TcxGridDBColumn
          DataBinding.FieldName = 'NOMBRE'
          HeaderAlignmentHorz = taCenter
        end
        object dbgCuponesDBTableView1RAZON_SOCIAL: TcxGridDBColumn
          DataBinding.FieldName = 'RAZON_SOCIAL'
          HeaderAlignmentHorz = taCenter
        end
        object dbgCuponesDBTableView1DIRECCION_COMERCIAL: TcxGridDBColumn
          DataBinding.FieldName = 'DIRECCION_COMERCIAL'
          HeaderAlignmentHorz = taCenter
        end
        object dbgCuponesDBTableView1LOCALIDAD: TcxGridDBColumn
          DataBinding.FieldName = 'LOCALIDAD'
          HeaderAlignmentHorz = taCenter
        end
        object dbgCuponesDBTableView1CPOSTAL: TcxGridDBColumn
          DataBinding.FieldName = 'CPOSTAL'
          HeaderAlignmentHorz = taCenter
        end
        object dbgCuponesDBTableView1TELEFONO_COMERCIAL_1: TcxGridDBColumn
          DataBinding.FieldName = 'TELEFONO_COMERCIAL_1'
          HeaderAlignmentHorz = taCenter
        end
        object dbgCuponesDBTableView1TELEFONO_COMERCIAL_2: TcxGridDBColumn
          DataBinding.FieldName = 'TELEFONO_COMERCIAL_2'
          HeaderAlignmentHorz = taCenter
        end
      end
      object dbgCuponesLevel1: TcxGridLevel
        GridView = dbgCuponesDBTableView1
      end
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 409
    Width = 996
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 2
    object btOk: TBitBtn
      Left = 880
      Top = 6
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btOkClick
    end
    object BitBtn2: TBitBtn
      Left = 792
      Top = 6
      Width = 75
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object CDSClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPClientes'
    Left = 240
    Top = 424
    object CDSClientesCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object CDSClientesNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
    object CDSClientesRAZON_SOCIAL: TStringField
      DisplayLabel = 'Razon Social'
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSClientesDIRECCION_COMERCIAL: TStringField
      DisplayLabel = 'Direccion'
      FieldName = 'DIRECCION_COMERCIAL'
      Origin = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object CDSClientesLOCALIDAD: TStringField
      DisplayLabel = 'Localidad'
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object CDSClientesCPOSTAL: TStringField
      DisplayLabel = 'C.Postal'
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object CDSClientesTELEFONO_COMERCIAL_1: TStringField
      DisplayLabel = 'Telefono 1'
      FieldName = 'TELEFONO_COMERCIAL_1'
      Origin = 'TELEFONO_COMERCIAL_1'
      Size = 10
    end
    object CDSClientesTELEFONO_COMERCIAL_2: TStringField
      DisplayLabel = 'Telefono 2'
      FieldName = 'TELEFONO_COMERCIAL_2'
      Origin = 'TELEFONO_COMERCIAL_2'
      Size = 10
    end
    object CDSClientesZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'ZONA'
    end
    object CDSClientesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object CDSClientesVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 6
    end
    object CDSClientesCOBRADOR: TStringField
      FieldName = 'COBRADOR'
      Origin = 'COBRADOR'
      Size = 6
    end
  end
  object DSPClientes: TDataSetProvider
    DataSet = QClientes
    Left = 184
    Top = 424
  end
  object DSClientes: TDataSource
    DataSet = CDSClientes
    Left = 312
    Top = 424
  end
  object QClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select cl.codigo,cl.nombre,cl.razon_social,cl.direccion_comercia' +
        'l,cl.localidad,cl.cpostal,'
      
        'cl.telefono_comercial_1,cl.telefono_comercial_2,cl.zona,cl.sucur' +
        'sal,cl.vendedor,cl.cobrador from clientes cl'
      
        'where cl.codigo in (select ca.cliente from cupon_abonos ca where' +
        ' ca.pagado='#39'N'#39')')
    Left = 112
    Top = 424
  end
end

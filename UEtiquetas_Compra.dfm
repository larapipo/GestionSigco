object FormEtiquetasCompra: TFormEtiquetasCompra
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Etiquetas Compra'
  ClientHeight = 582
  ClientWidth = 910
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object pnBase: TPanel
    Left = 0
    Top = 0
    Width = 910
    Height = 582
    Align = alClient
    TabOrder = 0
    OnDblClick = pnBaseDblClick
    DesignSize = (
      910
      582)
    object Label1: TLabel
      Left = 16
      Top = 480
      Width = 86
      Height = 15
      Anchors = [akLeft, akBottom]
      Caption = 'Etiquetas Chicas'
    end
    object sbReporte: TSpeedButton
      Left = 329
      Top = 501
      Width = 23
      Height = 22
      Anchors = [akLeft, akBottom]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555555555555555555555555555555555555555555555555555555555
        555555555555555555555555555555555555555FFFFFFFFFF555550000000000
        55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
        B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
        000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
        555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
        55555575FFF75555555555700007555555555557777555555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = sbReporteClick
    end
    object Label2: TLabel
      Left = 16
      Top = 530
      Width = 81
      Height = 15
      Anchors = [akLeft, akBottom]
      Caption = 'Precios de Lista'
      ExplicitTop = 519
    end
    object dbgEtiquetas: TDBGrid
      Left = 1
      Top = 33
      Width = 908
      Height = 434
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = DSEtiquetas
      PopupMenu = PopupMenu1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnColEnter = dbgEtiquetasColEnter
      OnDblClick = dbgEtiquetasDblClick
      OnEnter = dbgEtiquetasEnter
      Columns = <
        item
          Expanded = False
          Width = 116
          Visible = True
        end
        item
          Expanded = False
          Width = 305
          Visible = True
        end
        item
          Expanded = False
          Width = 153
          Visible = True
        end
        item
          Expanded = False
          Width = 113
          Visible = True
        end
        item
          Expanded = False
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          Width = 97
          Visible = True
        end>
    end
    object edEtiqueta1: TEdit
      Left = 16
      Top = 501
      Width = 307
      Height = 23
      Anchors = [akLeft, akBottom]
      TabOrder = 1
      Text = 'edEtiqueta1'
    end
    object btImprimir: TBitBtn
      Left = 802
      Top = 522
      Width = 91
      Height = 29
      Anchors = [akRight, akBottom]
      Caption = '&Imprimir'
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
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        03030303030303030303030303030303030303030303030303FFFFFF03030303
        030303030303FFFFFF0303030000000303030303030303030300000003030303
        F8F8F8FFFFFFFFFFFFFFFFFFFFF8F8F8FFFF0300000000000000000000000000
        00000000000303F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FF0300FF070707
        070707070707070707070707000303F8FF030303030303030303030303030303
        F8FF0300FF070707070707070707070707070707000303F8FF03030303030303
        0303030303030303F8FF0300FF0707070707070707070707F9F90707000303F8
        FF030303030303030303030303030303F8FF0300FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF000303F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FF03F80000F8F8
        F8F8F8F8F8F8F8F8F8F80000F80303F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
        F8030303030000000000000000000000000000030303030303F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8FF03030303030000FFFFFFFFFFFFFFFFFFFF00000303030303
        03F8F8FF03FFFFFFFFFFFFFFFFF8F80303030303030300FF0000000000000000
        FF000303030303030303F8FFF8F8F8F8F8F8F8F803F8FF0303030303030300FF
        FFFFFFFFFFFFFFFFFF000303030303030303F8FF03FFFFFFFFFFFFFFFFF8FF03
        03030303030300FF0000000000000000FF000303030303030303F8FFF8F8F8F8
        F8F8F8F803F8FF0303030303030300FFFFFFFFFFFFFFFFFFFF00030303030303
        0303F8FF03FFFF030303030303F8FF0303030303030300FF0000FFFFFFFFFFFF
        FF000303030303030303F8FFF8F803030303030303F8FF0303030303030300FF
        FFFFFFFFFFFFFFFFFF000303030303030303F8FFFFFFFFFFFFFFFFFFFFF8FF03
        0303030303030000000000000000000000000303030303030303F8F8F8F8F8F8
        F8F8F8F8F8F80303030303030303030303030303030303030303030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        0303030303030303030303030303030303030303030303030303}
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btImprimirClick
    end
    object chPreview: TCheckBox
      Left = 816
      Top = 557
      Width = 72
      Height = 17
      Alignment = taLeftJustify
      Anchors = [akRight, akBottom]
      Caption = 'Preview'
      TabOrder = 3
      WordWrap = True
    end
    object pnCabecera: TPanel
      Left = 1
      Top = 1
      Width = 908
      Height = 32
      Align = alTop
      Caption = 'Etiquetas'
      Color = clMenuHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 4
    end
    object btHacer_x_Cantidad: TButton
      Left = 719
      Top = 473
      Width = 84
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'x Cantidad'
      TabOrder = 6
      OnClick = btHacer_x_CantidadClick
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 88
      Width = 872
      Height = 121
      DataSource = DSEtiquetasRepetidas
      PopupMenu = PopupMenu1
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Visible = False
    end
    object dbcLista: TDBLookupComboBox
      Left = 16
      Top = 546
      Width = 305
      Height = 23
      Anchors = [akLeft, akBottom]
      KeyField = 'ID'
      ListField = 'NOMBRE'
      ListSource = DSListaPrecio
      TabOrder = 7
    end
    object btAplicaPrecio: TBitBtn
      Left = 331
      Top = 544
      Width = 134
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Aplica Precio de Lista'
      TabOrder = 8
      OnClick = btAplicaPrecioClick
    end
    object btPorRenglon: TButton
      Left = 809
      Top = 473
      Width = 84
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'x Renglon'
      TabOrder = 9
      OnClick = btPorRenglonClick
    end
  end
  object DSEtiquetas: TDataSource
    DataSet = CDSEtiquetas
    Left = 312
    Top = 352
  end
  object CDSEtiquetas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCompraDet'
    Left = 448
    Top = 360
  end
  object frEtiquetas: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39638.802346273140000000
    ReportOptions.LastChange = 39638.802346273140000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 262
    Top = 142
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frDSEtiquetas: TfrxDBDataset
    UserName = 'frDSEtiq'
    CloseDataSource = False
    DataSource = DSEtiquetasRepetidas
    BCDToCurrency = False
    DataSetOptions = []
    Left = 342
    Top = 142
    FieldDefs = <
      item
        FieldName = 'CODIGOARTICULO'
        FieldAlias = 'CODIGOARTICULO'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'MUESTRACODIGOBARRA'
        FieldAlias = 'MUESTRACODIGOBARRA'
      end
      item
        FieldName = 'MUESTRAPRECIOVTA'
        FieldAlias = 'MUESTRAPRECIOVTA'
      end
      item
        FieldName = 'CANTIDAD'
        FieldAlias = 'CANTIDAD'
      end>
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.fr3'
    Left = 424
    Top = 144
  end
  object CDSEtiquetasReptidas: TClientDataSet
    PersistDataPacket.Data = {
      E50000009619E0BD010000001800000006000000000003000000E5000E434F44
      49474F4152544943554C4F010049000000010005574944544802000200080007
      444554414C4C450100490000000100055749445448020002002D00124D554553
      545241434F4449474F4241525241010049000000010005574944544802000200
      3200104D55455354524150524543494F56544101004900000001000557494454
      480200020014000843414E544944414401004900000001000557494454480200
      02000F000E554E49544152494F5F544F54414C01004900000001000557494454
      480200020014000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGOARTICULO'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'DETALLE'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'MUESTRACODIGOBARRA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'MUESTRAPRECIOVTA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CANTIDAD'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'UNITARIO_TOTAL'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 448
    Top = 288
    object CDSEtiquetasReptidasCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Size = 8
    end
    object CDSEtiquetasReptidasDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSEtiquetasReptidasMUESTRACODIGOBARRA: TStringField
      FieldName = 'MUESTRACODIGOBARRA'
      Size = 50
    end
    object CDSEtiquetasReptidasMUESTRAPRECIOVTA: TStringField
      FieldName = 'MUESTRAPRECIOVTA'
    end
    object CDSEtiquetasReptidasCANTIDAD: TStringField
      FieldName = 'CANTIDAD'
      Size = 15
    end
    object CDSEtiquetasReptidasUNITARIO_TOTAL: TStringField
      FieldName = 'UNITARIO_TOTAL'
    end
  end
  object DSEtiquetasRepetidas: TDataSource
    DataSet = CDSEtiquetasReptidas
    Left = 320
    Top = 288
  end
  object QListaCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select id,nombre from listaprecioespecialcab')
    Left = 448
    Top = 424
  end
  object QListaDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select codigoarticulo,precio from listaprecioespecialart d'
      'where d.id_cab=:id and d.codigoarticulo=:codigo')
    Left = 552
    Top = 424
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
  end
  object DSListaPrecio: TDataSource
    DataSet = QListaCab
    Left = 312
    Top = 424
  end
  object spActualizaPrecioVta: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'MODIFICA_PRECIO_VENTA'
    Left = 696
    Top = 376
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 2
        Name = 'PRECIOVTA'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'ID_LISTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 648
    Top = 256
    object Redonde0decimales1: TMenuItem
      Action = Redondeo_0
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object AplicarCambiosdePrecios1: TMenuItem
      Action = AplicarCambios
    end
  end
  object ActionList1: TActionList
    Left = 544
    Top = 224
    object Redondeo_0: TAction
      Caption = 'Redondear a 0(Cero) decimales'
      OnExecute = Redondeo_0Execute
    end
    object AplicarCambios: TAction
      Caption = 'Aplicar Cambios de Precios'
      OnExecute = AplicarCambiosExecute
    end
  end
end

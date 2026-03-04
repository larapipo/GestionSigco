object FormCodigoDeProveedores_Stock: TFormCodigoDeProveedores_Stock
  Left = 415
  Top = 212
  BorderStyle = bsDialog
  Caption = 'Codigo De Proveedores/Stock '
  ClientHeight = 436
  ClientWidth = 602
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pnCodigos: TPanel
    Left = 8
    Top = 8
    Width = 537
    Height = 273
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object dbgCodigoProveedores: TDBGrid
      Left = 4
      Top = 4
      Width = 529
      Height = 213
      BiDiMode = bdLeftToRight
      DataSource = DSCodigoProveedores
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO_PROVEEDOR'
          Title.Alignment = taCenter
          Title.Caption = 'Codigo Proveedor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -12
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 115
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRAPROVEEDOR'
          Title.Alignment = taCenter
          Title.Caption = 'Proveedor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -12
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 211
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECIO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -12
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 79
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FECHA'
          Title.Alignment = taCenter
          Title.Caption = 'Ult.Actu.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -12
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 95
          Visible = True
        end>
    end
    object btSalir: TBitBtn
      Left = 454
      Top = 231
      Width = 75
      Height = 29
      Hint = 'Cerrar la ventana actual'
      Caption = '&Salir'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0004490600055B0900066C0C00066C0C00055E
        0A00044C0600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0005600900056009000891130009B0180009B31A0009B3190009B1
        19000796140005680C0005680C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000A6A15000A7F15000BB61C0009B91A0008B4180007B2160009B3190009B4
        190009B81A0009B91A0007831000044D0600FF00FF00FF00FF00FF00FF000B6A
        15000F85220016BD340011B727000BB21C0007B1160008B1170009B2190009B2
        190009B2190009B4190009BA1A000784100006670C00FF00FF00FF00FF000B6A
        150020BE49001BBD400014B730000AB21F0028BC3600DFF5E100EEFAEF0063CE
        6D0009B2190009B2190009B3190009BA1A0006670C00FF00FF00087210001B9A
        3A002AC65B001DBB45000EB425000BB31B0011B421009ADFA000FFFFFF00F7FD
        F8005ACB650009B2190009B2190009B81A0008941300045D0900087210002AB6
        5B002CC5650022BD4D000FB422000AB21A000CB31C000AB219008DDB9500FDFE
        FD00F6FCF70058CB630009B2190009B51A0008AB1700045D09000F821C0037C2
        6C0033C76C00CDF1DA00C9EFD300C7EED000C8EFD200C5EED000C7EECF00F8FD
        F900FFFFFF00F2FBF3006FD2790008B4190009B3190005650B00138D230058CC
        830042C97700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFE
        FD00FFFFFF00FFFFFF00BCEAC1000AB41A0009B31900066D0D000F911D006FD2
        93005FD38D006DD4950072D6990071D6980072D6990064D28C0092DFA800FBFE
        FB00FFFFFF00ACE5B8002EBF4C0011B82B0008B1190005610A000F911D0067CC
        83009BE5BA0038C6700030C3690038C56F0038C56F0070D69700E8F8EE00FFFF
        FF009FE2B10020BD48001AB93E0010BA290008A3170005610A00FF00FF0025AE
        3900BCEDD20082DBA40028C063002FC2670053CD8200F7FDF900FFFFFF009CE2
        B20022BC4B001DBA410018B7360014C030000A851700FF00FF00FF00FF0025AE
        390071D28C00D2F4E10080DAA30036C46D0039C56F00BCECCE00ABE6C2002DC2
        630024BE560023BC4D001FC1460016AE34000A851700FF00FF00FF00FF00FF00
        FF0025AE390084D89F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA
        7B0048CB780039CB6A0021B649000F7C1F00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0025AE390025AE3900ADE8C500CCF2DE00BAEDD100A6E7C20091E2
        B30064D492002FB157002FB15700FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0032B74E0025AE390025AE390025AE390025AE
        390024A34200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 1
      OnClick = btSalirClick
    end
  end
  object DSCodigoProveedores: TDataSource
    DataSet = CDSCodigoProveedores
    Left = 384
    Top = 320
  end
  object CDSCodigoProveedores: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCodigoProveedores'
    Left = 248
    Top = 312
    object CDSCodigoProveedoresCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 8
    end
    object CDSCodigoProveedoresCODIGO_PROVEEDOR: TStringField
      FieldName = 'CODIGO_PROVEEDOR'
      Origin = 'CODIGO_PROVEEDOR'
      Size = 15
    end
    object CDSCodigoProveedoresMUESTRAPROVEEDOR: TStringField
      FieldName = 'MUESTRAPROVEEDOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object CDSCodigoProveedoresPRECIO: TFloatField
      DisplayLabel = 'Precio'
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      Required = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCodigoProveedoresFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      ProviderFlags = []
    end
  end
  object DSPCodigoProveedores: TDataSetProvider
    DataSet = QCodigoProv
    Left = 144
    Top = 312
  end
  object QCodigoProv: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select ld.codigo,ld.codigo_proveedor,p.nombre as MuestraProveedo' +
        'r,ld.precio,lc.fecha from lista_precios_prov_detalle  ld'
      'left join lista_precios_prov_cabecera lc on lc.id=ld.id_cab'
      'left join poveedor p on p.codigo=lc.codigo_provee'
      'where ld.codigo=:codigo')
    Left = 64
    Top = 304
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
end

object FormImpresionHojaCargaAgrupada: TFormImpresionHojaCargaAgrupada
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Impresion Hojas de Carga Agrupadas'
  ClientHeight = 699
  ClientWidth = 941
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 941
    Height = 41
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Resumen de Hojas de Carga'
    Color = clMenuHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object pnPrincipal: TPanel
    Left = 0
    Top = 41
    Width = 941
    Height = 480
    Align = alTop
    Caption = 'pnPrincipal'
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 8
      Top = 6
      Width = 609
      Height = 185
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object cxGrid1DBTableView1: TcxGridDBTableView
        DataController.DataSource = DSHojaCab
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGrid1DBTableView1FECHA: TcxGridDBColumn
          DataBinding.FieldName = 'FECHA'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 86
        end
        object cxGrid1DBTableView1ID_ZONA: TcxGridDBColumn
          DataBinding.FieldName = 'ID_ZONA'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGrid1DBTableView1MUESTRARESPONSABLE: TcxGridDBColumn
          DataBinding.FieldName = 'MUESTRARESPONSABLE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 287
        end
        object cxGrid1DBTableView1SELECCION: TcxGridDBColumn
          DataBinding.FieldName = 'SELECCION'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 61
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxGrid2: TcxGrid
      Left = 8
      Top = 197
      Width = 902
      Height = 277
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object cxGrid2DBTableView1: TcxGridDBTableView
        DataController.DataSource = DSHojaDet
        OptionsView.GroupByBox = False
        object cxGrid2DBTableView1ID_CAB: TcxGridDBColumn
          DataBinding.FieldName = 'ID_CAB'
          HeaderAlignmentHorz = taCenter
          Width = 69
        end
        object cxGrid2DBTableView1ID_CPBTE: TcxGridDBColumn
          DataBinding.FieldName = 'ID_CPBTE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGrid2DBTableView1TIPOCPBTE: TcxGridDBColumn
          DataBinding.FieldName = 'TIPOCPBTE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 36
        end
        object cxGrid2DBTableView1CLASECPBTE: TcxGridDBColumn
          DataBinding.FieldName = 'CLASECPBTE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 36
        end
        object cxGrid2DBTableView1NROCPBTE: TcxGridDBColumn
          DataBinding.FieldName = 'NROCPBTE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 94
        end
        object cxGrid2DBTableView1NOMBRE: TcxGridDBColumn
          DataBinding.FieldName = 'NOMBRE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 243
        end
        object cxGrid2DBTableView1DIRECCION: TcxGridDBColumn
          DataBinding.FieldName = 'DIRECCION'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 204
        end
        object cxGrid2DBTableView1IMPORTE: TcxGridDBColumn
          DataBinding.FieldName = 'IMPORTE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 92
        end
        object cxGrid2DBTableView1ENTREGADO: TcxGridDBColumn
          DataBinding.FieldName = 'ENTREGADO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 42
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 521
    Width = 941
    Height = 48
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Color = clMenuHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 688
      Top = 6
      Width = 110
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
    object btBuscar: TBitBtn
      Left = 16
      Top = 6
      Width = 110
      Height = 32
      Caption = 'Buscar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      OnClick = btBuscarClick
    end
    object btImprimir: TBitBtn
      Left = 800
      Top = 6
      Width = 110
      Height = 32
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btImprimirClick
    end
  end
  object DSHojaCab: TDataSource
    DataSet = CDSHojaCab
    Left = 336
    Top = 102
  end
  object DSHojaDet: TDataSource
    DataSet = CDSHojaDet
    Left = 296
    Top = 312
  end
  object QHojaDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.*, case d.tipocpbte    when '#39'RO'#39'   then r.vendedor'
      
        '                                when '#39'RA'#39'   then (select fc.vend' +
        'edor from fcvtacab fc where fc.id_fc = a.id_factura)'
      '                                else             f.vendedor'
      
        '            end as Vendedor, p.nombre as MuestraVendedor  from h' +
        'ojacarga_det d'
      
        'left join fcvtacab f on f.id_fc=d.id_cpbte and f.tipocpbte=d.tip' +
        'ocpbte'
      
        'left join rtocab r on r.id_rto=d.id_cpbte  and r.tipocpbte=d.tip' +
        'ocpbte'
      
        'left join rto_acopio_cab a on a.id=d.id_cpbte and a.tipocpbte=d.' +
        'tipocpbte'
      
        'left join personal p on (p.codigo = f.vendedor) or (p.codigo = r' +
        '.vendedor)'
      'where d.id = -1')
    Left = 88
    Top = 312
  end
  object QHojaCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.*,p.nombre as MuestraResponsable from hojacarga_cab c'
      'left join personal p on p.codigo=c.responsable'
      'order by c.id desc')
    Left = 96
    Top = 104
  end
  object CDSHojaCab: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPHojaCab'
    Left = 256
    Top = 96
    object CDSHojaCabID: TIntegerField
      DisplayLabel = 'Nro.'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSHojaCabFECHA: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSHojaCabRESPONSABLE: TStringField
      FieldName = 'RESPONSABLE'
      Origin = 'RESPONSABLE'
      Size = 6
    end
    object CDSHojaCabNOTAS: TStringField
      FieldName = 'NOTAS'
      Origin = 'NOTAS'
      Size = 250
    end
    object CDSHojaCabCOMISION: TFloatField
      FieldName = 'COMISION'
      Origin = 'COMISION'
      Required = True
    end
    object CDSHojaCabID_ZONA: TIntegerField
      DisplayLabel = 'Zona'
      FieldName = 'ID_ZONA'
      Origin = 'ID_ZONA'
    end
    object CDSHojaCabMUESTRARESPONSABLE: TStringField
      DisplayLabel = 'Responzable'
      FieldName = 'MUESTRARESPONSABLE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object CDSHojaCabSELECCION: TBooleanField
      Alignment = taCenter
      DisplayLabel = 'Selec.'
      FieldKind = fkInternalCalc
      FieldName = 'SELECCION'
    end
    object CDSHojaCabID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
      Origin = 'ID_TRANSPORTE'
      Required = True
    end
    object CDSHojaCabID_CHOFER: TIntegerField
      FieldName = 'ID_CHOFER'
      Origin = 'ID_CHOFER'
    end
  end
  object DSPHojaCab: TDataSetProvider
    DataSet = QHojaCab
    Options = []
    Left = 168
    Top = 104
  end
  object CDSHojaDet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPHojaDet'
    AfterScroll = CDSHojaDetAfterScroll
    Left = 224
    Top = 312
    object CDSHojaDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSHojaDetID_CAB: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Nro.Hoja'
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSHojaDetID_CPBTE: TIntegerField
      DisplayLabel = 'Id Cpbte'
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      Required = True
    end
    object CDSHojaDetTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSHojaDetCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSHojaDetNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object CDSHojaDetNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 45
    end
    object CDSHojaDetIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object CDSHojaDetENTREGADO: TStringField
      DisplayLabel = 'Ent.'
      FieldName = 'ENTREGADO'
      Origin = 'ENTREGADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSHojaDetDIRECCION: TStringField
      DisplayLabel = 'Direccion'
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object CDSHojaDetNETO: TFloatField
      DisplayLabel = 'Neto'
      FieldName = 'NETO'
      Origin = 'NETO'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSHojaDetSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = 'SALDO'
      DisplayFormat = ',0.00'
    end
    object CDSHojaDetCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object CDSHojaDetVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object CDSHojaDetMUESTRAVENDEDOR: TStringField
      FieldName = 'MUESTRAVENDEDOR'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object DSPHojaDet: TDataSetProvider
    DataSet = QHojaDet
    Options = [poAllowCommandText]
    Left = 152
    Top = 312
  end
  object frCabecera: TfrxDBDataset
    UserName = 'frCabecera'
    CloseDataSource = False
    DataSource = DSHojaCab
    BCDToCurrency = False
    DataSetOptions = []
    Left = 184
    Top = 472
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'FECHA'
        FieldAlias = 'FECHA'
      end
      item
        FieldName = 'RESPONSABLE'
        FieldAlias = 'RESPONSABLE'
      end
      item
        FieldName = 'NOTAS'
        FieldAlias = 'NOTAS'
      end
      item
        FieldName = 'COMISION'
        FieldAlias = 'COMISION'
      end
      item
        FieldName = 'ID_ZONA'
        FieldAlias = 'ID_ZONA'
      end
      item
        FieldName = 'MUESTRARESPONSABLE'
        FieldAlias = 'MUESTRARESPONSABLE'
      end
      item
        FieldName = 'SELECCION'
        FieldAlias = 'SELECCION'
      end
      item
        FieldName = 'ID_TRANSPORTE'
        FieldAlias = 'ID_TRANSPORTE'
      end
      item
        FieldName = 'ID_CHOFER'
        FieldAlias = 'ID_CHOFER'
      end>
  end
  object frDetalle: TfrxDBDataset
    UserName = 'frDetalle'
    CloseDataSource = False
    DataSource = DSHojaDet
    BCDToCurrency = False
    DataSetOptions = []
    Left = 248
    Top = 473
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_CAB'
        FieldAlias = 'ID_CAB'
      end
      item
        FieldName = 'ID_CPBTE'
        FieldAlias = 'ID_CPBTE'
      end
      item
        FieldName = 'TIPOCPBTE'
        FieldAlias = 'TIPOCPBTE'
      end
      item
        FieldName = 'CLASECPBTE'
        FieldAlias = 'CLASECPBTE'
      end
      item
        FieldName = 'NROCPBTE'
        FieldAlias = 'NROCPBTE'
      end
      item
        FieldName = 'NOMBRE'
        FieldAlias = 'NOMBRE'
      end
      item
        FieldName = 'IMPORTE'
        FieldAlias = 'IMPORTE'
      end
      item
        FieldName = 'ENTREGADO'
        FieldAlias = 'ENTREGADO'
      end
      item
        FieldName = 'DIRECCION'
        FieldAlias = 'DIRECCION'
      end
      item
        FieldName = 'NETO'
        FieldAlias = 'NETO'
      end
      item
        FieldName = 'SALDO'
        FieldAlias = 'SALDO'
      end
      item
        FieldName = 'CODIGO'
        FieldAlias = 'CODIGO'
      end
      item
        FieldName = 'VENDEDOR'
        FieldAlias = 'VENDEDOR'
      end
      item
        FieldName = 'MUESTRAVENDEDOR'
        FieldAlias = 'MUESTRAVENDEDOR'
      end>
  end
  object frResumenDetalle: TfrxDBDataset
    UserName = 'frResumenDetalle'
    CloseDataSource = False
    DataSet = CDSResumenDetalle
    BCDToCurrency = False
    DataSetOptions = []
    Left = 368
    Top = 480
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
        FieldName = 'CANTIDAD'
        FieldAlias = 'CANTIDAD'
      end
      item
        FieldName = 'CANTIDAD_CONTENIDO'
        FieldAlias = 'CANTIDAD_CONTENIDO'
      end
      item
        FieldName = 'UNIDAD_CONTENIDO'
        FieldAlias = 'UNIDAD_CONTENIDO'
      end>
  end
  object frDetalleMercaderia: TfrxDBDataset
    UserName = 'frDetalleMercaderia'
    CloseDataSource = False
    DataSet = CDSDetalles
    BCDToCurrency = False
    DataSetOptions = []
    Left = 467
    Top = 480
    FieldDefs = <
      item
        FieldName = 'ID'
        FieldAlias = 'ID'
      end
      item
        FieldName = 'ID_CABFAC'
        FieldAlias = 'ID_CABFAC'
      end
      item
        FieldName = 'CODIGOARTICULO'
        FieldAlias = 'CODIGOARTICULO'
      end
      item
        FieldName = 'DETALLE'
        FieldAlias = 'DETALLE'
      end
      item
        FieldName = 'CANTIDAD'
        FieldAlias = 'CANTIDAD'
      end
      item
        FieldName = 'UNITARIOFINAL'
        FieldAlias = 'UNITARIOFINAL'
      end
      item
        FieldName = 'NETOGRAVADO'
        FieldAlias = 'NETOGRAVADO'
      end
      item
        FieldName = 'PRESENTACION_CANTIDAD'
        FieldAlias = 'PRESENTACION_CANTIDAD'
      end
      item
        FieldName = 'PRESENTACION_UNIDAD'
        FieldAlias = 'PRESENTACION_UNIDAD'
      end>
  end
  object CDSResumenDetalle: TJvMemoryData
    FieldDefs = <>
    Left = 419
    Top = 304
    object CDSResumenDetalleCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Size = 8
    end
    object CDSResumenDetalleDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSResumenDetalleCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object CDSResumenDetalleCANTIDAD_CONTENIDO: TFloatField
      FieldName = 'CANTIDAD_CONTENIDO'
    end
    object CDSResumenDetalleUNIDAD_CONTENIDO: TStringField
      FieldName = 'UNIDAD_CONTENIDO'
      Size = 3
    end
  end
  object frxReporte: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41528.438648668980000000
    ReportOptions.LastChange = 41528.438648668980000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 80
    Top = 480
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object DSPDetalles: TDataSetProvider
    DataSet = QDetalles
    Left = 248
    Top = 542
  end
  object CDSDetalles: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDetalles'
    Left = 323
    Top = 542
    object CDSDetallesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInKey]
      Required = True
    end
    object CDSDetallesID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      Origin = 'ID_CABFAC'
      ProviderFlags = []
    end
    object CDSDetallesCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      ProviderFlags = []
      Size = 8
    end
    object CDSDetallesDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 45
    end
    object CDSDetallesCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSDetallesUNITARIOFINAL: TFloatField
      FieldName = 'UNITARIOFINAL'
      Origin = 'UNITARIOFINAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSDetallesNETOGRAVADO: TFloatField
      FieldName = 'NETOGRAVADO'
      Origin = 'NETOGRAVADO'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSDetallesPRESENTACION_CANTIDAD: TFloatField
      FieldName = 'PRESENTACION_CANTIDAD'
      ReadOnly = True
    end
    object CDSDetallesPRESENTACION_UNIDAD: TStringField
      FieldName = 'PRESENTACION_UNIDAD'
      ReadOnly = True
      Size = 3
    end
  end
  object DSDetalles: TDataSource
    DataSet = CDSDetalles
    Left = 427
    Top = 542
  end
  object QDetalles: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select d.id,d.id_cabfac,d.codigoarticulo,d.detalle,d.cantidad,d.' +
        'unitario_total as netogravado,(d.unitario_total+d.iva_unitario) ' +
        'as unitariofinal,s1.presentacion_cantidad,s1.presentacion_unidad' +
        ' from fcvtadet d'
      'left join stock s1 on s1.codigo_stk = d.codigoarticulo'
      'where d.id_cabfac=:id and d.tipocpbte=:tipo'
      'union'
      
        'select rd.id,rd.id_cabrto,rd.codigoarticulo,rd.detalle,rd.cantid' +
        'ad,rd.unitario_total as netogravado,(rd.unitario_total+rd.iva_un' +
        'itario) as unitariofinal,s2.presentacion_cantidad,s2.presentacio' +
        'n_unidad from rtodet rd'
      'left join stock s2 on s2.codigo_stk=rd.codigoarticulo'
      'where rd.id_cabrto=:id and rd.tipocpbte=:tipo')
    Left = 176
    Top = 545
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 2
        Name = 'tipo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
end

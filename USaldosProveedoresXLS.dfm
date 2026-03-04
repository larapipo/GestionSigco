object FormSaldoProveedoresXLS: TFormSaldoProveedoresXLS
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Saldo Proveedores a XLS'
  ClientHeight = 587
  ClientWidth = 864
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
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 864
    Height = 544
    Align = alClient
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      DataController.DataSource = DSMovCC
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = ',0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1DEBE
        end
        item
          Format = ',0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1HABER
        end
        item
          Format = ',0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1SALDOCPBTE
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0.00'
          Kind = skSum
          FieldName = 'DEBE'
          Column = cxGrid1DBTableView1DEBE
        end
        item
          Format = ',0.00'
          Kind = skSum
          FieldName = 'HABER'
          Column = cxGrid1DBTableView1HABER
        end
        item
          Format = ',0.00'
          Kind = skSum
          FieldName = 'SALDOCPTE'
          Column = cxGrid1DBTableView1SALDOCPBTE
        end>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfAlwaysVisible
      OptionsView.GroupRowStyle = grsOffice11
      OptionsView.Indicator = True
      object cxGrid1DBTableView1NOMBRE: TcxGridDBColumn
        Caption = 'Nombre'
        DataBinding.FieldName = 'CODIGONOMBRE'
        Visible = False
        GroupIndex = 0
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn
        DataBinding.FieldName = 'TIPOCPBTE'
        HeaderAlignmentHorz = taCenter
        Width = 37
      end
      object cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn
        DataBinding.FieldName = 'CLASECPBTE'
        HeaderAlignmentHorz = taCenter
        Width = 44
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'FECHACOMPRA'
        HeaderAlignmentHorz = taCenter
        Width = 85
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        DataBinding.FieldName = 'FECHAVTO'
        HeaderAlignmentHorz = taCenter
        Width = 96
      end
      object cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn
        DataBinding.FieldName = 'NROCPBTE'
        HeaderAlignmentHorz = taCenter
        Width = 116
      end
      object cxGrid1DBTableView1DETALLE: TcxGridDBColumn
        DataBinding.FieldName = 'DETALLE'
        HeaderAlignmentHorz = taCenter
        Width = 131
      end
      object cxGrid1DBTableView1DEBE: TcxGridDBColumn
        DataBinding.FieldName = 'DEBE'
        HeaderAlignmentHorz = taCenter
        Width = 96
      end
      object cxGrid1DBTableView1HABER: TcxGridDBColumn
        DataBinding.FieldName = 'HABER'
        HeaderAlignmentHorz = taCenter
        Width = 110
      end
      object cxGrid1DBTableView1SALDOCPBTE: TcxGridDBColumn
        DataBinding.FieldName = 'SALDOCPTE'
        HeaderAlignmentHorz = taCenter
        Width = 98
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 544
    Width = 864
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 1
    object BitBtn2: TBitBtn
      Left = 595
      Top = 6
      Width = 108
      Height = 29
      Caption = 'Exportar Excel'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF233F3F237F7F237F7F237F7F001F
        000F4B000F4B000F2C00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF237F7F47FFFF47FFFF47FFFF0F2C00005F3F1F97000F4B00FF00FF18233F
        4F88AF2F737F4F534F2F302FFF00FFFF00FF237F7F233F7F00007747BFBF237F
        7F237F7F1F97000F4B00FF00FF30477F9BD7FF63C0FF48B7FF30A3E34F93B733
        7797003F3F233F3F000077237F7F0F4B001F77001F97000F4B00FF00FF30477F
        77C8FFA7DBFF8FD0FF8FD0FF8FD0FF83CCFF0000770000EF0000AF0000777F14
        000F4B003F14003F0000FF00FF3B477F4BBBFFBFEFFF8FE7FF8FE7FF8FE7FF8F
        E7FF0000770000EF7F14007F1400BF28000F4B003F33007F1400FF00FF47477F
        67C0FFA3DFFF8FFFFF8FFFFF8FFFFF8FFFFF0000770000EF3F0037000037FF28
        00FF2800FF28007F1400FF00FF18577F77C8FF6FC7FFA7FFFF8FFFFF8FFFFF8F
        FFFF00003700007700007700003F7F14007F14007F14003F1400FF00FF285C7F
        77C8FF58BCFFCBF3FFCFFFFFBFFFFFAFFFFFAFFFFFAFFFFFAFFFFF93E3FFD0FF
        FF83C3DB171817FF00FFFF00FF30607F8BD0FF77C8FF5FBFFF77C8FF7FCCFF9B
        D7FFD3FFFFBFFFFFBFFFFFA7E7FFDFFFFFCFF3FF33575FFF00FFFF00FF30607F
        97FFFF8FFFFF8FFFFF8FFFFF8FFFFF83EFFF77DBFFA7DFFFC7EBFFCBEBFFF7FF
        FFF7FFFF7BAFC7FF00FFFF00FF30607F9FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8F
        FFFF8FFFFF8FFFFF83FFFF43BFF73B63833B647F435B7FFF00FFFF00FF30537F
        B7FBFF8FFFFF8FFFFFAFFFFFA3DBFF9BDBFF9FEBFFAFFBFFAFFFFF67D7FF3737
        37FF00FFFF00FFFF00FFFF00FFFF00FF93B7FF88D7FF7FD7FF87C7FF1C1F1CFF
        00FF23233F47477F3B477F30537FFF00FF000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00
        FFFF00FF000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF000000000000000000FF00FF000000}
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object BitBtn1: TBitBtn
      Left = 709
      Top = 6
      Width = 75
      Height = 29
      Caption = 'Ver'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  object DSPMovCC: TDataSetProvider
    DataSet = QMovCC
    Options = [poAllowCommandText]
    Left = 424
    Top = 144
  end
  object CDSMovCC: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'minimo'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'maximo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovCC'
    OnCalcFields = CDSMovCCCalcFields
    Left = 480
    Top = 144
    object CDSMovCCPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Origin = 'PROVEEDOR'
      ProviderFlags = []
      Size = 6
    end
    object CDSMovCCNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Required = True
      Size = 35
    end
    object CDSMovCCRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSMovCCN_DE_CUIT: TStringField
      FieldName = 'N_DE_CUIT'
      Origin = 'N_DE_CUIT'
      ProviderFlags = []
      Size = 13
    end
    object CDSMovCCTIPOCPBTE: TStringField
      DisplayLabel = 'T.Cp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSMovCCCLASECPBTE: TStringField
      DisplayLabel = 'Cl.Cp'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSMovCCNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object CDSMovCCDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
    end
    object CDSMovCCCODIGONOMBRE: TStringField
      FieldKind = fkCalculated
      FieldName = 'CODIGONOMBRE'
      Size = 60
      Calculated = True
    end
    object CDSMovCCTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovCCDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovCCHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovCCSALDOCPTE: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDOCPTE'
      Origin = 'SALDO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovCCFECHACOMPRA: TSQLTimeStampField
      DisplayLabel = 'F.de Compra'
      FieldName = 'FECHACOMPRA'
      Origin = 'FECHACOMPRA'
    end
    object CDSMovCCFECHAVTO: TSQLTimeStampField
      DisplayLabel = 'Fecha Vto.'
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
  end
  object DSMovCC: TDataSource
    DataSet = CDSMovCC
    Left = 551
    Top = 152
  end
  object dlgSave1: TSaveDialog
    DefaultExt = 'txt'
    FileName = 'PercepIIBB'
    Title = 'Archivo de Retenciones'
    Left = 561
    Top = 250
  end
  object QMovCC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select mc.proveedor,P.NOMBRE,p.razon_social,p.n_de_cuit,(sum(mc.' +
        'haber)-sum(mc.debe)) as total,'
      
        'mc.debe,mc.haber,mc.tipocpbte,mc.clasecpbte,mc.nrocpbte,mc.detal' +
        'le,mc.fechacompra,mc.fechavto, mc.saldo as SaldoCpte from MOVCCC' +
        'OMPRA_TEMPORAL  mc'
      'JOIN POVEEDOR P ON P.CODIGO=MC.PROVEEDOR'
      'where mc.fechacompra<=:hasta and p.activo='#39'S'#39
      '      and ( mc.sucursal = :suc or :suc = -1 )'
      
        'group by mc.proveedor,P.NOMBRE,p.razon_social,p.n_de_cuit,mc.deb' +
        'e,mc.haber,mc.tipocpbte,mc.clasecpbte,mc.nrocpbte,'
      '    mc.detalle,mc.fechacompra,mc.fechavto,  mc.saldo'
      
        'having (sum(mc.haber-mc.debe)>=:minimo) and (sum(mc.haber-mc.deb' +
        'e)<=:maximo) and ((SUM(mc.DEBE)-SUM(mc.HABER))<> 0)')
    Left = 360
    Top = 144
    ParamData = <
      item
        Position = 1
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'minimo'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'maximo'
        DataType = ftFloat
        ParamType = ptInput
      end>
  end
end

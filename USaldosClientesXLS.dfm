object FormSaldosClientesXLS: TFormSaldosClientesXLS
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Saldos de Clientes'
  ClientHeight = 651
  ClientWidth = 780
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
    Width = 780
    Height = 651
    Align = alClient
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      780
      651)
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 778
      Height = 606
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSMovCC
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            Position = spFooter
            Column = cxGrid1DBTableView1DEBE
          end
          item
            Kind = skSum
            Position = spFooter
            Column = cxGrid1DBTableView1HABER
          end
          item
            Kind = skSum
            Position = spFooter
            Column = cxGrid1DBTableView1SALDO
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'DEBE'
            Column = cxGrid1DBTableView1DEBE
          end
          item
            Kind = skSum
            FieldName = 'HABER'
            Column = cxGrid1DBTableView1HABER
          end
          item
            Kind = skSum
            FieldName = 'SALDOCPTE'
            Column = cxGrid1DBTableView1SALDO
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooterMultiSummaries = True
        OptionsView.GroupFooters = gfAlwaysVisible
        OptionsView.GroupRowStyle = grsOffice11
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
          Width = 34
        end
        object cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn
          DataBinding.FieldName = 'CLASECPBTE'
          HeaderAlignmentHorz = taCenter
          Width = 27
        end
        object cxGrid1DBTableView1FECHAVTA: TcxGridDBColumn
          DataBinding.FieldName = 'FECHAVTA'
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGrid1DBTableView1FECHAVTO: TcxGridDBColumn
          DataBinding.FieldName = 'FECHAVTO'
          HeaderAlignmentHorz = taCenter
          Width = 75
        end
        object cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn
          DataBinding.FieldName = 'NROCPBTE'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGrid1DBTableView1DETALLE: TcxGridDBColumn
          DataBinding.FieldName = 'DETALLE'
          HeaderAlignmentHorz = taCenter
          Width = 118
        end
        object cxGrid1DBTableView1DEBE: TcxGridDBColumn
          DataBinding.FieldName = 'DEBE'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGrid1DBTableView1HABER: TcxGridDBColumn
          DataBinding.FieldName = 'HABER'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGrid1DBTableView1SALDO: TcxGridDBColumn
          DataBinding.FieldName = 'SALDOCPTE'
          HeaderAlignmentHorz = taCenter
          Width = 111
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object btExcel: TBitBtn
      Left = 529
      Top = 613
      Width = 108
      Height = 30
      Anchors = [akBottom]
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
      TabOrder = 1
      OnClick = btExcelClick
    end
    object btVer: TBitBtn
      Left = 654
      Top = 613
      Width = 91
      Height = 30
      Anchors = [akBottom]
      Caption = 'Ver'
      TabOrder = 2
      OnClick = btVerClick
    end
  end
  object DSMovCC: TDataSource
    DataSet = CDSMovCC
    Left = 551
    Top = 152
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
        DataType = ftString
        Name = 'tipovta'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'tipovta'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'menor'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'mayor'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovCC'
    OnCalcFields = CDSMovCCCalcFields
    Left = 480
    Top = 144
    object CDSMovCCCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      Size = 6
    end
    object CDSMovCCRAZON_SOCIAL: TStringField
      DisplayLabel = 'R.Social'
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSMovCCNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object CDSMovCCDIRECCION_COMERCIAL: TStringField
      FieldName = 'DIRECCION_COMERCIAL'
      Origin = 'DIRECCION_COMERCIAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSMovCCTELEFONO_COMERCIAL_1: TStringField
      FieldName = 'TELEFONO_COMERCIAL_1'
      Origin = 'TELEFONO_COMERCIAL_1'
      ProviderFlags = []
      Size = 10
    end
    object CDSMovCCCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      ProviderFlags = []
      Size = 8
    end
    object CDSMovCCLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      ProviderFlags = []
      Size = 15
    end
    object CDSMovCCTELEFONO_COMERCIAL_2: TStringField
      FieldName = 'TELEFONO_COMERCIAL_2'
      Origin = 'TELEFONO_COMERCIAL_2'
      ProviderFlags = []
      Size = 10
    end
    object CDSMovCCVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      ProviderFlags = []
      Size = 6
    end
    object CDSMovCCZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'ZONA'
      ProviderFlags = []
    end
    object CDSMovCCCORREOELECTRONICO: TStringField
      FieldName = 'CORREOELECTRONICO'
      Origin = 'CORREOELECTRONICO'
      ProviderFlags = []
      Size = 100
    end
    object CDSMovCCFECHAULTIMACOMPRA: TSQLTimeStampField
      FieldName = 'FECHAULTIMACOMPRA'
      Origin = 'FECHAULTIMACOMPRA'
      ProviderFlags = []
    end
    object CDSMovCCTIPO_VTA: TStringField
      FieldName = 'TIPO_VTA'
      Origin = 'TIPO_VTA'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object CDSMovCCTIPOCPBTE: TStringField
      DisplayLabel = 'Tp.'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
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
    object CDSMovCCSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = 'SALDO'
      ProviderFlags = []
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovCCCODIGONOMBRE: TStringField
      FieldKind = fkCalculated
      FieldName = 'CODIGONOMBRE'
      Calculated = True
    end
    object CDSMovCCCLASECPBTE: TStringField
      DisplayLabel = 'Cl.'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSMovCCFECHAVTA: TSQLTimeStampField
      DisplayLabel = 'Fecha Vta.'
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
      ProviderFlags = []
    end
    object CDSMovCCFECHAVTO: TSQLTimeStampField
      DisplayLabel = 'Fecha Vto.'
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
      ProviderFlags = []
    end
    object CDSMovCCLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
      Origin = 'LIMITE_CREDITO'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSMovCCSALDOCPTE: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDOCPTE'
      Origin = 'SALDOCPTE'
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
      
        'select m.CODIGO, m.RAZON_SOCIAL,m.nombre, m.DIRECCION_COMERCIAL,' +
        ' m.TELEFONO_COMERCIAL_1,m.cpostal,m.localidad,'
      
        '       m.TELEFONO_COMERCIAL_2, m.VENDEDOR, m.ZONA, m.CORREOELECT' +
        'RONICO,'
      
        '       m.LIMITE_CREDITO, m.FECHAULTIMACOMPRA,m.tipo_vta,m.debe,m' +
        '.haber,m.tipocpbte,m.clasecpbte,m.nrocpbte,m.detalle,M.FECHAVTA,' +
        'm.fechavto,'
      
        '       (SUM(m.DEBE)-SUM(m.HABER)) AS saldo,m.saldo as SaldoCpte ' +
        'from movccvta_temporal m'
      
        '    WHERE ( m.tipo_vta = :tipovta or :tipovta = '#39'*'#39' ) and M.fech' +
        'avta<=:hasta and m.saldo>0'
      ''
      'group by'
      
        'm.CODIGO, m.RAZON_SOCIAL, m.nombre, m.DIRECCION_COMERCIAL, m.TEL' +
        'EFONO_COMERCIAL_1,m.cpostal,m.localidad,'
      
        '       m.TELEFONO_COMERCIAL_2, m.VENDEDOR, m.ZONA, m.CORREOELECT' +
        'RONICO,'
      
        '       m.LIMITE_CREDITO, m.FECHAULTIMACOMPRA,m.tipo_vta,m.debe,m' +
        '.haber,m.tipocpbte,m.clasecpbte,m.nrocpbte,m.detalle,M.FECHAVTA,' +
        'm.fechavto,'
      '       m.saldo'
      
        'having (SUM(m.DEBE)-SUM(m.HABER))>= :menor and (SUM(m.DEBE)-SUM(' +
        'm.HABER))<=:mayor')
    Left = 352
    Top = 144
    ParamData = <
      item
        Position = 1
        Name = 'tipovta'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 3
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'menor'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'mayor'
        DataType = ftFloat
        ParamType = ptInput
      end>
  end
end

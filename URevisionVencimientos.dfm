object FormRevisionVencimientos: TFormRevisionVencimientos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Revision de Vencimientos'
  ClientHeight = 540
  ClientWidth = 828
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
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 828
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 829
    object Label1: TLabel
      Left = 32
      Top = 11
      Width = 265
      Height = 25
      Caption = 'Revision de Vencimientos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnBase: TPanel
    Left = 0
    Top = 41
    Width = 828
    Height = 458
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 829
    ExplicitHeight = 529
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 826
      Height = 456
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Metropolis'
      ExplicitWidth = 827
      ExplicitHeight = 527
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSVencimientos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        Styles.Content = cxStyle1
        Styles.Header = cxStyle1
        object cxGrid1DBTableView1CUOTA_NRO: TcxGridDBColumn
          DataBinding.FieldName = 'CUOTA_NRO'
          HeaderAlignmentHorz = taCenter
          Width = 65
        end
        object cxGrid1DBTableView1FECHA_INCIO: TcxGridDBColumn
          DataBinding.FieldName = 'FECHA_INCIO'
          HeaderAlignmentHorz = taCenter
          Width = 95
        end
        object cxGrid1DBTableView1ASUNTO: TcxGridDBColumn
          DataBinding.FieldName = 'ASUNTO'
          HeaderAlignmentHorz = taCenter
          Width = 588
        end
      end
      object cxGrid1DBTableView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSDetalles
        DataController.DetailKeyFieldNames = 'ID_CAB'
        DataController.KeyFieldNames = 'ID'
        DataController.MasterKeyFieldNames = 'ID'
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            FieldName = 'IMPORTE'
            Column = cxGrid1DBTableView2IMPORTE1
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Styles.Footer = cxStyle1
        object cxGrid1DBTableView2GASTO_RUBRO1: TcxGridDBColumn
          DataBinding.FieldName = 'GASTO_RUBRO'
          Options.Focusing = False
          Styles.Content = cxStyle1
          Width = 57
        end
        object cxGrid1DBTableView2DETALLE1: TcxGridDBColumn
          DataBinding.FieldName = 'DETALLE'
          Options.Focusing = False
          Width = 264
        end
        object cxGrid1DBTableView2GASTO_CTA1: TcxGridDBColumn
          DataBinding.FieldName = 'GASTO_CTA'
          Options.Focusing = False
          Width = 55
        end
        object cxGrid1DBTableView2DETALLECTA1: TcxGridDBColumn
          DataBinding.FieldName = 'DETALLECTA'
          Options.Focusing = False
        end
        object cxGrid1DBTableView2IMPORTE1: TcxGridDBColumn
          DataBinding.FieldName = 'IMPORTE'
        end
        object cxGrid1DBTableView2FINALIZADO: TcxGridDBColumn
          Caption = 'Finaliz.'
          DataBinding.FieldName = 'FINALIZADO'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          HeaderAlignmentHorz = taCenter
          Width = 40
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
        object cxGrid1Level2: TcxGridLevel
          GridView = cxGrid1DBTableView2
        end
      end
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 499
    Width = 828
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenuHighlight
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = -1
    ExplicitTop = 36
    object btSAlir: TBitBtn
      Left = 680
      Top = 5
      Width = 143
      Height = 31
      Align = alRight
      Caption = 'Salir'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000020000000C05031A46110852AB190C76E31D0E89FF1C0E89FF190C
        76E4120852AD06031B4D0000000E000000030000000000000000000000000000
        000301010519130A55A9211593FF2225AEFF2430C2FF2535CBFF2535CCFF2430
        C3FF2225AFFF211594FF140B58B20101051E0000000400000000000000020101
        03151C1270CD2522A6FF2D3DCCFF394BD3FF3445D1FF2939CDFF2839CDFF3344
        D0FF394AD4FF2D3CCDFF2523A8FF1C1270D20101051D00000003000000091912
        5BA72A27AAFF2F41D0FF3541C7FF2726ABFF3137BCFF384AD3FF384BD3FF3137
        BCFF2726ABFF3540C7FF2E40D0FF2927ACFF1A115EB10000000D08061C3D3129
        A2FD2C3CCCFF3842C6FF5F5DBDFFEDEDF8FF8B89CEFF3337B9FF3437B9FF8B89
        CEFFEDEDF8FF5F5DBDFF3741C6FF2B3ACDFF3028A4FF0907204A1E185F9F373B
        BCFF3042D0FF2621A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
        EDFFF3E9E2FFECE6EBFF2621A5FF2E3FCFFF343ABEFF201A66B0312A92E03542
        CBFF3446D1FF2C2FB5FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
        E2FFEADAD1FF7F6FACFF2B2EB5FF3144D0FF3040CBFF312A95E53E37AEFA3648
        D0FF374AD3FF3A4ED5FF3234B4FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
        E5FF897DB8FF3233B4FF384BD3FF3547D2FF3446D1FF3E37AEFA453FB4FA4557
        D7FF3B50D5FF4C5FDAFF4343B7FF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
        E8FF9087C5FF4242B7FF495DD8FF394CD4FF3F52D4FF443FB3FA403DA1DC5967
        DAFF5B6EDDFF4F4DBAFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
        EAFFFAF5F2FF8F89CAFF4E4DB9FF576ADCFF5765D9FF403EA4E12E2D70987C85
        DDFF8798E8FF291D9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
        D8FFF4ECE7FFE5D9DCFF291D9BFF8494E7FF7A81DDFF33317BAC111125356768
        D0FC9EACEDFF686FCEFF5646A1FFCCB6BCFF7A68A8FF4C4AB6FF4D4BB7FF7A68
        A8FFCBB5BCFF5646A1FF666DCCFF9BAAEEFF696CD0FD1212273F000000043B3B
        79977D84DFFFA5B6F1FF6D74D0FF2D219BFF5151B9FF8EA2ECFF8EA1ECFF5252
        BBFF2D219BFF6B72D0FFA2B3F0FF8086E0FF404183A700000008000000010303
        050C4E509DBC8087E2FFAEBDF3FFA3B6F1FF9DAFF0FF95A9EEFF95A8EEFF9BAD
        EFFFA2B3F0FFACBCF3FF838AE3FF4F52A0C10303051100000002000000000000
        000100000005323464797378D9F8929CEAFFA1AEEFFFB0BFF3FFB0BFF4FFA2AE
        EFFF939DE9FF7479DAF83234647D000000080000000200000000000000000000
        000000000000000000031213232D40437D935D61B5D07378DFFC7378DFFC5D61
        B5D040437D951212223000000004000000010000000000000000}
      TabOrder = 0
      OnClick = btSAlirClick
    end
  end
  object QVencimientos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from  vencimientos where lote = :lote'
      'order by cuota_nro')
    Left = 72
    Top = 105
    ParamData = <
      item
        Position = 1
        Name = 'LOTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QVencimientosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QVencimientosFECHA_INCIO: TSQLTimeStampField
      FieldName = 'FECHA_INCIO'
      Origin = 'FECHA_INCIO'
      Required = True
    end
    object QVencimientosFECHA_FINALIZACION: TSQLTimeStampField
      FieldName = 'FECHA_FINALIZACION'
      Origin = 'FECHA_FINALIZACION'
    end
    object QVencimientosASUNTO: TStringField
      FieldName = 'ASUNTO'
      Origin = 'ASUNTO'
      Size = 200
    end
    object QVencimientosASUNTO_2: TStringField
      FieldName = 'ASUNTO_2'
      Origin = 'ASUNTO_2'
      Size = 200
    end
    object QVencimientosASUNTO_3: TStringField
      FieldName = 'ASUNTO_3'
      Origin = 'ASUNTO_3'
      Size = 200
    end
    object QVencimientosAVISAR: TStringField
      FieldName = 'AVISAR'
      Origin = 'AVISAR'
      FixedChar = True
      Size = 1
    end
    object QVencimientosFRECUENCIA: TStringField
      FieldName = 'FRECUENCIA'
      Origin = 'FRECUENCIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVencimientosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QVencimientosID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
    end
    object QVencimientosTIPO_CPBTE: TStringField
      FieldName = 'TIPO_CPBTE'
      Origin = 'TIPO_CPBTE'
      Size = 2
    end
    object QVencimientosCLASE_CPBTE: TStringField
      FieldName = 'CLASE_CPBTE'
      Origin = 'CLASE_CPBTE'
      Size = 2
    end
    object QVencimientosNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QVencimientosESTADO: TIntegerField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
    end
    object QVencimientosCOLOR: TIntegerField
      FieldName = 'COLOR'
      Origin = 'COLOR'
    end
    object QVencimientosAVISA_INICIO: TSQLTimeStampField
      FieldName = 'AVISA_INICIO'
      Origin = 'AVISA_INICIO'
    end
    object QVencimientosAVISA_TERMINA: TSQLTimeStampField
      FieldName = 'AVISA_TERMINA'
      Origin = 'AVISA_TERMINA'
    end
    object QVencimientosFINALIZADO: TStringField
      FieldName = 'FINALIZADO'
      Origin = 'FINALIZADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QVencimientosTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
    end
    object QVencimientosFECHA_CUMPLIDO: TSQLTimeStampField
      FieldName = 'FECHA_CUMPLIDO'
      Origin = 'FECHA_CUMPLIDO'
    end
    object QVencimientosPARENT_ID: TIntegerField
      FieldName = 'PARENT_ID'
      Origin = 'PARENT_ID'
    end
    object QVencimientosOPCION: TIntegerField
      FieldName = 'OPCION'
      Origin = 'OPCION'
      Required = True
    end
    object QVencimientosCUOTA_NRO: TSmallintField
      FieldName = 'CUOTA_NRO'
      Origin = 'CUOTA_NRO'
      Required = True
    end
    object QVencimientosLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Required = True
    end
  end
  object QDetalles: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select vd.id_cab,vd.id,vd.gasto_rubro,r.detalle,vd.gasto_cta ,c.' +
        'detalle as DetalleCta,vd.importe,v.id_cpbte,v.finalizado'
      ' from vencimientos_detalle vd'
      'left join gastos_rubros r on r.codigo=vd.gasto_rubro'
      'left join gastos_cuentas c on c.codigo=vd.gasto_cta'
      'left join vencimientos v on v.id=vd.id_cab'
      'where v.lote=:lote')
    Left = 72
    Top = 185
    ParamData = <
      item
        Position = 1
        Name = 'LOTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QDetallesID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      Origin = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDetallesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDetallesGASTO_RUBRO: TStringField
      FieldName = 'GASTO_RUBRO'
      Origin = 'GASTO_RUBRO'
      Required = True
      Size = 3
    end
    object QDetallesDETALLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QDetallesGASTO_CTA: TStringField
      FieldName = 'GASTO_CTA'
      Origin = 'GASTO_CTA'
      Required = True
      Size = 6
    end
    object QDetallesDETALLECTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DETALLECTA'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QDetallesIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;,0.00;-'
      EditFormat = '0.00'
    end
    object QDetallesID_CPBTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QDetallesFINALIZADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FINALIZADO'
      Origin = 'FINALIZADO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
  end
  object DSVencimientos: TDataSource
    DataSet = CDSVencimientos
    Left = 320
    Top = 113
  end
  object DSDetalles: TDataSource
    DataSet = CDSDetalles
    Left = 320
    Top = 185
  end
  object DSPDetalles: TDataSetProvider
    DataSet = QDetalles
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 144
    Top = 185
  end
  object CDSDetalles: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'LOTE'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDetalles'
    BeforeEdit = CDSDetallesBeforeEdit
    AfterPost = CDSDetallesAfterPost
    Left = 248
    Top = 185
    object CDSDetallesID_CAB: TIntegerField
      FieldName = 'ID_CAB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDetallesID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDetallesGASTO_RUBRO: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'GASTO_RUBRO'
      Required = True
      Size = 3
    end
    object CDSDetallesDETALLE: TStringField
      DisplayLabel = 'Detalle Rubro'
      FieldName = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object CDSDetallesGASTO_CTA: TStringField
      DisplayLabel = 'Cuenta'
      FieldName = 'GASTO_CTA'
      Required = True
      Size = 6
    end
    object CDSDetallesDETALLECTA: TStringField
      DisplayLabel = 'Detalle Cta'
      FieldName = 'DETALLECTA'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object CDSDetallesIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object CDSDetallesID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSDetallesFINALIZADO: TStringField
      Alignment = taCenter
      FieldName = 'FINALIZADO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPVencimientos: TDataSetProvider
    DataSet = QVencimientos
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 136
    Top = 105
  end
  object CDSVencimientos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'LOTE'
        ParamType = ptInput
      end>
    ProviderName = 'DSPVencimientos'
    AfterPost = CDSDetallesAfterPost
    Left = 224
    Top = 113
    object CDSVencimientosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSVencimientosFECHA_INCIO: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA_INCIO'
      Required = True
    end
    object CDSVencimientosFECHA_FINALIZACION: TSQLTimeStampField
      FieldName = 'FECHA_FINALIZACION'
    end
    object CDSVencimientosASUNTO: TStringField
      DisplayLabel = 'Asunto'
      FieldName = 'ASUNTO'
      Size = 200
    end
    object CDSVencimientosIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object CDSVencimientosID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
    end
    object CDSVencimientosTIPO_CPBTE: TStringField
      FieldName = 'TIPO_CPBTE'
      Size = 2
    end
    object CDSVencimientosCLASE_CPBTE: TStringField
      FieldName = 'CLASE_CPBTE'
      Size = 2
    end
    object CDSVencimientosNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSVencimientosPARENT_ID: TIntegerField
      FieldName = 'PARENT_ID'
    end
    object CDSVencimientosOPCION: TIntegerField
      FieldName = 'OPCION'
      Required = True
    end
    object CDSVencimientosCUOTA_NRO: TSmallintField
      Alignment = taCenter
      DisplayLabel = 'Nro.Cuota'
      FieldName = 'CUOTA_NRO'
      Required = True
    end
    object CDSVencimientosLOTE: TIntegerField
      FieldName = 'LOTE'
      Required = True
    end
    object CDSVencimientosAVISAR: TStringField
      FieldName = 'AVISAR'
      FixedChar = True
      Size = 1
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
end

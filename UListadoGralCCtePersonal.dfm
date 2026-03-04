object FormListadoCCtaPersonal: TFormListadoCCtaPersonal
  Left = 0
  Top = 0
  Caption = 'Listado de Ctas Ctes. Personal'
  ClientHeight = 567
  ClientWidth = 849
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 849
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      849
      65)
    object Label1: TLabel
      Left = 542
      Top = 4
      Width = 35
      Height = 16
      Anchors = [akTop, akRight]
      Caption = 'Desde'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 686
      Top = 4
      Width = 32
      Height = 16
      Anchors = [akTop, akRight]
      Caption = 'Hasta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 29
      Top = 14
      Width = 320
      Height = 33
      Anchors = [akTop, akRight]
      Caption = 'Estado de Cta. Personal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edDesde: TJvDateEdit
      Left = 542
      Top = 23
      Width = 121
      Height = 21
      Anchors = [akTop, akRight]
      ShowNullDate = False
      TabOrder = 0
    end
    object edHasta: TJvDateEdit
      Left = 686
      Top = 23
      Width = 121
      Height = 21
      Anchors = [akTop, akRight]
      ShowNullDate = False
      TabOrder = 1
    end
    object UpDown1: TUpDown
      Left = 813
      Top = 24
      Width = 16
      Height = 20
      Hint = 'Cambia el Per'#237'odo'
      Anchors = [akTop, akRight]
      Max = 10000
      ParentShowHint = False
      Position = 100
      ShowHint = True
      TabOrder = 2
      OnClick = UpDown1Click
    end
  end
  object pnBase: TPanel
    Left = 0
    Top = 65
    Width = 849
    Height = 462
    Align = alClient
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 847
      Height = 460
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSCtaCtes
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            Position = spFooter
            FieldName = 'DEBE'
            Column = cxGrid1DBTableView1DEBE
          end
          item
            Format = ',0.00'
            Kind = skSum
            Position = spFooter
            FieldName = 'HABER'
            Column = cxGrid1DBTableView1HABER
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
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooterMultiSummaries = True
        OptionsView.GroupFooters = gfAlwaysVisible
        object cxGrid1DBTableView1ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Options.Grouping = False
        end
        object cxGrid1DBTableView1IDADELANTO: TcxGridDBColumn
          DataBinding.FieldName = 'IDADELANTO'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Options.Grouping = False
        end
        object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Options.Grouping = False
        end
        object cxGrid1DBTableView1NOMBRE: TcxGridDBColumn
          DataBinding.FieldName = 'NOMBRE'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Options.Grouping = False
        end
        object cxGrid1DBTableView1FECHA: TcxGridDBColumn
          DataBinding.FieldName = 'FECHA'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Options.Grouping = False
          Width = 82
        end
        object cxGrid1DBTableView1CLASECOMP: TcxGridDBColumn
          DataBinding.FieldName = 'CLASECOMP'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Options.Grouping = False
          Width = 41
        end
        object cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn
          DataBinding.FieldName = 'NROCPBTE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Options.Grouping = False
          Width = 89
        end
        object cxGrid1DBTableView1DETALLE: TcxGridDBColumn
          DataBinding.FieldName = 'DETALLE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Options.Grouping = False
          Width = 380
        end
        object cxGrid1DBTableView1DEBE: TcxGridDBColumn
          DataBinding.FieldName = 'DEBE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Options.Grouping = False
          Width = 110
        end
        object cxGrid1DBTableView1HABER: TcxGridDBColumn
          DataBinding.FieldName = 'HABER'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Options.Grouping = False
          Width = 100
        end
        object cxGrid1DBTableView1CODIGONOMBRE: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGONOMBRE'
          Visible = False
          GroupIndex = 0
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Options.Grouping = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 527
    Width = 849
    Height = 40
    Align = alBottom
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 2
    DesignSize = (
      849
      40)
    object BitBtn1: TBitBtn
      Left = 698
      Top = 5
      Width = 75
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Ver'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object btExcel: TBitBtn
      Left = 542
      Top = 5
      Width = 108
      Height = 29
      Anchors = [akTop, akBottom]
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
  end
  object QCtaCTes: TFDQuery
    OnCalcFields = QCtaCTesCalcFields
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select cc.id,cc.idadelanto,cc.codigo,p.nombre,cc.fecha,cc.clasec' +
        'omp,'
      'cc.nrocpbte,cc.detalle,cc.debe,cc.haber from ctactepersonal cc'
      'left join personal p on p.codigo=cc.codigo'
      'where cc.fecha between :desde and :hasta'
      'order by cc.codigo,cc.fecha,cc.id')
    Left = 80
    Top = 153
    ParamData = <
      item
        Name = 'DESDE'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'HASTA'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object QCtaCTesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCtaCTesIDADELANTO: TIntegerField
      FieldName = 'IDADELANTO'
      Origin = 'IDADELANTO'
    end
    object QCtaCTesCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object QCtaCTesNOMBRE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QCtaCTesFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QCtaCTesCLASECOMP: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECOMP'
      Origin = 'CLASECOMP'
      Size = 2
    end
    object QCtaCTesNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object QCtaCTesDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object QCtaCTesDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QCtaCTesHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object QCtaCTesCODIGONOMBRE: TStringField
      DisplayLabel = 'Empleado'
      FieldKind = fkCalculated
      FieldName = 'CODIGONOMBRE'
      Size = 60
      Calculated = True
    end
  end
  object DSCtaCtes: TDataSource
    DataSet = QCtaCTes
    Left = 160
    Top = 145
  end
  object dlgSave1: TSaveDialog
    DefaultExt = 'txt'
    FileName = 'PercepIIBB'
    Title = 'Archivo de Retenciones'
    Left = 561
    Top = 250
  end
end

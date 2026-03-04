object FormUltimaVtaMensual: TFormUltimaVtaMensual
  Left = 82
  Top = 123
  BorderIcons = [biSystemMenu]
  Caption = 'Ultimas Vtas Mensual'
  ClientHeight = 599
  ClientWidth = 1067
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
    Width = 1067
    Height = 599
    Align = alClient
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 417
      Top = 41
      Height = 557
      ExplicitLeft = 440
      ExplicitTop = 256
      ExplicitHeight = 100
    end
    object pnCabecera: TPanel
      Left = 1
      Top = 1
      Width = 1065
      Height = 40
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 0
      DesignSize = (
        1065
        40)
      object Label4: TLabel
        Left = 706
        Top = 15
        Width = 30
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Desde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 703
      end
      object Label5: TLabel
        Left = 865
        Top = 15
        Width = 28
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 862
      end
      object SpeedButton1: TSpeedButton
        Left = 1035
        Top = 12
        Width = 25
        Height = 23
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000001040106112E0F452B6427A3306C2AC50000000000000000000000000000
          000000000000000000000000000000000000000000000B1F0A2E185615742092
          1EB828CA25F722DC20FF61E460FF3D8936FC2C6327B400000000000000000000
          0000000000000615061D144812611D841BA627BD24EA23DA22FF23D922FF26D5
          24FF28D127FF2CCB2AFF63D461FF3E8B37FF3A8233ED00000000000000000000
          0000239E21C925D623FF22DB21FF28D025FF34AD30FF8ADB88FF46B342FF33BD
          30FF34BE30FF35BD31FF67CD64FF3E8B37FF3C8735F500000000000000000000
          00002CCA29FF2CCB2AFF30C52DFF36AF32FF73B56FFFFFFFFFFFA7DFA5FF46A9
          41FF37B932FF36BC32FF68CC65FF3E8B37FF3C8735F500000000000000000000
          000032C22EFF35BD31FF36BA31FF429D3BFFF0F6EFFFFFFFFFFFFFFFFFFFA6DE
          A3FF4EB14AFF48C645FF76D473FF3E8B37FF3C8735F500000000000000000000
          000033C12EFF36BC32FF39A934FF90C08CFFFFFFFFFFFFFFFFFFECF9EBFFB3EA
          B1FF75E073FF74E071FF97E895FF3E8B37FF3C8735F500000000000000000000
          000033C02FFF49C646FF5BA956FFDDEFDCFFFFFFFFFFFFFFFFFFC8EFC7FF90E7
          8EFF7AE378FF7AE378FF9CEA9AFF3E8B37FF3C8735F500000000000000000000
          00004BCE47FF7DE47AFF80E47EFF55A64FFFFFFFFFFFFFFFFFFFCAF0C9FF95E9
          93FF80E57EFF81E57EFFA0EC9FFF3E8B37FF3C8735F500000000000000000000
          000059D656FF83E781FF84E782FF52A14DFFFFFFFFFFFFFFFFFFCCF1CBFF9AEB
          98FF86E884FF86E885FFA5EDA3FF3E8B37FF3C8735F500000000000000000000
          00005CD759FF89E987FF89E988FF55A24FFFFFFFFFFFFFFFFFFFCEF1CDFF9EED
          9DFF8BEA8AFF8CEA8AFFA8EFA6FF3E8B37FF3B8534F200000000000000000000
          00005FD85CFF8EEB8DFF8EEB8DFF5FAB5AFFF0F9F0FFCFF2CEFFA4EAA2FF90EC
          8FFF90EC8FFF91EC90FFB0EFAEFF46A540FF367A30DE00000000000000000000
          000061D95EFF93ED91FF93ED92FF92EB91FF92EB90FF94ED93FF9BEE9AFFABEE
          AAFF99D995FF82C27DFF56B150FF44A440EC050C051500000000000000000000
          000063DA60FF97EE95FF97EE96FFAAF1A9FFA5E5A3FF8ECE8AFF72B66CFF489C
          40FF3E8A37E82A5D25A016311357040904100000000000000000000000000000
          00005FD15BFF98D795FF81C17CFF58A751FF44973DFD34742EC420461C7A0D1C
          0B31000000000000000000000000000000000000000000000000000000000000
          00001D411A7333712DBF285A249A152F13540409040F00000000000000000000
          0000000000000000000000000000000000000000000000000000}
        OnClick = SpeedButton1Click
        ExplicitLeft = 1032
      end
      object UpDown1: TUpDown
        Left = 1012
        Top = 13
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
      object desde: TJvDateEdit
        Left = 743
        Top = 13
        Width = 105
        Height = 21
        Glyph.Data = {
          76050000424D760500000000000036000000280000001C0000000C0000000100
          2000000000004005000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
          0000800000008000000000000000800000000000000000000000800000008080
          8000FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
          0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
          80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
          C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FF00FF00}
        ImageKind = ikCustom
        NumGlyphs = 2
        Anchors = [akTop, akRight]
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 0
      end
      object hasta: TJvDateEdit
        Left = 902
        Top = 13
        Width = 105
        Height = 21
        Glyph.Data = {
          76050000424D760500000000000036000000280000001C0000000C0000000100
          2000000000004005000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
          0000800000008000000000000000800000000000000000000000800000008080
          8000FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
          0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
          80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
          C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FF00FF00}
        ImageKind = ikCustom
        NumGlyphs = 2
        Anchors = [akTop, akRight]
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 1
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 41
      Width = 416
      Height = 557
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Panel2'
      TabOrder = 1
      object JvGradient3: TJvGradient
        Left = 0
        Top = 0
        Width = 416
        Height = 26
        Align = alTop
        Style = grVertical
        StartColor = clGradientInactiveCaption
        EndColor = clWhite
        ExplicitTop = -5
        ExplicitWidth = 350
      end
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 153
        Height = 13
        Caption = 'Total de Articulos Vendidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbgArticulos: TJvDBGrid
        Left = 0
        Top = 26
        Width = 416
        Height = 510
        Align = alClient
        DataSource = DSArticulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlue
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        TitleButtons = True
        OnTitleBtnClick = dbgArticulosTitleBtnClick
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
      end
      object JvDBGridFooter3: TJvDBGridFooter
        Left = 0
        Top = 536
        Width = 416
        Height = 21
        SizeGrip = True
        Columns = <>
        DataSource = DSArticulos
        DBGrid = dbgArticulos
      end
    end
    object Panel4: TPanel
      Left = 420
      Top = 41
      Width = 646
      Height = 557
      Align = alClient
      BevelOuter = bvLowered
      Caption = 'Panel4'
      TabOrder = 2
      object Splitter2: TSplitter
        Left = 1
        Top = 411
        Width = 644
        Height = 4
        Cursor = crVSplit
        Align = alBottom
        ExplicitTop = 317
        ExplicitWidth = 665
      end
      object Panel3: TPanel
        Left = 1
        Top = 415
        Width = 644
        Height = 141
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'Panel3'
        TabOrder = 0
        object dbgFacturasDet: TJvDBGrid
          Left = 0
          Top = 25
          Width = 644
          Height = 97
          Align = alClient
          DataSource = DSFacDet
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clGreen
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          OnTitleBtnClick = dbgFacturasDetTitleBtnClick
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
        end
        object JvDBGridFooter1: TJvDBGridFooter
          Left = 0
          Top = 122
          Width = 644
          Height = 19
          SizeGrip = True
          Columns = <>
          DataSource = DSFacDet
          DBGrid = dbgFacturasDet
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 644
          Height = 25
          Align = alTop
          BevelOuter = bvNone
          Color = clHighlight
          ParentBackground = False
          TabOrder = 2
          object Label3: TLabel
            Left = 8
            Top = 5
            Width = 106
            Height = 13
            Caption = 'Detalles Facturado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object dbgFacturasCab: TJvDBGrid
        Left = 1
        Top = 26
        Width = 644
        Height = 366
        Align = alClient
        DataSource = DSFacCab
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        TitleButtons = True
        OnTitleBtnClick = dbgFacturasCabTitleBtnClick
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
      end
      object JvDBGridFooter2: TJvDBGridFooter
        Left = 1
        Top = 392
        Width = 644
        Height = 19
        SizeGrip = True
        Columns = <>
        DataSource = DSFacCab
        DBGrid = dbgFacturasCab
      end
      object Panel1: TPanel
        Left = 1
        Top = 1
        Width = 644
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        Color = clHighlight
        ParentBackground = False
        TabOrder = 3
        object Label2: TLabel
          Left = 8
          Top = 6
          Width = 111
          Height = 13
          Caption = 'Facturas del Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object DSArticulos: TDataSource
    DataSet = CDSArticulos
    Left = 257
    Top = 217
  end
  object DSFacCab: TDataSource
    DataSet = CDSFacCab
    Left = 588
    Top = 145
  end
  object DSFacDet: TDataSource
    DataSet = CDSFacDet
    Left = 621
    Top = 322
  end
  object DSPArticulos: TDataSetProvider
    DataSet = QArticulos
    Options = []
    Left = 137
    Top = 209
  end
  object DSPFacCab: TDataSetProvider
    DataSet = QFacCab
    Options = []
    Left = 436
    Top = 145
  end
  object DSPFacDet: TDataSetProvider
    DataSet = QFacDet
    Options = []
    Left = 453
    Top = 314
  end
  object CDSArticulos: TClientDataSet
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
        Name = 'SUM'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'SUM_1'
        Attributes = [faReadonly]
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPArticulos'
    StoreDefs = True
    Left = 193
    Top = 209
    object CDSArticulosCODIGOARTICULO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Size = 8
    end
    object CDSArticulosDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 34
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 40
    end
    object CDSArticulosSUM: TFloatField
      DisplayLabel = 'Cant.'
      DisplayWidth = 12
      FieldName = 'SUM'
      Origin = 'SUM'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSArticulosSUM_1: TFloatField
      DisplayLabel = 'Importe'
      DisplayWidth = 12
      FieldName = 'SUM_1'
      Origin = 'SUM'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
  end
  object CDSFacCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPFacCab'
    Left = 500
    Top = 137
    object CDSFacCabID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object CDSFacCabTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      DisplayWidth = 4
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      FixedChar = True
      Size = 2
    end
    object CDSFacCabCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      DisplayWidth = 5
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      FixedChar = True
      Size = 2
    end
    object CDSFacCabNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      DisplayWidth = 19
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      EditMask = 'a-####-########;0; '
      Size = 13
    end
    object CDSFacCabFECHAVTA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      DisplayWidth = 18
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
      Required = True
    end
    object CDSFacCabTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
      DisplayFormat = ',0.00'
    end
  end
  object CDSFacDet: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CABFAC'
    MasterFields = 'ID_FC'
    MasterSource = DSFacCab
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPFacDet'
    Left = 533
    Top = 314
    object CDSFacDetID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      Origin = 'ID_CABFAC'
      Visible = False
    end
    object CDSFacDetCODIGOARTICULO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 10
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Size = 8
    end
    object CDSFacDetDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object CDSFacDetCANTIDAD: TFloatField
      DisplayLabel = 'Can.'
      DisplayWidth = 14
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.00'
    end
    object CDSFacDetUNITARIO_TOTAL: TFloatField
      DisplayLabel = '$ Unit'
      DisplayWidth = 15
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
      DisplayFormat = ',0.00'
    end
    object CDSFacDetTOTAL: TFloatField
      DisplayLabel = 'Total'
      DisplayWidth = 16
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
    end
  end
  object QArticulos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select a.codigoarticulo,a.detalle,sum( a.cantidad),sum(a.total) ' +
        'from  articulos_vendidos a'
      
        'where (a.fechavta between :desde and :hasta) and a.codigo=:codig' +
        'o'
      'group by a.codigoarticulo,a.detalle')
    Left = 81
    Top = 209
    ParamData = <
      item
        Position = 1
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QFacCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select fc.id_fc, fc.tipocpbte,fc.clasecpbte,fc.nrocpbte,fc.fecha' +
        'vta, fc.total from fcvtacab fc'
      'where fc.fechavta between :desde and :hasta and'
      '      fc.codigo=:codigo and fc.tipocpbte<>'#39'NC'#39' and'
      '      fc.anulado<>'#39'S'#39
      'order by fc.fechavta desc')
    Left = 372
    Top = 145
    ParamData = <
      item
        Position = 1
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QFacDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select fd.id_cabfac,fd.codigoarticulo,fd.detalle,fd.cantidad,fd.' +
        'unitario_total,fd.total from fcvtadet fd'
      'where fd.id_cabfac =:id')
    Left = 381
    Top = 306
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end

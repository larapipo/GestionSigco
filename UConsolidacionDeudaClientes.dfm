object FormConsolidacionDeudaCliente: TFormConsolidacionDeudaCliente
  Left = 327
  Top = 121
  BorderIcons = [biSystemMenu]
  Caption = 'Consolidacion de Deuda'
  ClientHeight = 649
  ClientWidth = 628
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
  DesignSize = (
    628
    649)
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 649
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object dbgMovimientos: TJvDBGrid
      Left = 1
      Top = 1
      Width = 626
      Height = 463
      Align = alClient
      DataSource = DSClientes
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
      PopupMenu = PopupMenu1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      MultiSelect = True
      TitleButtons = True
      OnTitleBtnClick = dbgMovimientosTitleBtnClick
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'Codigo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAZON_SOCIAL'
          Title.Alignment = taCenter
          Title.Caption = 'Razon Social'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 380
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SALDO'
          Title.Alignment = taCenter
          Title.Caption = 'Saldo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 102
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 1
      Top = 487
      Width = 626
      Height = 120
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 10
        Width = 33
        Height = 13
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 9
        Top = 65
        Width = 40
        Height = 13
        Caption = 'Sucursal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 168
        Top = 65
        Width = 94
        Height = 13
        Caption = 'Clase Comprobante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 391
        Top = 37
        Width = 199
        Height = 52
        Caption = 
          'Este procedimiento, traspasa la deuda de'#13#10'los cliente del listad' +
          'o el que se designe, '#13#10'Generando un Ajuste de Cta. en ambas. '#13#10'U' +
          'no por el debe y otro por el haber'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object spSelect: TSpeedButton
        Left = 378
        Top = 0
        Width = 23
        Height = 22
        Hint = 'Seleccionar Todos'
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000010000000000000000
          0000000000000101010002020200030303000404040005050500070707000909
          09000A0A0A000B0B0B000C0C0C000D0D0D0019130D0025190D00311F0D003C24
          0D004E2D0C005F350B006E3C0A007A4209008A4908009A510700A8570500B25B
          0400BA5F0300BF610300C3630200C6650200C9660200CA680500CC6B0900CE70
          0F00D1741500D47A1D00D7812600DB893100E0913C00E2964300E4984700E59A
          4A00E4984700E2964500E0924000DE8E3C00DC8B3800D7853300D37E2D00CD76
          2700C1661D00B7581300AF4E0B00AC4A0900AB480800AB480800AB490800A947
          0900A7450900A5430A00A2400A009F3E0B009E3C0B009D3B0C009C3B0C009B3B
          0C009B3A0C009A390C0096380C0090350B0086320A007C2E0A00722B09006526
          08005E2307005E230700602407006125080065260800682708006D290900732B
          0A00782E0B007F310D00853410008C371500903B1E007B3C3E00643D62004F3D
          8300413D9A00343EAE00293EBF00203ECF00193ED900143EE200103EE9000C3E
          EF00093FF400083EF600073EF700063EF800063EF900063EF900063EF900073E
          F900073FF800083FF700093FF6000A40F5000B41F3000D41F1000F42EE001244
          EB001546E7001A48E2001F4BDB00264ED4002F52CA003958BF00465FB1004C62
          AC005265A6005869A0005F6D9A00677193006F768D00777A8600808080008181
          8100828282008383830084848400858585008686860087878700888888008989
          89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
          9100929292009393930094949400959595009696960097979700989898009999
          99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
          A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
          A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
          B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
          B900BABABA00BBBBBB00BCBCBC00BDBDBD00BEBEBE00BFBFBF00C0C0C000C1C1
          C100C2C2C200C3C3C300C4C4C400C8C5C100CCC7BF00D0C8BE00D3C9BD00D5CA
          BC00DACBB800DDCCB600DFCDB500E2CDB400E2C6B900E8AAC100F179D000F84D
          DE00FC33E600FE24EC00FE18F200FE0CF800FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00E9E91EE9E9E9
          4040404040E9E9E9E9E9E9E91E1E1E1F40CD292540E9E9E9E9E9E9E91EE9E9E9
          4340424240E9E9E9E9E9E9E91EE9E9E9E9E9E9E9E9E9E9E9E9E9E9E91EE9E9E9
          4040404040E9E9E9E9E9E9E91E1E1E1E40CD292540E9E9E9E9E9E9E91EE9E9E9
          4340424240E9E9E9E9E9E9E91EE9E9E9E9E9E9E9E9E9E9E9E9E9E9E91EE9E9E9
          4040404040E9E9E9E9E9E9E91E1E1E1E40CD292540E9E9E9E9E9E9E91EE9E9E9
          4340424240E9E9E9E9E94040404040E9E9E9E9E9E902020202E940CD292540E9
          E9E9E9E9E902E96602E94340424240E9E9E9E9E9E90266E966E9E9E9E9E9E9E9
          E9E9E9E9E90202020266E9E9E9E9E9E9E9E9E9E9E9E9E9E9E966}
        ParentShowHint = False
        ShowHint = True
        OnClick = spSelectClick
      end
      object spunselect: TSpeedButton
        Left = 407
        Top = 0
        Width = 23
        Height = 22
        Hint = 'Deseleccionar Todos'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF892602FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FF8A27039C34028A2703FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8A2703AD4101AB3E018A27
          03FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FF8A27038E2903B849009F35018A2703FF00FFFF00FF892602892602
          8926028926028926028926028926028A27038A2703FF00FF8A27038E2903B849
          009830028A2703FF00FF892602D8721BC65B0CB64902B44300B54500B64500B6
          46009C3402892602FF00FF8A2703932E02B849008E2903FF00FF892602FFA637
          E27B1ED86C10892602892602892602892602892602FF00FFFF00FFFF00FF8A27
          03A63B01A63B018A2703892602FFAA39E27B1EDE791EC1590F872302FF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FF902B02B64500892703892602FFAA39
          A03B0A8A2803F6932AAC460C872402FF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF892603C45100892603892602FFAB3A8926028623019D3809FA982EC25B1287
          2402FF00FFFF00FFFF00FFFF00FF8A2703932D02BC4B00892603892602FFAB3A
          892602FF00FF8824029E3809EB8928D16C198E2803892502FF00FF8A26038926
          03B14300A63B018A2703892602FFAC3A892602FF00FFFF00FF8925028F2A03D5
          701FEA8623AB43099A3403972F02B14300B645008E2903FF00FF882402FB9C33
          892602FF00FFFF00FFFF00FF892602882402A5400CCB6516CB600FB246039A33
          028926038A2703FF00FFFF00FF892502FF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FF8926028925028926028926038A2703FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        ParentShowHint = False
        ShowHint = True
        OnClick = spunselectClick
      end
      object lbRegistros: TLabel
        Left = 131
        Top = 6
        Width = 30
        Height = 13
        Caption = 'Reg ..'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ceCliente: TJvComboEdit
        Left = 9
        Top = 29
        Width = 73
        Height = 21
        AlwaysEnableButton = True
        ButtonWidth = 16
        ClickKey = 16397
        Glyph.Data = {
          4E000000424D4E000000000000003E000000280000000A000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FFC000003300000033000000FFC00000}
        MaxLength = 6
        TabOrder = 0
        Text = ''
        OnButtonClick = ceClienteButtonClick
        OnKeyPress = ceClienteKeyPress
      end
      object edNombreCliente: TEdit
        Left = 88
        Top = 28
        Width = 273
        Height = 21
        Color = clInfoBk
        Enabled = False
        TabOrder = 1
      end
      object dbcSucursal: TJvDBLookupCombo
        Left = 9
        Top = 84
        Width = 153
        Height = 21
        EmptyValue = '-1'
        LookupField = 'CODIGO'
        LookupDisplay = 'DETALLE'
        LookupSource = DSSucursal
        TabOrder = 2
        OnChange = dbcSucursalChange
      end
      object dbcComprobantes: TJvDBLookupCombo
        Left = 168
        Top = 84
        Width = 217
        Height = 21
        EmptyValue = '-1'
        LookupField = 'ID_COMPROBANTE'
        LookupDisplay = 'DENOMINACION'
        LookupSource = DSComprobantes
        TabOrder = 3
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 607
      Width = 626
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      object btConsolidar: TBitBtn
        Left = 523
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Consolidar'
        TabOrder = 0
        OnClick = btConsolidarClick
      end
    end
    object sbEstado: TStatusBar
      Left = 1
      Top = 464
      Width = 626
      Height = 23
      Panels = <>
      SimplePanel = True
      ExplicitTop = 468
    end
  end
  object edTotal: TJvCalcEdit
    Left = 478
    Top = 465
    Width = 121
    Height = 21
    DisplayFormat = ',0.00'
    Anchors = [akLeft, akBottom]
    ShowButton = False
    TabOrder = 1
    DecimalPlacesAlwaysShown = False
  end
  object JvDBGridExcelExport1: TJvDBGridExcelExport
    Caption = 'Exporting to MS Excel...'
    UseFieldGetText = True
    Grid = dbgMovimientos
    Visible = True
    AutoFit = False
    Left = 488
    Top = 176
  end
  object DSClientes: TDataSource
    Left = 544
    Top = 320
  end
  object QClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT C.*  FROM Clientes C'
      'where (c.codigo=:codigo)')
    Left = 48
    Top = 224
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object QClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Required = True
      Size = 35
    end
    object QClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
    object QClientesDIRECCION_PARTICULAR: TStringField
      FieldName = 'DIRECCION_PARTICULAR'
      Size = 35
    end
    object QClientesDIRECCION_COMERCIAL: TStringField
      FieldName = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object QClientesTELEFONO_PARTICULAR: TStringField
      FieldName = 'TELEFONO_PARTICULAR'
      Size = 10
    end
    object QClientesTELEFONO_COMERCIAL_1: TStringField
      FieldName = 'TELEFONO_COMERCIAL_1'
      Size = 10
    end
    object QClientesTELEFONO_COMERCIAL_2: TStringField
      FieldName = 'TELEFONO_COMERCIAL_2'
      Size = 10
    end
    object QClientesTELEFONO_CELULAR: TStringField
      FieldName = 'TELEFONO_CELULAR'
      Size = 11
    end
    object QClientesID_COD_POSTAL: TIntegerField
      FieldName = 'ID_COD_POSTAL'
    end
    object QClientesCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object QClientesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object QClientesCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Required = True
    end
    object QClientesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object QClientesACTIVO: TStringField
      FieldName = 'ACTIVO'
      FixedChar = True
      Size = 1
    end
  end
  object DSPComprobantes: TDataSetProvider
    DataSet = QComprobantes
    Options = []
    Left = 352
    Top = 96
  end
  object DSComprobantes: TDataSource
    DataSet = CDSComprobantes
    Left = 176
    Top = 96
  end
  object CDSComprobantes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'suc'
        ParamType = ptInput
      end>
    ProviderName = 'DSPComprobantes'
    Left = 232
    Top = 96
    object CDSComprobantesID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
    object CDSComprobantesTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      FixedChar = True
      Size = 2
    end
    object CDSComprobantesCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      FixedChar = True
      Size = 2
    end
    object CDSComprobantesDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Size = 15
    end
    object CDSComprobantesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSComprobantesLETRA: TStringField
      FieldName = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Size = 4
    end
    object CDSComprobantesNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object CDSComprobantesTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
    end
    object CDSComprobantesAFECTA_IVA: TStringField
      FieldName = 'AFECTA_IVA'
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      FixedChar = True
      Size = 1
    end
    object CDSComprobantesDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      FixedChar = True
      Size = 1
    end
  end
  object QComprobantes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from comprobantes where sucursal=:suc and compra_venta=' +
        #39'V'#39' and'
      '(tipo_comprob='#39'AJ'#39')')
    Left = 296
    Top = 96
    ParamData = <
      item
        Name = 'suc'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QComprobantesID_COMPROBANTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_COMPROBANTE'
      Origin = 'DBMAIN.COMPROBANTES.ID_COMPROBANTE'
    end
    object QComprobantesTIPO_COMPROB: TStringField
      DisplayWidth = 2
      FieldName = 'TIPO_COMPROB'
      Origin = 'DBMAIN.COMPROBANTES.TIPO_COMPROB'
      FixedChar = True
      Size = 2
    end
    object QComprobantesCLASE_COMPROB: TStringField
      DisplayWidth = 2
      FieldName = 'CLASE_COMPROB'
      Origin = 'DBMAIN.COMPROBANTES.CLASE_COMPROB'
      FixedChar = True
      Size = 2
    end
    object QComprobantesDENOMINACION: TStringField
      DisplayWidth = 15
      FieldName = 'DENOMINACION'
      Origin = 'DBMAIN.COMPROBANTES.DENOMINACION'
      Size = 15
    end
    object QComprobantesSUCURSAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'SUCURSAL'
      Origin = 'DBMAIN.COMPROBANTES.SUCURSAL'
    end
    object QComprobantesLETRA: TStringField
      DisplayWidth = 1
      FieldName = 'LETRA'
      Origin = 'DBMAIN.COMPROBANTES.LETRA'
      FixedChar = True
      Size = 1
    end
    object QComprobantesPREFIJO: TStringField
      DisplayWidth = 4
      FieldName = 'PREFIJO'
      Origin = 'DBMAIN.COMPROBANTES.PREFIJO'
      Size = 4
    end
    object QComprobantesNUMERARCION_PROPIA: TStringField
      DisplayWidth = 1
      FieldName = 'NUMERARCION_PROPIA'
      Origin = 'DBMAIN.COMPROBANTES.NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object QComprobantesNUMERO: TStringField
      DisplayWidth = 8
      FieldName = 'NUMERO'
      Origin = 'DBMAIN.COMPROBANTES.NUMERO'
      Size = 8
    end
    object QComprobantesTOMA_NRO_DE: TIntegerField
      DisplayWidth = 10
      FieldName = 'TOMA_NRO_DE'
      Origin = 'DBMAIN.COMPROBANTES.TOMA_NRO_DE'
    end
    object QComprobantesAFECTA_IVA: TStringField
      DisplayWidth = 1
      FieldName = 'AFECTA_IVA'
      Origin = 'DBMAIN.COMPROBANTES.AFECTA_IVA'
      FixedChar = True
      Size = 1
    end
    object QComprobantesAFECTA_CC: TStringField
      DisplayWidth = 1
      FieldName = 'AFECTA_CC'
      Origin = 'DBMAIN.COMPROBANTES.AFECTA_CC'
      FixedChar = True
      Size = 1
    end
    object QComprobantesDESGLOZA_IVA: TStringField
      DisplayWidth = 1
      FieldName = 'DESGLOZA_IVA'
      Origin = 'DBMAIN.COMPROBANTES.DESGLOZA_IVA'
      FixedChar = True
      Size = 1
    end
    object QComprobantesCOMPRA_VENTA: TStringField
      DisplayWidth = 1
      FieldName = 'COMPRA_VENTA'
      Origin = 'DBMAIN.COMPROBANTES.COMPRA_VENTA'
      FixedChar = True
      Size = 1
    end
    object QComprobantesCOPIAS: TIntegerField
      DisplayWidth = 10
      FieldName = 'COPIAS'
      Origin = 'DBMAIN.COMPROBANTES.COPIAS'
    end
    object QComprobantesREPORTE: TStringField
      DisplayWidth = 100
      FieldName = 'REPORTE'
      Origin = 'DBMAIN.COMPROBANTES.REPORTE'
      Size = 100
    end
    object QComprobantesIMPRIME: TStringField
      DisplayWidth = 1
      FieldName = 'IMPRIME'
      Origin = 'DBMAIN.COMPROBANTES.IMPRIME'
      FixedChar = True
      Size = 1
    end
    object QComprobantesFISCAL: TStringField
      DisplayWidth = 1
      FieldName = 'FISCAL'
      Origin = 'DBMAIN.COMPROBANTES.FISCAL'
      FixedChar = True
      Size = 1
    end
    object QComprobantesNOMBREIMPRESORA: TStringField
      DisplayWidth = 15
      FieldName = 'NOMBREIMPRESORA'
      Origin = 'DBMAIN.COMPROBANTES.NOMBREIMPRESORA'
      Size = 15
    end
    object QComprobantesPENDIENTEIMPRESION: TStringField
      DisplayWidth = 1
      FieldName = 'PENDIENTEIMPRESION'
      Origin = 'DBMAIN.COMPROBANTES.PENDIENTEIMPRESION'
      FixedChar = True
      Size = 1
    end
    object QComprobantesLINEAS_DETALLE: TSmallintField
      DisplayWidth = 10
      FieldName = 'LINEAS_DETALLE'
      Origin = 'DBMAIN.COMPROBANTES.LINEAS_DETALLE'
    end
    object QComprobantesCALCULA_IVA_ARTICULOS: TStringField
      DisplayWidth = 1
      FieldName = 'CALCULA_IVA_ARTICULOS'
      Origin = 'DBMAIN.COMPROBANTES.CALCULA_IVA_ARTICULOS'
      FixedChar = True
      Size = 1
    end
  end
  object QSucursal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from sucursal ')
    Left = 312
    Top = 384
    object QSucursalCODIGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Origin = 'DBMAIN.SUCURSAL.CODIGO'
    end
    object QSucursalDETALLE: TStringField
      DisplayWidth = 35
      FieldName = 'DETALLE'
      Origin = 'DBMAIN.SUCURSAL.DETALLE'
      Size = 35
    end
  end
  object DSPSucursal: TDataSetProvider
    DataSet = QSucursal
    Options = []
    Left = 376
    Top = 384
  end
  object CDSSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSucursal'
    Left = 528
    Top = 384
    object CDSSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CDSSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object DSSucursal: TDataSource
    DataSet = CDSSucursal
    Left = 448
    Top = 384
  end
  object DSPClientes: TDataSetProvider
    DataSet = QClientes
    Options = []
    Left = 112
    Top = 224
  end
  object IBId_Ajuste: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_AJUSTES_CC_CLIENTE'
    SystemGenerators = False
    Left = 560
    Top = 225
  end
  object QInsertarRegistro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'insert into reg_consolida_ctas ( id,cta_destino,cta_origen,impor' +
        'te,id_ajuste_destino)'
      
        'values (gen_id(next_id_reg_consolida_ctas,1),:ctadestino,:ctaori' +
        'gen,:importe,:idajustedestino)')
    Left = 368
    Top = 248
    ParamData = <
      item
        Name = 'ctadestino'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'ctaorigen'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'importe'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Name = 'idajustedestino'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object spIngresarAjuste: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDate
      end>
    StoredProcName = 'INGRESAR_CONSOLIDACION'
    Left = 96
    Top = 304
    ParamData = <
      item
        Position = 1
        Name = 'ID_AJUSTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ID_COMPROB'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'CLIENTE'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 4
        Name = 'DEBE'
        DataType = ftFMTBcd
        Precision = 15
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'HABER'
        DataType = ftFMTBcd
        Precision = 15
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'DETALLE'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 7
        Name = 'FECHA_OP'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 10
        Name = 'OBSERVACIONES'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 11
        Name = 'FECHA_VTO'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 12
        Name = 'LOTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 13
        Name = 'ID_MOVCC'
        DataType = ftInteger
        ParamType = ptOutput
      end
      item
        Position = 14
        Name = 'ID_AJUSTE_REALIZADO'
        DataType = ftInteger
        ParamType = ptOutput
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 248
    Top = 176
    object ExportarExcel1: TMenuItem
      Caption = 'Exportar Excel'
      OnClick = ExportarExcel1Click
    end
  end
  object SaveDialog1: TSaveDialog
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 496
    Top = 104
  end
end

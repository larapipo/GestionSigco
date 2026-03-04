object FormConciliacionChePropios: TFormConciliacionChePropios
  Left = 325
  Top = 160
  Caption = 'Conciliaci'#243'n de Cheques Propios'
  ClientHeight = 627
  ClientWidth = 732
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 732
    Height = 627
    Align = alClient
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    OnMouseMove = Panel1MouseMove
    DesignSize = (
      732
      627)
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 31
      Height = 13
      Caption = 'Banco'
    end
    object btAceptar: TBitBtn
      Left = 544
      Top = 571
      Width = 75
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = '&Aceptar'
      Glyph.Data = {
        F2010000424DF201000000000000760000002800000024000000130000000100
        0400000000007C01000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
        3333333333388F3333333333000033334224333333333333338338F333333333
        0000333422224333333333333833338F33333333000033422222243333333333
        83333338F3333333000034222A22224333333338F33F33338F33333300003222
        A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
        38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
        2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
        0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
        333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
        33333A2224A2233333333338F338F83300003333333333A2224A333333333333
        8F338F33000033333333333A222433333333333338F338F30000333333333333
        A224333333333333338F38F300003333333333333A223333333333333338F8F3
        000033333333333333A3333333333333333383330000}
      ModalResult = 8
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btAceptarClick
    end
    object BitBtn1: TBitBtn
      Left = 8
      Top = 571
      Width = 75
      Height = 25
      Action = Buscar
      Anchors = [akLeft, akBottom]
      Caption = 'Buscar'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDD007777000
        DDDDD07888F8887770DD078887777888770D78778FFFF777807D77F777777788
        70700F78888888788070778788888877F07D787888777887F00D08877888877F
        0DDDD07F8777788770DDDDD007777788770DDDDDDDDDD0770070DDDDDDDDDD00
        0007DDDDDDDDDDD00000DDDDDDDDDDDD0000DDDDDDDDDDDDD000}
      TabOrder = 1
    end
    object btSalir: TBitBtn
      Left = 625
      Top = 569
      Width = 75
      Height = 27
      Action = Salir
      Anchors = [akLeft, akBottom]
      Caption = '&Salir'
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
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030707070707
        070707070707070707070707070703FFFFFFFFFFFFFFFFFFFFFFFF0303030303
        03FFF8F8F8F8F8F8F8F8F8F8F8F8FF07FF07FF07F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8030303030303F8F8F8F8F8F8F8F8F8F8F8F8F80707FF07FF07F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8FF030303FFFFF8F8F80404040404040000F8F8F8FFFFFF
        040404040404F8F8F8F8F8F8F8F8F8F8F8030303F8F8F8F8F803030303030304
        FD05000007FFFFFF0403030303030303030303F8FFF8F8F8FF030303F8FF0303
        030303030303030405FD0500FFFFFFFF0403030303030303030303F8F807F8F8
        FF030303F8FF03030303030303030304FD05FD00FFFFFFFF0403030303030303
        030303F8FFF807F8FF030303F8FF0303030303030303030405FD0500FFFEFFFE
        0403030303030303030303F8F807F8F8FF030303F8FF03030303030303030304
        FD05FD00FFFFFFFF0403030303030303030303F8FFF807F8FF030303F8FF0303
        030303030303030405FD0500FFFEFFFE0403030303030303030303F8F807F8F8
        FF030303F8FF03030303030303030304FD05FD00FFFFFFFF0403030303030303
        030303F8FFF807F8FF030303F8FF0303030303030303030405FD0500FFFEFFFE
        0403030303030303030303F8F807F8F8FF030303F8FF03030303030303030304
        FD05FD00FEFFFEFF0403030303030303030303F8FFF807F8FF030303F8FF0303
        030303030303030405FD0500FFFEFFFE0403030303030303030303F8F807F8F8
        FF030303F8FF03030303030303030304FD05FD00FEFFFEFF0403030303030303
        030303F8FFF8FFF8FFFFFFFFF8FF030303030303030303040404040404040404
        0403030303030303030303F8F8F8F8F8F8F8F8F8F80303030303030303030303
        03030303030303030303030303030303030303030303FFFFFFFFFFFF03030303
        0303030303030303030000000000000303030303030303030303030303F8F8F8
        F8F8F8FF0303030303030303030303030300FAFAFAFA00030303030303030303
        0303030303F8FFFFFFFFF8FF0303030303030303030303030300000000000003
        03030303030303030303030303F8F8F8F8F8F803030303030303}
      NumGlyphs = 2
      TabOrder = 2
    end
    object dbgChe: TJvDBGrid
      Left = 8
      Top = 62
      Width = 718
      Height = 474
      Anchors = [akLeft, akTop, akBottom]
      DataSource = DSCheques
      DrawingStyle = gdsClassic
      FixedColor = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clYellow
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnColEnter = dbgCheColEnter
      OnDblClick = dbgCheDblClick
      OnKeyDown = dbgCheKeyDown
      OnMouseMove = dbgCheMouseMove
      SortMarker = smDown
      TitleButtons = True
      OnTitleBtnClick = dbgCheTitleBtnClick
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <
        item
          ControlName = 'JvDBDateEdit1'
          FieldName = 'FECHA_DEBITO'
          FitCell = fcCellSize
          LeaveOnEnterKey = True
          LeaveOnUpDownKey = True
        end>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'FECHA_EMISION'
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 101
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'FECHA_COBRO'
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 94
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'NUMERO'
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 69
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'ORDEN_DE'
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 243
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'IMPORTE'
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 85
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FECHA_DEBITO'
          Title.Alignment = taCenter
          Width = 82
          Visible = True
        end>
    end
    object JvDBDateEdit1: TJvDBDateEdit
      Left = 580
      Top = 120
      Width = 121
      Height = 21
      DataField = 'FECHA_DEBITO'
      DataSource = DSCheques
      ShowNullDate = False
      TabOrder = 4
      Visible = False
    end
    object sbEstado: TStatusBar
      Left = 1
      Top = 602
      Width = 730
      Height = 24
      Color = clMenuHighlight
      Panels = <>
      SimplePanel = True
      StyleName = 'Windows10 Blue'
    end
    object chFechaDebito: TCheckBox
      Left = 372
      Top = 7
      Width = 349
      Height = 17
      BiDiMode = bdRightToLeft
      Caption = 'Aplicar la Fecha del Cobro Prevista al Debitar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 6
      OnClick = chFechaDebitoClick
    end
    object dbcBancoas: TJvDBLookupCombo
      Left = 8
      Top = 27
      Width = 305
      Height = 21
      LookupField = 'ID_CUENTA'
      LookupDisplay = 'NOMBRE'
      LookupSource = DSBancos
      TabOrder = 7
      OnClick = dbcBancoasClick
    end
    object chFechaEmision: TCheckBox
      Left = 372
      Top = 30
      Width = 349
      Height = 17
      BiDiMode = bdRightToLeft
      Caption = 'Aplicar la Fecha de Emision al Debitar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 8
      OnClick = chFechaEmisionClick
    end
    object BitBtn2: TBitBtn
      Left = 120
      Top = 571
      Width = 161
      Height = 25
      Action = PonerFechaDebito
      Anchors = [akLeft, akBottom]
      Caption = 'Poner la Fecha de Debito'
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000010000000000000101
        0100020202000303030004040400050505000606060007070700080808000909
        09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
        1100121212001313130014141400151515001616160017171700181818001919
        19001A1A1A001B1B1B001C1C1C00231D1B002A1E1A00301E1900361F18003C20
        1700412016004921140051211200572110005C210F0061210D0065210C006920
        0A006E20090072200700771F05007B1F04007E1F04007F1E0300811E0200811E
        0200811E0200811E0100811F0200801F0200801F02007F2002007E2002007B21
        02007623020070250200672802005D2C02005030010044340100343A01002140
        0100144500000E46000009480000074800000549000003490000034A0000024A
        0000024A0000024A0000014A0000024A0000024A0000044A0000064A0000094A
        0000115105001F570900315C0C00475E0E005A5F0F006C5F0E007F5C0C009358
        0900A1520500B04B0000B44B0000B84B0000BA4B0000BB4B0000BC4B0000BC4B
        0000BC4B0000BC4B0000BC4B0000BC4B0000BC4B0000BC4B0000BC4B0000BC4C
        0000BC4C0000BC4C0000BC4C0000BC4C0100BB4C0200BA4D0300B94D0500B74E
        0800B5500B00B2511000AE541700AA561E00A45A28009F5E310099623D009268
        4B008D6C57008A705E008773650084776D00817B76007F7F7F00808080008181
        8100828282008383830084848400858585008686860087878700888888008989
        89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
        9100929292009393930094949400959595009696960097979700989898009999
        99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
        A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
        A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
        B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
        B900BABABA00BBBBBB00BCBCBC00BDBDBD00BEBEBE00BFBFBF00C0C0C000C1C1
        C100C5C4C300CAC8C500CECBC700D2CEC900D5D1CB00DBD5CE00E2DBD300E9E2
        D800F1E9E000F6EFE500FAF3E900FCF5EC00FDF7EE00FEF8F000FEF8F100FEF9
        F200FEF8F000FEF7ED00FEF4E900FEF3E500FEF1E300FEF0E000FEEFDF00FEEE
        DC00FEECD900FEEBD500FEEAD300FEE9D100FEE8CF00FEE6CD00FEE5CA00FEE4
        C700FEE3C500FEE0C600FEDBC600FED3C800FEC4CC00FEB3D000FE95D600FE79
        DC00FE53E600FE32F000FE18F700FE02FE00FE00FE00FE00FE00FE00FE00FE00
        FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
        FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00F6F6F6F6F6F6
        F6F6F6F6F6F6F6F6F6F66C6C6C6C6C6C6CF6F6F6F6F6F6F6F6F6D1D3D7DDE2E3
        6CF6F6F6F6F6F6F6F6F6D1D1D5DADFE36CF6F6F6F6F6F6F6F6F6D1D1D3D7DCE2
        6CF6F6F6F6F6F6F6F6F63333333333336CF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
        F6F64CF66C3333333333F6F6F6F6F6F6F64C4CF66CD3D7DDE2E3F6F6F6F6F6F6
        4C7B4CF66CD1D5DADFE3F6F6F6F6F6F6F64C4CF66CD1D3D7DCE2F6F6F6F6F6F6
        F6F64CF66C33333333333333333333336CF6F6F6F6F6F6F6F6F6D1D3D7DDE2E3
        6CF6F6F6F6F6F6F6F6F6D1D1D5DADFE36CF6F6F6F6F6F6F6F6F6D1D1D3D7DCE2
        6CF6F6F6F6F6F6F6F6F66C6C6C6C6C6C6CF6F6F6F6F6F6F6F6F6}
      TabOrder = 9
    end
  end
  object DSBancos: TDataSource
    DataSet = QBancos
    Left = 256
    Top = 224
  end
  object DSPCheques: TDataSetProvider
    DataSet = QCheques
    Options = []
    Left = 144
    Top = 352
  end
  object CDSCheques: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'FECHA_EMISION'
        DataType = ftTimeStamp
      end
      item
        Name = 'FECHA_COBRO'
        DataType = ftTimeStamp
      end
      item
        Name = 'ID_CHEQUE_PRO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_CHEQUERA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'MUESTRACHEQUERA'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ID_CUENTA_BANCO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'MUESTRACUENTACAJABCO'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 25
      end
      item
        Name = 'ID_BANCO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ORDEN_DE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'NUMERO'
        DataType = ftInteger
      end
      item
        Name = 'FECHA_DEBITO'
        DataType = ftTimeStamp
      end
      item
        Name = 'UNIDADES'
        DataType = ftFloat
      end
      item
        Name = 'IMPORTE'
        DataType = ftFloat
      end
      item
        Name = 'DEBITADO'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FECHA'
        DataType = ftDate
      end>
    IndexDefs = <
      item
        Name = 'FECHA_EMISION'
        Fields = 'FECHA_EMISION'
        Options = [ixDescending]
      end
      item
        Name = 'FECHA_COBRO'
        Fields = 'FECHA_COBRO'
        Options = [ixDescending]
      end
      item
        Name = 'NUMERO'
        Fields = 'NUMERO'
      end
      item
        Name = 'ORDEN_DE'
        Fields = 'ORDEN_DE'
      end
      item
        Name = 'IMPORTE'
        Fields = 'IMPORTE'
      end
      item
        Name = 'FECHA_DEBITO'
        Expression = 'FECHA_DEBITO'
        Options = [ixDescending, ixExpression]
      end>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCheques'
    StoreDefs = True
    BeforeInsert = CDSChequesBeforeInsert
    Left = 208
    Top = 352
    object CDSChequesFECHA_EMISION: TSQLTimeStampField
      DisplayLabel = 'Fecha Emision'
      FieldName = 'FECHA_EMISION'
      Origin = 'FECHA_EMISION'
    end
    object CDSChequesFECHA_COBRO: TSQLTimeStampField
      DisplayLabel = 'Fecha Cobro'
      FieldName = 'FECHA_COBRO'
      Origin = 'FECHA_COBRO'
    end
    object CDSChequesID_CHEQUE_PRO: TIntegerField
      FieldName = 'ID_CHEQUE_PRO'
      Origin = 'ID_CHEQUE_PRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSChequesID_CHEQUERA: TIntegerField
      FieldName = 'ID_CHEQUERA'
      Origin = 'ID_CHEQUERA'
      Required = True
    end
    object CDSChequesMUESTRACHEQUERA: TStringField
      FieldName = 'MUESTRACHEQUERA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 30
    end
    object CDSChequesID_CUENTA_BANCO: TIntegerField
      FieldName = 'ID_CUENTA_BANCO'
      Origin = 'ID_CUENTA_BANCO'
      Required = True
    end
    object CDSChequesMUESTRACUENTACAJABCO: TStringField
      FieldName = 'MUESTRACUENTACAJABCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object CDSChequesID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
      Required = True
    end
    object CDSChequesORDEN_DE: TStringField
      DisplayLabel = 'Orden deE'
      FieldName = 'ORDEN_DE'
      Origin = 'ORDEN_DE'
      Size = 30
    end
    object CDSChequesNUMERO: TIntegerField
      DisplayLabel = 'Numero'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object CDSChequesFECHA_DEBITO: TSQLTimeStampField
      DisplayLabel = 'F.Debito'
      FieldName = 'FECHA_DEBITO'
      Origin = 'FECHA_DEBITO'
    end
    object CDSChequesDEBITADO: TStringField
      FieldName = 'DEBITADO'
      Origin = 'DEBITADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSChequesFECHA: TDateField
      FieldKind = fkInternalCalc
      FieldName = 'FECHA'
    end
    object CDSChequesUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
      DisplayFormat = ',0.00'
    end
    object CDSChequesIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
  end
  object DSCheques: TDataSource
    DataSet = CDSCheques
    Left = 296
    Top = 352
  end
  object ActionList1: TActionList
    Left = 504
    Top = 112
    object Buscar: TAction
      Caption = 'Buscar'
      OnExecute = BuscarExecute
    end
    object Aceptar: TAction
      Caption = '&Aceptar'
    end
    object Salir: TAction
      Caption = '&Salir'
      OnExecute = SalirExecute
    end
    object PonerFechaDebito: TAction
      Caption = 'Poner la Fecha de Debito'
      OnExecute = PonerFechaDebitoExecute
    end
    object ModificarChe: TAction
      Caption = 'Modificar Che'
      OnExecute = ModificarCheExecute
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 344
    Top = 200
    object ModificarChe1: TMenuItem
      Action = ModificarChe
    end
  end
  object QBancos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from cuenta_caja where id_tipo_cta=2')
    Left = 176
    Top = 224
    object QBancosID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
      Origin = 'ID_CUENTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBancosID_TIPO_CTA: TIntegerField
      FieldName = 'ID_TIPO_CTA'
      Origin = 'ID_TIPO_CTA'
      Required = True
    end
    object QBancosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object QBancosNRO_CUENTA: TStringField
      FieldName = 'NRO_CUENTA'
      Origin = 'NRO_CUENTA'
      Size = 15
    end
    object QBancosID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
    end
    object QBancosCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QBancosRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
  end
  object QCheques: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select che.fecha_emision,che.fecha_cobro,Che.id_cheque_pro,che.i' +
        'd_chequera,ch.nombre as MuestraChequera,che.id_cuenta_banco,cc.n' +
        'ombre as MuestraCuentaCajaBco,'
      '  che.id_banco, che.orden_de,che.numero,che.fecha_debito,'
      '  che.unidades,che.importe,che.debitado from cheque_propio Che'
      'left join chequera ch on  ch.id_Chequera=Che.Id_Chequera'
      'left join cuenta_caja cc on cc.id_cuenta=che.id_cuenta_banco'
      
        'where (che.anulado<>'#39'S'#39' and che.anulado<>'#39'A'#39') and  che.id_cuenta' +
        '_banco=:id AND CHE.debitado='#39'N'#39
      'order by che.fecha_emision desc')
    Left = 80
    Top = 352
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object spDebitar: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'DEBITAR_CHE_AL_BANCO'
    Left = 536
    Top = 312
    ParamData = <
      item
        Position = 1
        Name = 'ID_CUENTA_BANCO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ID_CHEQUE_PRO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'FECHA_DEBITO'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'FECHA_COBRO'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'IMPORTE'
        DataType = ftFloat
        NumericScale = 2
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'NUMERO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'ORDEN_DE'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end>
  end
  object JvFormStorage: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    Options = [fpState, fpSize, fpLocation, fpActiveControl]
    StoredValues = <>
    Left = 384
    Top = 320
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    AutoFlush = True
    SubStorages = <>
    Left = 440
    Top = 320
  end
end

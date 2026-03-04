object FormRecepcionTxStock: TFormRecepcionTxStock
  Left = 325
  Top = 89
  Caption = 'Planilla Recepcion de Transferenicas de Stock'
  ClientHeight = 574
  ClientWidth = 954
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 954
    Height = 489
    Align = alTop
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 19
    ExplicitWidth = 921
    object Splitter1: TSplitter
      Left = 397
      Top = 42
      Width = 4
      Height = 314
      ExplicitLeft = 396
    end
    object lbArchivos: TListBox
      Left = 1
      Top = 42
      Width = 396
      Height = 314
      Style = lbOwnerDrawVariable
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = lbArchivosClick
      OnKeyDown = lbArchivosKeyDown
    end
    object dbgDet: TJvDBGrid
      Left = 401
      Top = 42
      Width = 552
      Height = 314
      Align = alClient
      DataSource = DSDet
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 20
      TitleRowHeight = 20
    end
    object Panel1: TPanel
      Left = 1
      Top = 423
      Width = 952
      Height = 65
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitWidth = 919
      object btLeer: TBitBtn
        Left = 8
        Top = 16
        Width = 116
        Height = 33
        Action = LeerArchivos
        Caption = ' Leer Archivos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object btCancel: TBitBtn
        Left = 645
        Top = 16
        Width = 116
        Height = 33
        Caption = 'Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Kind = bkCancel
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 1
        OnClick = btCancelClick
      end
      object btOk: TBitBtn
        Left = 767
        Top = 16
        Width = 116
        Height = 33
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Kind = bkOK
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 2
        OnClick = btOkClick
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 952
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 4
      ExplicitWidth = 919
      object Label1: TLabel
        Left = 6
        Top = 11
        Width = 197
        Height = 19
        Caption = 'Transferencias a Recibir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 407
        Top = 11
        Width = 59
        Height = 19
        Caption = 'Detalle'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 356
      Width = 952
      Height = 67
      Align = alBottom
      BevelOuter = bvNone
      Color = clGradientInactiveCaption
      ParentBackground = False
      TabOrder = 5
      ExplicitWidth = 919
      object Label3: TLabel
        Left = 8
        Top = 11
        Width = 151
        Height = 19
        Caption = 'Deposito Receptor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 370
        Top = 24
        Width = 23
        Height = 22
        Action = Borrar
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000010000000000000101
          0100020202000303030004040400050505000606060007070700080808000909
          09000A0A0A000B0B0B000B0F0B000B140B000B180B000B1C0B000B200B000A26
          0A000A2B0A00092F09000833080007370700063A0600053E0500044004000343
          0300034403000246020002460200024702000247020002460200034603000445
          0400054405000643060008420800094109000B3F0B000E3D0E00113B1100143A
          1400173817001B361B001F341F002233220025332500293229002D312D003131
          3100323232003333330034343400353535003636360037373700383838003939
          39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
          4100424242004343430044444400454545004646460047474700484848004949
          49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
          5100525252005353530054545400555555005656560057575700585858005959
          59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
          6100626262006363630064646400656565006666660067676700686868006969
          69006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F00707070007171
          7100727272007373730074747400757575007676760077777700787878007979
          79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
          8100828282008383830084848400858585008686860087878700888888008989
          89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
          9100929292009393930094949400959595009696960097979700989898009999
          99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
          A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
          A900AAAAAA00ABABAB00B1B0AF00BFBDBB00CECBC800E0DDD900EDEAE700F6F3
          EF00FBF7F300FDF9F600FEFBF800FEFBF800FEFBF800FEFAF600FEF9F400FEF8
          F200FEF7F000FEF6ED00FEF5EB00FEF4E900FEF3E700FEF2E500FEF1E300FEF0
          E000FEEFDE00FEEEDB00FEECD800FEEAD400FEE8D000FEE7CE00FEE7CC00FEE6
          CB00FEE6CA00FEE5C800FEE4C600FDE3C400FDE2C300FDE1C100FBDCBB00F8D6
          B300F4CDA900ECBA9100E3A77800D98F5900CF793D00C7692900C25C1800BF54
          0E00BC4F0700BB4C0200BB4B0100BB4A0000B8480000B4450000AF410000A83C
          00009E340000932C00008B2500008823000085210000831F0000831F0000841F
          0200881F08008E1D150099192E00AB155200BF107B00D50AA900E905D300F602
          ED00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00F8F8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8DBDBDBDBDBDB
          DBDBDBF8F8F8F8F8F8F8B5B8BCC0C4C7CDCFDBF8F8F8F8F8F8F8B5B6BABEC3C6
          CBCFDBF8F8F8F8F8F8F8B5B5B9BDC2C5C9CEDBF8F8F8F8F8F8F8E7E7E7E7E7E7
          E7E7E7E7E7DBF81DF8F8B5B6B9BCC0C3C5C8CCCFD0DBF81D1DF8B5B5B8BABEC2
          C4C6CBCFD0DBF81D821DB5B5B7BABEC1C4C6CBCECFDBF81D1DF8E7E7E7E7E7E7
          E7E7E7E7E7DBF81DF8F8B5B5B9BEC3C5CBCFDBF8F8F8F8F8F8F8B5B5B7BCC1C5
          C9CFDBF8F8F8F8F8F8F8B5B5B5BABEC3C6CCDBF8F8F8F8F8F8F8DBDBDBDBDBDB
          DBDBDBF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8}
        ParentShowHint = False
        ShowHint = True
      end
      object DBText1: TDBText
        Left = 763
        Top = 29
        Width = 121
        Height = 17
        DataField = 'NROCPBTE'
      end
      object dbcDepositos: TJvDBLookupCombo
        Left = 8
        Top = 36
        Width = 313
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        LookupField = 'ID'
        LookupDisplay = 'NOMBRE'
        LookupSource = DSDepositos
        ParentFont = False
        TabOrder = 0
        OnChange = LeerArchivosExecute
      end
    end
    object chTodos: TCheckBox
      Left = 200
      Top = 448
      Width = 225
      Height = 17
      Caption = 'Traer de todos Los depositos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
  object CDSCab: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 456
    Top = 192
  end
  object DSCab: TDataSource
    DataSet = CDSCab
    Left = 528
    Top = 192
  end
  object DSDet: TDataSource
    DataSet = CDSDet
    Left = 520
    Top = 272
  end
  object CDSDet: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 456
    Top = 264
  end
  object ActionList1: TActionList
    Left = 640
    Top = 176
    object LeerArchivos: TAction
      Caption = ' Leer Archivos'
      OnExecute = LeerArchivosExecute
    end
    object Borrar: TAction
      Hint = 'Borrar Linea'
      OnExecute = BorrarExecute
    end
  end
  object CDSSubDet: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_DETTRA'
    MasterFields = 'ID_TRANDET'
    MasterSource = DSDet
    PacketRecords = 0
    Params = <>
    Left = 520
    Top = 400
  end
  object CDSDepositos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPDepositos'
    Left = 488
    Top = 512
    object CDSDepositosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSDepositosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 25
    end
    object CDSDepositosSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
    end
    object CDSDepositosCENTRALIZA_STOCK: TStringField
      FieldName = 'CENTRALIZA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPDepositos: TDataSetProvider
    DataSet = DMBuscadores.QBuscaDeposito
    Left = 408
    Top = 520
  end
  object DSDepositos: TDataSource
    DataSet = CDSDepositos
    Left = 560
    Top = 512
  end
end

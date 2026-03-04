object FormDatosClienteCabeceraCpbte: TFormDatosClienteCabeceraCpbte
  Left = 361
  Top = 97
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Datos Cliente'
  ClientHeight = 539
  ClientWidth = 694
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormCreate
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 465
    Height = 442
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 79
      Top = 4
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object Label2: TLabel
      Left = 9
      Top = 46
      Width = 63
      Height = 13
      Caption = 'Raz'#243'n Social'
    end
    object Label3: TLabel
      Left = 9
      Top = 83
      Width = 45
      Height = 13
      Caption = 'Direcci'#243'n'
    end
    object Label4: TLabel
      Left = 9
      Top = 120
      Width = 46
      Height = 13
      Caption = 'Localidad'
    end
    object Label5: TLabel
      Left = 216
      Top = 120
      Width = 39
      Height = 13
      Caption = 'C.Postal'
    end
    object lbDocumento: TLabel
      Left = 14
      Top = 210
      Width = 25
      Height = 13
      Caption = 'CUIT'
    end
    object Label9: TLabel
      Left = 238
      Top = 164
      Width = 67
      Height = 13
      Caption = 'Condici'#243'n IVA'
    end
    object lbCodigo: TLabel
      Left = 9
      Top = 5
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object Label10: TLabel
      Left = 313
      Top = 82
      Width = 82
      Height = 13
      Caption = 'Codigo Vendedor'
    end
    object Label12: TLabel
      Left = 132
      Top = 213
      Width = 79
      Height = 13
      Caption = 'Documento Tipo'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object dbeNombre: TDBEdit
      Left = 78
      Top = 19
      Width = 288
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object dbeRazonSocial: TDBEdit
      Left = 9
      Top = 62
      Width = 291
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnEnter = dbeRazonSocialEnter
    end
    object dbeLocalidad: TDBEdit
      Left = 9
      Top = 135
      Width = 200
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object dbeCPostal: TDBEdit
      Left = 214
      Top = 135
      Width = 66
      Height = 21
      TabOrder = 4
    end
    object dbeDireccion: TDBEdit
      Left = 9
      Top = 98
      Width = 288
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object pnAdicional: TPanel
      Left = 1
      Top = 256
      Width = 463
      Height = 144
      Align = alBottom
      Color = clGradientInactiveCaption
      ParentBackground = False
      TabOrder = 8
      Visible = False
      object Label7: TLabel
        Left = 12
        Top = 14
        Width = 42
        Height = 13
        Caption = 'Telefono'
      end
      object Label8: TLabel
        Left = 13
        Top = 87
        Width = 27
        Height = 13
        Caption = 'e-mail'
      end
      object Label6: TLabel
        Left = 215
        Top = 41
        Width = 43
        Height = 13
        Caption = 'Tel.Movil'
      end
      object dbeTelefono1: TDBEdit
        Left = 9
        Top = 33
        Width = 200
        Height = 21
        CharCase = ecLowerCase
        TabOrder = 0
      end
      object dbeTelefono2: TDBEdit
        Left = 9
        Top = 60
        Width = 200
        Height = 21
        CharCase = ecLowerCase
        TabOrder = 1
      end
      object dbeCorreo: TDBEdit
        Left = 9
        Top = 106
        Width = 440
        Height = 21
        CharCase = ecLowerCase
        TabOrder = 2
      end
      object dbeCelular: TDBEdit
        Left = 215
        Top = 60
        Width = 200
        Height = 21
        CharCase = ecLowerCase
        TabOrder = 3
      end
    end
    object pnPie: TPanel
      Left = 1
      Top = 400
      Width = 463
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 10
      object btCerrar: TBitBtn
        Left = 344
        Top = 2
        Width = 96
        Height = 35
        Caption = '&Cerrar'
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
          F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
          000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
          338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
          45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
          3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
          F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
          000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
          338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
          4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
          8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
          333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
          0000}
        NumGlyphs = 2
        TabOrder = 0
        OnClick = btCerrarClick
      end
      object btAlta: TBitBtn
        Left = 13
        Top = 6
        Width = 100
        Height = 25
        Caption = 'Act.CLiente'
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
        TabOrder = 1
        Visible = False
        OnClick = btAltaClick
      end
      object chModo: TAdvOfficeCheckBox
        Left = 131
        Top = 9
        Width = 97
        Height = 17
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TabStop = True
        Visible = False
        OnClick = chModoClick
        Alignment = taLeftJustify
        Caption = 'Agregar'
        ReturnIsTab = False
        State = cbChecked
        Version = '1.8.1.2'
      end
    end
    object dblInscripcion: TDBLookupComboBox
      Left = 238
      Top = 180
      Width = 128
      Height = 21
      DataField = 'Condicion_Iva'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'Codigo'
      ListField = 'Detalle'
      ListSource = DSBuscaInscripcion
      ParentFont = False
      TabOrder = 5
    end
    object dbeCodigo: TDBEdit
      Left = 9
      Top = 19
      Width = 67
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 11
    end
    object dbeCodVendedor: TDBEdit
      Left = 313
      Top = 98
      Width = 82
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 9
    end
    object dbeCuit: TJvDBMaskEdit
      Left = 14
      Top = 229
      Width = 101
      Height = 21
      MaxLength = 13
      TabOrder = 6
      EditMask = '00-00000000-0;0'
      OnExit = dbeCuitExit
      OnKeyDown = dbeCuitKeyDown
      OnKeyPress = dbeCuitKeyPress
    end
    object dbTipoDoc: TJvDBComboBox
      Left = 132
      Top = 229
      Width = 62
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        'DNI'
        'CI'
        'LE'
        'LC'
        'PAS')
      ParentFont = False
      TabOrder = 7
      Values.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object rgTipoDocumento: TRadioGroup
      Left = 9
      Top = 162
      Width = 168
      Height = 39
      Caption = 'Tipo Documento'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Cuit'
        'Documento')
      TabOrder = 12
      OnClick = rgTipoDocumentoClick
    end
  end
  object spIngresarCliente: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'INGRESAR_CLIENTE'
    Left = 520
    Top = 64
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        Precision = 6
        ParamType = ptInput
      end
      item
        Name = 'NOMBRE'
        DataType = ftFixedChar
        Precision = 35
        ParamType = ptInput
      end
      item
        Name = 'RAZON_SOCIAL'
        DataType = ftFixedChar
        Precision = 35
        ParamType = ptInput
      end
      item
        Name = 'DIRECCION'
        DataType = ftFixedChar
        Precision = 35
        ParamType = ptInput
      end
      item
        Name = 'TIPO_IVA'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'CUIT'
        DataType = ftFixedChar
        Precision = 13
        ParamType = ptInput
      end
      item
        Name = 'C_POSTAL'
        DataType = ftFixedChar
        Precision = 8
        ParamType = ptInput
      end
      item
        Name = 'LOCALIDAD'
        DataType = ftFixedChar
        Precision = 15
        ParamType = ptInput
      end
      item
        Name = 'TELEFONO'
        DataType = ftString
        Precision = 10
        ParamType = ptInput
      end
      item
        Name = 'VENDEDOR'
        DataType = ftString
        Precision = 6
        ParamType = ptInput
      end
      item
        Name = 'ZONA'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'OBSERVACIONES'
        DataType = ftBlob
        Precision = 8
        ParamType = ptInput
      end
      item
        Name = 'MAIL'
        DataType = ftString
        Precision = 100
        ParamType = ptInput
      end
      item
        Name = 'CUENTA_OP'
        DataType = ftString
        Precision = 10
        ParamType = ptInput
      end
      item
        Name = 'TIPODOC'
        DataType = ftSmallint
        Precision = 2
        ParamType = ptInput
      end
      item
        Name = 'NRODOCUMENTO'
        DataType = ftString
        Precision = 15
        ParamType = ptInput
      end
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'CELULAR'
        DataType = ftString
        Precision = 11
        ParamType = ptInput
      end
      item
        Name = 'CODIGO_ALTA'
        DataType = ftString
        Precision = 6
        ParamType = ptOutput
        Size = 6
      end>
  end
  object QCodigoFree: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from buscar_codigo_free')
    Left = 616
    Top = 120
    object QCodigoFreeNEWCODIGO: TIntegerField
      FieldName = 'NEWCODIGO'
    end
  end
  object spIngresarConVenta: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'INGRESAR_CONVENTA'
    Left = 520
    Top = 112
    ParamData = <
      item
        Name = 'CONDICION'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        Precision = 6
        ParamType = ptInput
      end>
  end
  object QPrimerConVta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select Min(codigopago) from condventa ')
    Left = 520
    Top = 160
    object QPrimerConVtaMIN: TIntegerField
      DisplayWidth = 10
      FieldName = 'MIN'
    end
  end
  object spLdr: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'INGRESAR_LDR'
    Left = 520
    Top = 16
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        Precision = 6
        ParamType = ptInput
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Precision = 35
        ParamType = ptInput
      end
      item
        Name = 'DIRECCION'
        DataType = ftString
        Precision = 35
        ParamType = ptInput
      end
      item
        Name = 'CPOSTAL'
        DataType = ftString
        Precision = 8
        ParamType = ptInput
      end>
  end
  object DSBuscaInscripcion: TDataSource
    DataSet = CDSBuscaInscripcion
    Left = 637
    Top = 256
  end
  object CDSBuscaInscripcion: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaInscripcion'
    Left = 560
    Top = 256
    object CDSBuscaInscripcionCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CDSBuscaInscripcionDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 15
    end
    object CDSBuscaInscripcionAPLICAPERCEPCIONIVA: TStringField
      FieldName = 'APLICAPERCEPCIONIVA'
      Size = 1
    end
    object CDSBuscaInscripcionAPLICAPERCEPCIONIIBB: TStringField
      FieldName = 'APLICAPERCEPCIONIIBB'
      Size = 1
    end
  end
  object DSPBuscaInscripcion: TDataSetProvider
    DataSet = DMBuscadores.QBuscaInscripcion
    Options = []
    Left = 488
    Top = 254
  end
end

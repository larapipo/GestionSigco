object FormGoogleMap: TFormGoogleMap
  Left = 57
  Top = 164
  Width = 1210
  Height = 746
  AutoScroll = True
  AutoSize = True
  BorderWidth = 1
  Caption = 'Google Maps'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  Position = poOwnerFormCenter
  Visible = True
  StyleName = 'Windows'
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 1192
    Height = 91
    Align = alTop
    TabOrder = 0
    object lb1: TLabel
      Left = 194
      Top = 7
      Width = 23
      Height = 13
      Caption = 'Lat.:'
    end
    object lb2: TLabel
      Left = 186
      Top = 35
      Width = 31
      Height = 13
      Caption = 'Long.:'
    end
    object lb3: TLabel
      Left = 10
      Top = 9
      Width = 45
      Height = 13
      Caption = 'Ubicacion'
    end
    object Label4: TLabel
      Left = 301
      Top = 68
      Width = 38
      Height = 13
      Caption = 'API Key'
    end
    object edtLat: TEdit
      Left = 223
      Top = 5
      Width = 84
      Height = 21
      TabOrder = 0
    end
    object edtLng: TEdit
      Left = 224
      Top = 32
      Width = 83
      Height = 21
      TabOrder = 1
    end
    object edLugar: TEdit
      Left = 10
      Top = 28
      Width = 169
      Height = 21
      TabOrder = 2
      Text = 'Mar del Plata'
    end
    object btClientes: TButton
      Left = 345
      Top = 1
      Width = 78
      Height = 23
      Caption = 'Clientes'
      TabOrder = 3
      OnClick = btClientesClick
    end
    object dbcSucursal: TJvDBLookupCombo
      Left = 435
      Top = 6
      Width = 197
      Height = 21
      DisplayEmpty = 'Todas Las Sucursales'
      EmptyValue = '-1'
      LookupField = 'CODIGO'
      LookupDisplay = 'DETALLE'
      LookupSource = DSBuscaSucursal
      TabOrder = 4
    end
    object dbcVendedor: TJvDBLookupCombo
      Left = 435
      Top = 33
      Width = 197
      Height = 21
      DisplayEmpty = 'Todos Los Vendedores'
      EmptyValue = '******'
      LookupField = 'CODIGO'
      LookupDisplay = 'NOMBRE'
      LookupSource = DSBuscaVendedores
      TabOrder = 5
    end
    object dbcZona: TJvDBLookupCombo
      Left = 638
      Top = 33
      Width = 197
      Height = 21
      DisplayEmpty = 'Todas Las Zonas'
      EmptyValue = '-1'
      LookupField = 'ID_ZONA'
      LookupDisplay = 'DETALLE'
      LookupSource = DSBuscaZonas
      TabOrder = 6
    end
    object dbcCategorias: TJvDBLookupCombo
      Left = 638
      Top = 6
      Width = 197
      Height = 21
      DropDownWidth = 400
      DisplayEmpty = 'Todas las Categorias'
      EmptyValue = '-1'
      LookupField = 'ID'
      LookupDisplay = 'DETALLE'
      LookupSource = DSBuscaCategorias
      TabOrder = 7
    end
    object rgEstados: TRadioGroup
      Left = 1059
      Top = 1
      Width = 124
      Height = 72
      Caption = 'Estados'
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'Activos'
        'Inactivos'
        'Gesti'#243'n Judicial')
      TabOrder = 8
    end
    object btMapa: TButton
      Left = 220
      Top = 59
      Width = 75
      Height = 25
      Caption = 'Mapa'
      TabOrder = 9
    end
    object btCancelar: TBitBtn
      Left = 345
      Top = 30
      Width = 76
      Height = 25
      Caption = 'Cancelar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FF01079F0313A90418AE0419AE0313A90108A0FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF01049D041CB10730C00734C407
        35C50735C50734C30731C1041FB301069EFF00FFFF00FFFF00FFFF00FFFF00FF
        0109A1052BC30735C70733C20732C20732C20732C20732C20733C30735C4062D
        BE020CA4FF00FFFF00FFFF00FF01049B052BCA0636D80431CD0027C4032EC107
        32C20732C20430C10027BF042FC10735C4072EBE01069EFF00FFFF00FF031ABA
        0537E70331DD123DD86480E01840CB002CC1022DC00F38C46580D91B43C7052F
        C10735C5051FB3FF00FF01049E0430E40436F1002AE45070E9FFFFFFB7C4F10D
        36CA042DC3A2B2E8FFFFFF6984DA0026BE0733C30731C10108A0020FAF0336FA
        0335F80232EE0A35E88CA2F2FFFFFFB4C2F1A9B8EDFFFFFFA7B7E9133AC4052F
        C10732C20734C40313AA0619BC1747FE093AFC0435F80131F0002BE891A5F4FF
        FFFFFFFFFFABBAEF062FC5022DC00732C20732C20736C50419AE0B1DBE4168FE
        1C49FC0335FB0031F90531F2A4B5F7FFFFFFFFFFFFB9C6F20D36D0002CC60732
        C20732C20736C50418AD0613B45B7CFC486CFD0133FB113CFBA1B4FEFFFFFFA4
        B6F892A7F5FFFFFFB6C4F21A41D3042FC80732C40734C30212A90003A04A6AF3
        8FA6FF1F46FB4C6FFCFFFFFFA7B8FE0733F6002AED8CA2F6FFFFFF627FE70028
        D00734CC0730C300069FFF00FF1A2FCB99AFFF8BA2FE214DFB4D71FC0E3DFB00
        30FB0031F70636F14C6EF1103CE30432DB0636D7041CB5FF00FFFF00FF0004A0
        415EECB8C7FF9CAFFD3A5CFC0A3AFB0335FB0335FB0133F9052FF20635EB0537
        E9052CCD00049CFF00FFFF00FFFF00FF0309A54260ECA9BBFFBDCAFF8EA5FE64
        83FD5073FC4A6EFD3961FD1444F9042CD70109A2FF00FFFF00FFFF00FFFF00FF
        FF00FF0004A01E32CD5876F6859EFE8BA3FF7994FE5376FC234AF0051EC50104
        9CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0004A00917B610
        22C30D1FC20311B401059FFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 10
      OnClick = btCancelarClick
    end
    object dbcLocalidad: TJvDBLookupCombo
      Left = 841
      Top = 6
      Width = 212
      Height = 21
      DisplayEmpty = 'Todas Las Localidades'
      EmptyValue = '-1'
      LookupField = 'ID_POSTAL'
      LookupDisplay = 'DETALLE_POSTAL'
      LookupSource = DSLocalidades
      TabOrder = 11
    end
    object edAPIKey: TEdit
      Left = 345
      Top = 61
      Width = 393
      Height = 21
      TabOrder = 12
      Text = 'AIzaSyBQVibb5ZW1yflpnTTxjq41qgSEhjdb8Hg'
      OnChange = edAPIKeyChange
    end
    object Button1: TButton
      Left = 912
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 13
      OnClick = Button1Click
    end
    object MapServiceCombo: TComboBox
      Left = 10
      Top = 64
      Width = 129
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 14
      Text = 'Google Maps'
      OnChange = MapServiceComboChange
      Items.Strings = (
        'Google Maps'
        'Here Maps'
        'Bing Maps '
        'Azure Maps'
        'MapBox'
        'TomTom'
        'OpenLayers'
        'MapKit')
    end
    object TMSFNCGeocoding1: TTMSFNCGeocoding
      Left = 223
      Top = 26
      Width = 26
      Height = 26
      Visible = True
      OnGetGeocoding = TMSFNCGeocoding1GetGeocoding
      APIKey = 'AIzaSyBQVibb5ZW1yflpnTTxjq41qgSEhjdb8Hg'
      GeocodingRequests = <>
    end
    object edAdress: TEdit
      Left = 746
      Top = 60
      Width = 121
      Height = 21
      TabOrder = 16
      Text = 'edAdress'
    end
  end
  object sbEstadoPie: TStatusBar
    Left = 0
    Top = 681
    Width = 1192
    Height = 24
    Panels = <
      item
        Width = 450
      end
      item
        Width = 50
      end>
  end
  object pbClientes: TProgressBar
    Left = 0
    Top = 661
    Width = 1192
    Height = 20
    Align = alBottom
    Smooth = True
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 634
    Width = 1192
    Height = 27
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    AutoSize = True
    TabOrder = 2
    object Label2: TLabel
      Left = 10
      Top = 5
      Width = 85
      Height = 13
      Caption = 'Descripcion Zona:'
    end
    object SpeedButton1: TSpeedButton
      Left = 558
      Top = 3
      Width = 23
      Height = 22
      Action = Guardar
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00013002000141030002510400025104000143
        030001330200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00014503000145030003780800039C0B00039F0C00039F0C00039D
        0C00027E0900014D0400014D0400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00034F09000365090004A30D0003A60C0003A00B00029E0A00039F0C0003A0
        0C0003A50C0003A60C000269060001340200FF00FF00FF00FF00FF00FF00044F
        0900066B11000AAB1F0007A41500049E0D00029D0A00039D0A00039E0C00039E
        0C00039E0C0003A00C0003A70C00026A0600024C0400FF00FF00FF00FF00044F
        090010AC30000DAB280009A41C00039E0F0016AA2000D5F2D800E9F8EA0048C0
        5200039E0C00039E0C00039F0C0003A70C00024C0400FF00FF00035706000D82
        230017B641000EA92D0005A01300049F0D0007A0110082D58900FFFFFF00F4FC
        F60040BC4A00039E0C00039E0C0003A50C00037B0800014203000357060017A3
        410018B54A0011AB340006A01100039E0C00049F0D00039E0C0074D07D00FCFE
        FC00F3FBF4003EBC4800039E0C0003A10C0003960A000142030006680D0021B1
        51001EB75100BFEDCF00BAEAC600B7E9C200B8EAC500B5E9C200B7E9C100F6FC
        F700FFFFFF00EEFAEF0054C55E0003A00C00039F0C00014A0400087412003EBD
        69002ABA5C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFE
        FC00FFFFFF00FFFFFF00AAE3B00003A00C00039F0C000252050006780E0054C5
        7A0044C6740052C77D0057CA810056CA800057CA810049C5730079D59200FAFE
        FA00FFFFFF0097DDA5001AAD330007A51800039D0C000146030006780E004CBD
        690083DDA70022B655001CB24E0022B5540022B5540055CA7F00E1F6E900FFFF
        FF0088D99D0010AB2F000CA6270006A71600038C0A0001460300FF00FF001399
        2300AAE7C50068D08E0016AF48001BB14C0039BF6800F4FCF700FFFFFF0084D9
        9E0011AA32000EA729000BA4200009AF1C00036B0A00FF00FF00FF00FF001399
        230056C57300C5F0D80066CF8C0020B4520023B55400AAE6C00096DEB10019B1
        480013AC3C0012AA34000FB02D000A991F00036B0A00FF00FF00FF00FF00FF00
        FF00139923006ACC8800D0F4E3009AE1B60050C77A0038BD67002CBA5D0030BB
        60002FBC5D0023BC4F0011A3300006620F00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00139923001399230098E1B500BDEED400A7E7C40090E0B10078D9
        9F0049C779001B9D3D001B9D3D00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF001DA435001399230013992300139923001399
        2300138C2A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object btSalir: TBitBtn
      Left = 1112
      Top = 1
      Width = 75
      Height = 25
      Caption = 'Salir'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FF01079F0313A90418AE0419AE0313A90108A0FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF01049D041CB10730C00734C407
        35C50735C50734C30731C1041FB301069EFF00FFFF00FFFF00FFFF00FFFF00FF
        0109A1052BC30735C70733C20732C20732C20732C20732C20733C30735C4062D
        BE020CA4FF00FFFF00FFFF00FF01049B052BCA0636D80431CD0027C4032EC107
        32C20732C20430C10027BF042FC10735C4072EBE01069EFF00FFFF00FF031ABA
        0537E70331DD123DD86480E01840CB002CC1022DC00F38C46580D91B43C7052F
        C10735C5051FB3FF00FF01049E0430E40436F1002AE45070E9FFFFFFB7C4F10D
        36CA042DC3A2B2E8FFFFFF6984DA0026BE0733C30731C10108A0020FAF0336FA
        0335F80232EE0A35E88CA2F2FFFFFFB4C2F1A9B8EDFFFFFFA7B7E9133AC4052F
        C10732C20734C40313AA0619BC1747FE093AFC0435F80131F0002BE891A5F4FF
        FFFFFFFFFFABBAEF062FC5022DC00732C20732C20736C50419AE0B1DBE4168FE
        1C49FC0335FB0031F90531F2A4B5F7FFFFFFFFFFFFB9C6F20D36D0002CC60732
        C20732C20736C50418AD0613B45B7CFC486CFD0133FB113CFBA1B4FEFFFFFFA4
        B6F892A7F5FFFFFFB6C4F21A41D3042FC80732C40734C30212A90003A04A6AF3
        8FA6FF1F46FB4C6FFCFFFFFFA7B8FE0733F6002AED8CA2F6FFFFFF627FE70028
        D00734CC0730C300069FFF00FF1A2FCB99AFFF8BA2FE214DFB4D71FC0E3DFB00
        30FB0031F70636F14C6EF1103CE30432DB0636D7041CB5FF00FFFF00FF0004A0
        415EECB8C7FF9CAFFD3A5CFC0A3AFB0335FB0335FB0133F9052FF20635EB0537
        E9052CCD00049CFF00FFFF00FFFF00FF0309A54260ECA9BBFFBDCAFF8EA5FE64
        83FD5073FC4A6EFD3961FD1444F9042CD70109A2FF00FFFF00FFFF00FFFF00FF
        FF00FF0004A01E32CD5876F6859EFE8BA3FF7994FE5376FC234AF0051EC50104
        9CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0004A00917B610
        22C30D1FC20311B401059FFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 1
      OnClick = btSalirClick
    end
    object cbColorPoligono: TColorBox
      Left = 383
      Top = 3
      Width = 169
      Height = 22
      Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbCustomColors]
      TabOrder = 4
    end
    object btCargar: TButton
      Left = 889
      Top = 1
      Width = 85
      Height = 23
      Caption = 'Cargar Zonas'
      TabOrder = 5
      OnClick = btCargarClick
    end
    object edDetalle: TEdit
      Left = 98
      Top = 3
      Width = 279
      Height = 21
      Color = clBtnFace
      Enabled = False
      TabOrder = 6
    end
    object btGuardar: TButton
      Left = 973
      Top = 1
      Width = 92
      Height = 23
      Caption = 'Guardar Zonas'
      TabOrder = 7
    end
    object btModificaZona: TBitBtn
      Left = 606
      Top = 1
      Width = 67
      Height = 23
      Action = Editar
      Caption = 'Editar'
      ImageIndex = 5
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF009933000099330000993300009933
        000099330000993300009933000099330000FF00FF00FF00FF00FF00FF00FF00
        FF000E80AA000E80AA000E80AA000E80AA0099330000FDFEFE00FDFEFE00FDFE
        FE008EA4FD00B8C6FD00FDFEFE0099330000FF00FF00FF00FF00FF00FF00078D
        BB0049D5EE0023D7FE0036D9FE006FE6FF0099330000FDFEFE00FDFEFE007E98
        FC000335FB00597AFC00FDFEFE0099330000FF00FF00FF00FF00078DBB008CFB
        FE0059EAFE0023D7FE0036D9FE006FE6FF0099330000D6DEFE004368FC000335
        FB004368FC000335FB00D9E0FE0099330000FF00FF00FF00FF00078DBB008CFB
        FE0059EAFE0023D7FE0036D9FE006FE6FF00993300005274FC001442FB00BCC9
        FD00EFF2FE001A47FB004F72FC0097330400FF00FF00FF00FF00078DBB008CFB
        FE0059EAFE0023D7FE0036D9FE006FE6FF0099330000E4EAFE00D9E0FE00FDFE
        FE00FDFEFE0098ACFD000335FB0064345900FF00FF00FF00FF00078DBB00B3FC
        FE00B6F6FF00C6F5FF00E3FAFF00EBFBFF0099330000FDFEFE00FDFEFE00FDFE
        FE00FDFEFE00FDFEFE005274FC000335FB00FF00FF00FF00FF00078DBB00BAEE
        F60030BCDD0011A7D200129FCB0020A2CB009933000099330000993300009933
        000099330000993300008F3311002235C8000335FB00FF00FF00078DBB004AC5
        DD0059EAFE0023D7FE0036D9FE006FE6FF008DE7FA0049C1E3000682B6000E80
        AA00FF00FF00FF00FF00FF00FF00FF00FF000335FB000335FB00078DBB008CFB
        FE0059EAFE0023D7FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80
        AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000335FB00078DBB008CFB
        FE0059EAFE0023D7FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80
        AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078DBB008CFB
        FE0059EAFE0023D7FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80
        AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078DBB0091FC
        FE0082F8FF006FF8FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000E80
        AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078DBB00FDFE
        FE00F4FFFF00D3FFFF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000E80
        AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000C92
        C000F4FFFF00E3FAFF00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00078DBB00078DBB00078DBB00078DBB00078DBB00078DBB00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 3
    end
    object btBorrarZona: TBitBtn
      Left = 673
      Top = 1
      Width = 69
      Height = 23
      Action = Borrar
      Caption = 'Borrar'
      ImageIndex = 1
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000D80AA000D80AA000D80AA000D80AA000D80AA000D80AA00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00078DBB0049D5EE0023D6FD0036D9FE006FE6FF008DE7FA0044BADD000D80
        AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078D
        BB008CFBFE0059EAFE0023D6FD0035D3F70000009A0000009A0000009A000000
        9A0000009A0000009A0000009A0000009A00FF00FF00FF00FF00FF00FF00078D
        BB008CFBFE0059EAFE0023D6FD0035D3F70000009A003E6EFF00285BFF001248
        FF000236FF000029F900001DEC0000009A00FF00FF00FF00FF00FF00FF00078D
        BB008CFBFE0059EAFE0023D6FD0035D4F80000009A004474FF003264FF001B50
        FF00083CFF000029F9000022F10000009A00FF00FF00FF00FF00FF00FF00078D
        BB00B3FCFE00B6F6FF00C6F5FF00E1F8FD0000009A0000009A0000009A000000
        9A0000009A0000009A0000009A0000009A00FF00FF00FF00FF00FF00FF00078D
        BB00BAEEF60030BCDD0011A7D200129ECA0020A2CB0035A7CD002692BF0092CE
        E4000D80AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078D
        BB004AC5DD0059EAFE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E3000682
        B6000D80AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078D
        BB008CFBFE0059EAFE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089D
        CF000D80AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078D
        BB008CFBFE0059EAFE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089D
        CF000D80AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078D
        BB008CFBFE0059EAFE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089D
        CF000D80AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078D
        BB0091FCFE0082F8FF006FF8FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2
        D4000D80AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078D
        BB00FCFFFF00F4FFFF00D3FFFF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8
        FF000D80AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000C92C000F4FFFF00E1F8FD00C7FFFF00ADFFFF00A0FCFE009BFBFC001385
        AF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00078DBB00078DBB00078DBB00078DBB00078DBB00078DBB00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 2
    end
    object btn1: TBitBtn
      Left = 746
      Top = 1
      Width = 87
      Height = 23
      Action = Crear
      Caption = 'Crear Zona'
      ImageIndex = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000875
        0D0008750D0008750D0008750D00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000E80AA000E80AA000E80AA000E80AA000E80AA000E80AA00FF00FF000875
        0D0013AA220010A61D0008750D00FF00FF00FF00FF00FF00FF00FF00FF00078D
        BB0049D5EE0023D7FE0036D8FD006FE6FF008DE7FA0044BADD000E80AA000875
        0D001AB12D0013AA220008750D00FF00FF00FF00FF00FF00FF00078DBB008CFB
        FE0059EAFE0023D7FE0036D8FD006FE6FF0008750D0008750D0008750D000875
        0D0025BD3E001CB4310008750D0008750D0008750D0008750D00078DBB008CFB
        FE0059EAFE0023D7FE0036D8FD006FE6FF0008750D003CD4620035CE590030C9
        52002CC3490026BE410025BD3E001AB12D0017AF2A0008750D00078DBB008CFB
        FE0059EAFE0023D7FE0036D8FD006FE6FF0008750D0041DA6D0041DA6D0038D1
        5E0035CE59002CC349002AC1470025BD3E0020B8360008750D00078DBB00B3FC
        FE00B6F6FF00C6F5FF00E3FAFF00E9F9FD0008750D0008750D0008750D000875
        0D003FD868003CD4620008750D0008750D0008750D0008750D00078DBB00BAEE
        F60030BCDD0011A7D200129FCB0020A1CA0035A7CD002692BF0092CEE4000875
        0D0045DD710041DA6D0008750D00FF00FF00FF00FF00FF00FF00078DBB004AC5
        DD0059EAFE0023D7FE0036D8FD006FE6FF008DE7FA0049C1E3000682B6000875
        0D004DE67F004DE67F0008750D00FF00FF00FF00FF00FF00FF00078DBB008CFB
        FE0059EAFE0023D7FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE000875
        0D0008750D0008750D0008750D00FF00FF00FF00FF00FF00FF00078DBB008CFB
        FE0059EAFE0023D7FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE000E7F
        A900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078DBB008CFB
        FE0059EAFE0023D7FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE000E80
        AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078DBB0091FC
        FE0082F8FF006FF8FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000E80
        AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00078DBB00FCFF
        FF00F4FFFF00D3FFFF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000E80
        AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000C92
        C000F4FFFF00E3FAFF00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00078DBB00078DBB00078DBB00078DBB00078DBB00078DBB00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 0
    end
  end
  object TMSFNCMaps1: TTMSFNCMaps
    Left = 0
    Top = 91
    Width = 1192
    Height = 543
    Align = alClient
    ParentDoubleBuffered = False
    DoubleBuffered = True
    TabOrder = 4
    APIKey = 'AIzaSyBQVibb5ZW1yflpnTTxjq41qgSEhjdb8Hg'
    Polylines = <>
    Polygons = <>
    Circles = <>
    Rectangles = <>
    Markers = <>
    ElementContainers = <>
    Labels = <>
    HeadLinks = <>
    Options.DefaultLatitude = -38.000000000000000000
    Options.DefaultLongitude = -58.000000000000000000
    Options.DefaultZoomLevel = 8.000000000000000000
  end
  object ActionList: TActionList
    Left = 112
    Top = 480
    object CargarMapa: TAction
      Caption = 'Cargar Mapa'
    end
    object UbicarLocalidad: TAction
      Caption = 'Ubicar Localidad'
    end
    object UbicarCoord: TAction
      Caption = 'UbicarCoord'
    end
  end
  object QClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.codigo,c.nombre,c.razon_social,c.direccion_comercial,c.' +
        'telefono_comercial_1,'
      
        '          c.telefono_comercial_2,c.cpostal,c.localidad,s.detalle' +
        ' as muestrasucursal,c.sucursal,'
      
        '          z.detalle as muestrazona,c.nro_de_cuit,i.detalle as Mu' +
        'estraInscripcion,c.zona, c.vendedor,'
      
        '          c.correoelectronico,c.contacto,c.telefono_contacto,c.o' +
        'bservaciones,p.nombre as MuestraVendedor,'
      
        '          cob.nombre as MuestraCobrador,cp.telediscado,c.CATEGOR' +
        'IA, c.latitud,c.longitud,'
      '          cp.detalle_postal as localidad,pv.nombre as Provincia'
      '                 from Clientes c'
      'left join sucursal s on s.codigo=c.sucursal'
      'left join zona z on z.id_zona=c.zona'
      'left join inscripcion i on i.codigo=c.condicion_iva'
      'left join personal p on p.codigo=c.vendedor'
      'left join personal cob on cob.codigo=c.cobrador'
      'left join c_postal cp on cp.id_postal=c.id_cod_postal'
      'left join provincia pv on pv.id_pro=cp.provincia'
      ''
      
        'where (c.id_cod_postal = :id_localidad or :id_localidad = -1 ) a' +
        'nd'
      '      (c.sucursal = :sucursal or :sucursal = - 1 ) and'
      '      (c.zona = :zona or :zona = -1 ) and'
      '      (c.vendedor = :vendedor or :vendedor = '#39'******'#39' ) and'
      '      (c.CATEGORIA = :CATEGORIA or :CATEGORIA = -1 ) and'
      '      (c.activo = :activo or :activo = '#39'*'#39' )'
      ''
      '')
    Left = 248
    Top = 336
    ParamData = <
      item
        Name = 'id_localidad'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'id_localidad'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'zona'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'zona'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'vendedor'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'vendedor'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'CATEGORIA'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'CATEGORIA'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'activo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'activo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object CDSClientes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_localidad'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_localidad'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'zona'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'zona'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'vendedor'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'vendedor'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CATEGORIA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CATEGORIA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'activo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'activo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPClientes'
    Left = 408
    Top = 336
    object CDSClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSClientesDIRECCION_COMERCIAL: TStringField
      FieldName = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object CDSClientesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSClientesLATITUD: TStringField
      FieldName = 'LATITUD'
      Size = 25
    end
    object CDSClientesLONGITUD: TStringField
      FieldName = 'LONGITUD'
      Size = 25
    end
    object CDSClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSClientesTELEFONO_COMERCIAL_1: TStringField
      FieldName = 'TELEFONO_COMERCIAL_1'
      Size = 10
    end
    object CDSClientesTELEFONO_COMERCIAL_2: TStringField
      FieldName = 'TELEFONO_COMERCIAL_2'
      Size = 10
    end
    object CDSClientesCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object CDSClientesMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      Size = 35
    end
    object CDSClientesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSClientesMUESTRAZONA: TStringField
      FieldName = 'MUESTRAZONA'
      Size = 25
    end
    object CDSClientesNRO_DE_CUIT: TStringField
      FieldName = 'NRO_DE_CUIT'
      Size = 13
    end
    object CDSClientesMUESTRAINSCRIPCION: TStringField
      FieldName = 'MUESTRAINSCRIPCION'
      Size = 15
    end
    object CDSClientesZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object CDSClientesVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 6
    end
    object CDSClientesCORREOELECTRONICO: TStringField
      FieldName = 'CORREOELECTRONICO'
      Size = 100
    end
    object CDSClientesCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Size = 50
    end
    object CDSClientesTELEFONO_CONTACTO: TStringField
      FieldName = 'TELEFONO_CONTACTO'
      Size = 50
    end
    object CDSClientesOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 1
    end
    object CDSClientesMUESTRAVENDEDOR: TStringField
      FieldName = 'MUESTRAVENDEDOR'
      Size = 50
    end
    object CDSClientesMUESTRACOBRADOR: TStringField
      FieldName = 'MUESTRACOBRADOR'
      Size = 50
    end
    object CDSClientesTELEDISCADO: TStringField
      FieldName = 'TELEDISCADO'
      Size = 6
    end
    object CDSClientesCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
    end
    object CDSClientesLOCALIDAD_1: TStringField
      FieldName = 'LOCALIDAD_1'
      Size = 25
    end
    object CDSClientesPROVINCIA: TStringField
      FieldName = 'PROVINCIA'
    end
  end
  object DSPClientes: TDataSetProvider
    DataSet = QClientes
    Left = 328
    Top = 336
  end
  object DSBuscaCategorias: TDataSource
    DataSet = CDSBuscaCategorias
    Left = 1096
    Top = 136
  end
  object CDSBuscaCategorias: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaCategorias'
    Left = 984
    Top = 144
    object CDSBuscaCategoriasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSBuscaCategoriasDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 30
    end
  end
  object DSPBuscaCategorias: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCategorias
    Left = 904
    Top = 144
  end
  object DSBuscaZonas: TDataSource
    DataSet = CDSBuscaZonas
    Left = 795
    Top = 155
  end
  object CDSBuscaZonas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaZonas'
    Left = 688
    Top = 152
    object CDSBuscaZonasID_ZONA: TIntegerField
      FieldName = 'ID_ZONA'
      Required = True
    end
    object CDSBuscaZonasDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 25
    end
  end
  object DSPBuscaZonas: TDataSetProvider
    DataSet = DMBuscadores.QBuscaZona
    Left = 600
    Top = 152
  end
  object DSPBuscaVendedores: TDataSetProvider
    DataSet = DMBuscadores.QBuscaVendedores
    Left = 904
    Top = 200
  end
  object CDSBuscaVendedores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaVendedores'
    Left = 992
    Top = 208
    object CDSBuscaVendedoresCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSBuscaVendedoresNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object DSBuscaVendedores: TDataSource
    DataSet = CDSBuscaVendedores
    Left = 1099
    Top = 200
  end
  object QLstClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.codigo,c.nombre,c.razon_social,c.direccion_comercial,c.' +
        'telefono_comercial_1,'
      
        '          c.telefono_comercial_2,c.cpostal,c.localidad,s.detalle' +
        ' as muestrasucursal,c.sucursal,'
      
        '          z.detalle as muestrazona,c.nro_de_cuit,i.detalle as Mu' +
        'estraInscripcion,c.zona, c.vendedor,'
      
        '          c.correoelectronico,c.contacto,c.telefono_contacto,c.o' +
        'bservaciones,p.nombre as MuestraVendedor,'
      
        '          cob.nombre as MuestraCobrador,cp.telediscado,c.CATEGOR' +
        'IA, c.latitud,c.longitud'
      '                 from Clientes c'
      'left join sucursal s on s.codigo=c.sucursal'
      'left join zona z on z.id_zona=c.zona'
      'left join inscripcion i on i.codigo=c.condicion_iva'
      'left join personal p on p.codigo=c.vendedor'
      'left join personal cob on cob.codigo=c.cobrador'
      'left join c_postal cp on cp.id_postal=c.id_cod_postal'
      ''
      'where (c.localidad=:localidad) and'
      '      (c.sucursal = :sucursal or :sucursal = - 1 ) and'
      '      (c.zona = :zona or :zona = -1 ) and'
      '      (c.vendedor = :vendedor or :vendedor = '#39'******'#39' ) and'
      '      (c.CATEGORIA = :CATEGORIA or :CATEGORIA = -1 ) and'
      '      (c.activo = :activo or :activo = '#39'*'#39' )'
      '')
    Left = 520
    Top = 377
    ParamData = <
      item
        Name = 'localidad'
        ParamType = ptInput
      end
      item
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'zona'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'zona'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'vendedor'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'vendedor'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'CATEGORIA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CATEGORIA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'activo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'activo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QLstClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QLstClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Required = True
      Size = 35
    end
    object QLstClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
    object QLstClientesDIRECCION_COMERCIAL: TStringField
      FieldName = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object QLstClientesTELEFONO_COMERCIAL_1: TStringField
      FieldName = 'TELEFONO_COMERCIAL_1'
      Size = 10
    end
    object QLstClientesTELEFONO_COMERCIAL_2: TStringField
      FieldName = 'TELEFONO_COMERCIAL_2'
      Size = 10
    end
    object QLstClientesNRO_DE_CUIT: TStringField
      FieldName = 'NRO_DE_CUIT'
      Size = 13
    end
    object QLstClientesCORREOELECTRONICO: TStringField
      FieldName = 'CORREOELECTRONICO'
      Size = 100
    end
    object QLstClientesCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Size = 50
    end
    object QLstClientesTELEFONO_CONTACTO: TStringField
      FieldName = 'TELEFONO_CONTACTO'
      Size = 50
    end
    object QLstClientesOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 1
    end
    object QLstClientesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      ProviderFlags = []
      Size = 15
    end
    object QLstClientesVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 6
    end
    object QLstClientesZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object QLstClientesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object QLstClientesCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      ProviderFlags = []
      Size = 8
    end
    object QLstClientesMUESTRAVENDEDOR: TStringField
      FieldName = 'MUESTRAVENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object QLstClientesMUESTRAZONA: TStringField
      FieldName = 'MUESTRAZONA'
      ProviderFlags = []
      Size = 25
    end
    object QLstClientesMUESTRACOBRADOR: TStringField
      FieldName = 'MUESTRACOBRADOR'
      ProviderFlags = []
      Size = 50
    end
    object QLstClientesMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object QLstClientesMUESTRAINSCRIPCION: TStringField
      FieldName = 'MUESTRAINSCRIPCION'
      ProviderFlags = []
      Size = 15
    end
    object QLstClientesTELEDISCADO: TStringField
      FieldName = 'TELEDISCADO'
      ProviderFlags = []
      Size = 6
    end
  end
  object DSPLstClientes: TDataSetProvider
    DataSet = QLstClientes
    Options = [poAllowCommandText]
    Left = 608
    Top = 354
  end
  object CDSLstClientes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'sucursal'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'zona'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'zona'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'vendedor'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'vendedor'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CATEGORIA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CATEGORIA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'activo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'activo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPLstClientes'
    Left = 688
    Top = 376
    object CDSLstClientesCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 6
    end
    object CDSLstClientesNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSLstClientesRAZON_SOCIAL: TStringField
      DisplayLabel = 'Razon Social'
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
    object CDSLstClientesDIRECCION_COMERCIAL: TStringField
      DisplayLabel = 'Direccion'
      FieldName = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object CDSLstClientesTELEFONO_COMERCIAL_1: TStringField
      DisplayLabel = 'Telefono 1'
      FieldName = 'TELEFONO_COMERCIAL_1'
      Size = 10
    end
    object CDSLstClientesTELEFONO_COMERCIAL_2: TStringField
      FieldName = 'TELEFONO_COMERCIAL_2'
      Size = 10
    end
    object CDSLstClientesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSLstClientesNRO_DE_CUIT: TStringField
      DisplayLabel = 'Nro.Cuit'
      FieldName = 'NRO_DE_CUIT'
      Size = 13
    end
    object CDSLstClientesZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object CDSLstClientesVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 6
    end
    object CDSLstClientesCORREOELECTRONICO: TStringField
      DisplayLabel = 'e mail'
      FieldName = 'CORREOELECTRONICO'
      Size = 100
    end
    object CDSLstClientesCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Size = 50
    end
    object CDSLstClientesTELEFONO_CONTACTO: TStringField
      FieldName = 'TELEFONO_CONTACTO'
      Size = 50
    end
    object CDSLstClientesOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 1
    end
    object CDSLstClientesCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      ProviderFlags = []
      Size = 8
    end
    object CDSLstClientesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      ProviderFlags = []
      Size = 15
    end
    object CDSLstClientesMUESTRAVENDEDOR: TStringField
      FieldName = 'MUESTRAVENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object CDSLstClientesMUESTRASUCURSAL: TStringField
      DisplayLabel = 'Sucursal'
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSLstClientesMUESTRAZONA: TStringField
      DisplayLabel = 'Zona'
      FieldName = 'MUESTRAZONA'
      ProviderFlags = []
      Size = 25
    end
    object CDSLstClientesMUESTRAINSCRIPCION: TStringField
      DisplayLabel = 'Cond.IVA'
      FieldName = 'MUESTRAINSCRIPCION'
      ProviderFlags = []
      Size = 15
    end
    object CDSLstClientesMUESTRACOBRADOR: TStringField
      FieldName = 'MUESTRACOBRADOR'
      ProviderFlags = []
      Size = 50
    end
    object CDSLstClientesTELEDISCADO: TStringField
      FieldName = 'TELEDISCADO'
      ProviderFlags = []
      Size = 6
    end
  end
  object DSLstClientes: TDataSource
    DataSet = CDSLstClientes
    Left = 851
    Top = 352
  end
  object DSPBuscaSucursal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaSucursal
    Left = 608
    Top = 94
  end
  object CDSBuscaSucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaSucursal'
    Left = 688
    Top = 96
    object CDSBuscaSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object CDSBuscaSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 35
    end
  end
  object DSBuscaSucursal: TDataSource
    DataSet = CDSBuscaSucursal
    Left = 789
    Top = 96
  end
  object PopupMenu1: TPopupMenu
    Left = 480
    Top = 136
    object CrearZona1: TMenuItem
      Caption = 'Crear Zona'
      OnClick = CrearZona1Click
    end
    object Borrar1: TMenuItem
      Caption = 'Borrar'
    end
  end
  object CDSLstZonas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaZonas'
    Left = 688
    Top = 216
    object IntegerField1: TIntegerField
      FieldName = 'ID_ZONA'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'DETALLE'
      Size = 25
    end
  end
  object DSLstZonas: TDataSource
    DataSet = CDSLstZonas
    Left = 795
    Top = 219
  end
  object QZonasCoordenadas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from zona_coordenadas')
    Left = 832
    Top = 504
    object QZonasCoordenadasID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QZonasCoordenadasID_ZONA: TIntegerField
      FieldName = 'ID_ZONA'
    end
    object QZonasCoordenadasPOSICION: TStringField
      FieldName = 'POSICION'
      Size = 50
    end
    object QZonasCoordenadasCOLOR: TIntegerField
      FieldName = 'COLOR'
    end
    object QZonasCoordenadasDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 50
    end
  end
  object CDSZonasCoordenadas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPZonasCoordenadas'
    OnNewRecord = CDSZonasCoordenadasNewRecord
    Left = 1016
    Top = 504
    object CDSZonasCoordenadasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSZonasCoordenadasID_ZONA: TIntegerField
      FieldName = 'ID_ZONA'
    end
    object CDSZonasCoordenadasPOSICION: TStringField
      FieldName = 'POSICION'
      Size = 50
    end
    object CDSZonasCoordenadasCOLOR: TIntegerField
      FieldName = 'COLOR'
    end
    object CDSZonasCoordenadasDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 50
    end
  end
  object DSPZonasCoordenadas: TDataSetProvider
    DataSet = QZonasCoordenadas
    UpdateMode = upWhereKeyOnly
    Left = 920
    Top = 504
  end
  object ibgZona: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_ZONA_COORD'
    SystemGenerators = False
    Left = 1096
    Top = 496
  end
  object QBorrarZonas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from zona_coordenadas')
    Left = 824
    Top = 592
    object IntegerField2: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'ID_ZONA'
    end
    object StringField2: TStringField
      FieldName = 'POSICION'
      Size = 50
    end
    object IntegerField4: TIntegerField
      FieldName = 'COLOR'
    end
  end
  object ImageList1: TImageList
    Left = 640
    Top = 288
    Bitmap = {
      494C010106000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000051627E0053626D000000000000000000000000000000
      0000000000000000000099330000993300009933000099330000993300009933
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000056695000566
      9500056695000566950005669500056695000000000000000000000000000000
      0000000000005B667E000F6FD7004093D30000000000000000000E80AA000E80
      AA000E80AA000E80AA0099330000FDFEFE00FDFEFE00FDFEFE008EA4FD00B8C6
      FD00FDFEFE009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000274A90030C9E90012CB
      FE0020CEFE0054DEFF0074E0F8002CA7D3000566950000000000000000000000
      00005F697E00106CD30035A3FF003C9AF00000000000078DBB0049D5EE0023D7
      FE0036D9FE006FE6FF0099330000FDFEFE00FDFEFE007E98FC000335FB00597A
      FC00FDFEFE009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000274A90073FAFE003FE3FE0012CB
      FE0020CEFE0054DEFF0074DEF70032AFD8000484BF000566950000000000706C
      7D001165C100309FFF003C9AF00000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF0099330000D6DEFE004368FC000335FB004368FC000335
      FB00D9E0FE009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000274A90073FAFE003FE3FE0012CB
      FE0020CEFE005BC7E1009E7F7A00B08F8100B6998A00986D6300735050004579
      AB0035A3FF00309FFF000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF00993300005274FC001442FB00BCC9FD00EFF2FE001A47
      FB004F72FC009733040000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000274A90073FAFE003FE3FE0012CB
      FE002DB6DD009E7F7A00E5D4C000FEFBCF00FFFFDC00F4EECB00C4A58A00986D
      6300309FFF00000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF0099330000E4EAFE00D9E0FE00FDFEFE00FDFEFE0098AC
      FD000335FB006434590000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000274A9009FFBFE00A3F3FF00B6F2
      FF00A3898700E1D3CA00FFFFEE00FEFBCF00FEFBCF00FFFAC700FFEEAB00BB8A
      720000000000000000000000000000000000078DBB00B3FCFE00B6F6FF00C6F5
      FF00E3FAFF00EBFBFF0099330000FDFEFE00FDFEFE00FDFEFE00FDFEFE00FDFE
      FE005274FC000335FB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000274A900A7E9F3001CAAD3000791
      C50084787600FCFBD700FEFBCF00FEFBCF00FCFBD700FBF0BF00F6C28300E9C5
      9600986C6B00000000000000000000000000078DBB00BAEEF60030BCDD0011A7
      D200129FCB0020A2CB0099330000993300009933000099330000993300009933
      00008F3311002235C8000335FB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000274A90031B5D3003FE3FE0012CB
      FE008F878200FFFFDC00FEFBCF00FEFBCF00FCFBD700F3CF9600EFAD6A00F2D6
      A000986C6B00000000000000000000000000078DBB004AC5DD0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E3000682B6000E80AA00000000000000
      000000000000000000000335FB000335FB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000274A90073FAFE003FE3FE0012CB
      FE007F7B7A00F7F3CA00FEFBCF00FFFAC700F6D89E00EEBB8100FEE3A600DCBD
      9600986C6B00000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80AA00000000000000
      00000000000000000000000000000335FB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000274A90073FAFE003FE3FE0012CB
      FE004392AB00C6A98C00FFF6B500F6C28300F0B87500FFF4D700F7F3EE00986C
      6B0000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80AA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000274A90073FAFE003FE3FE0012CB
      FE0020CEFE00708E9800BD967D00E9C59600F2D6A000CCB4A100986C6B00986C
      6B0000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80AA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000274A90078FBFE0068F6FF0055F6
      FE005FFEFF0078FBFE0088B5B600767F83006C6A6E006E555500000000000000
      000000000000000000000000000000000000078DBB0091FCFE0082F8FF006FF8
      FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000E80AA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000274A900FBFFFF00F0FFFF00C6FF
      FF00A0FFFF009FFBFE009FFBFE0092FFFF0055F6FE0005669500000000000000
      000000000000000000000000000000000000078DBB00FDFEFE00F4FFFF00D3FF
      FF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000E80AA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000479AF00EDFAFC00DCFF
      FF00B7FFFF009FFBFE0092FFFF0078FBFE00086B9A0000000000000000000000
      000000000000000000000000000000000000000000000C92C000F4FFFF00E3FA
      FF00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000274A9000274
      A9000274A9000274A9000274A9000274A9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000078DBB00078D
      BB00078DBB00078DBB00078DBB00078DBB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000008750D0008750D000875
      0D0008750D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000130020001410300025104000251040001430300013302000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5420800A7440700A23F080000000000000000000000
      00000000000000000000000000000000000000000000000000000E80AA000E80
      AA000E80AA000E80AA000E80AA000E80AA000000000008750D0013AA220010A6
      1D0008750D000000000000000000000000000000000000000000000000000D80
      AA000D80AA000D80AA000D80AA000D80AA000D80AA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000145
      03000145030003780800039C0B00039F0C00039F0C00039D0C00027E0900014D
      0400014D04000000000000000000000000000000000000000000000000000000
      000000000000A23F0800A5420800A23F0800A542080000000000000000000000
      00000000000000000000000000000000000000000000078DBB0049D5EE0023D7
      FE0036D8FD006FE6FF008DE7FA0044BADD000E80AA0008750D001AB12D0013AA
      220008750D000000000000000000000000000000000000000000078DBB0049D5
      EE0023D6FD0036D9FE006FE6FF008DE7FA0044BADD000D80AA00000000000000
      0000000000000000000000000000000000000000000000000000034F09000365
      090004A30D0003A60C0003A00B00029E0A00039F0C0003A00C0003A50C0003A6
      0C00026906000134020000000000000000000000000000000000000000000000
      000000000000A74407000000000000000000A23F0800A23F080000000000A23F
      0800A7440700000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF0008750D0008750D0008750D0008750D0025BD3E001CB4
      310008750D0008750D0008750D0008750D0000000000078DBB008CFBFE0059EA
      FE0023D6FD0035D3F70000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A00000000000000000000000000044F0900066B11000AAB
      1F0007A41500049E0D00029D0A00039D0A00039E0C00039E0C00039E0C0003A0
      0C0003A70C00026A0600024C0400000000000000000000000000000000000000
      000000000000A74407000000000000000000A23F080000000000A23F0800A23F
      0800A23F0800A54208000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF0008750D003CD4620035CE590030C952002CC3490026BE
      410025BD3E001AB12D0017AF2A0008750D0000000000078DBB008CFBFE0059EA
      FE0023D6FD0035D3F70000009A003E6EFF00285BFF001248FF000236FF000029
      F900001DEC0000009A00000000000000000000000000044F090010AC30000DAB
      280009A41C00039E0F0016AA2000D5F2D800E9F8EA0048C05200039E0C00039E
      0C00039F0C0003A70C00024C0400000000000000000000000000000000000000
      000000000000A5420800A23F0800A23F0800A23F080000000000A23F08000000
      000000000000A64307000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF0008750D0041DA6D0041DA6D0038D15E0035CE59002CC3
      49002AC1470025BD3E0020B8360008750D0000000000078DBB008CFBFE0059EA
      FE0023D6FD0035D4F80000009A004474FF003264FF001B50FF00083CFF000029
      F9000022F10000009A000000000000000000035706000D82230017B641000EA9
      2D0005A01300049F0D0007A0110082D58900FFFFFF00F4FCF60040BC4A00039E
      0C00039E0C0003A50C00037B0800014203000000000000000000000000000000
      00000000000000000000A23F0800A7440700A5420800A23F0800A54208000000
      000000000000A23F08000000000000000000078DBB00B3FCFE00B6F6FF00C6F5
      FF00E3FAFF00E9F9FD0008750D0008750D0008750D0008750D003FD868003CD4
      620008750D0008750D0008750D0008750D0000000000078DBB00B3FCFE00B6F6
      FF00C6F5FF00E1F8FD0000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A0000000000000000000357060017A3410018B54A0011AB
      340006A01100039E0C00049F0D00039E0C0074D07D00FCFEFC00F3FBF4003EBC
      4800039E0C0003A10C0003960A00014203000000000000000000000000000000
      00000000000000000000000000009E410D00A14E2200A23F0800A7440700A542
      0800A5420800A23F08000000000000000000078DBB00BAEEF60030BCDD0011A7
      D200129FCB0020A1CA0035A7CD002692BF0092CEE40008750D0045DD710041DA
      6D0008750D0000000000000000000000000000000000078DBB00BAEEF60030BC
      DD0011A7D200129ECA0020A2CB0035A7CD002692BF0092CEE4000D80AA000000
      00000000000000000000000000000000000006680D0021B151001EB75100BFED
      CF00BAEAC600B7E9C200B8EAC500B5E9C200B7E9C100F6FCF700FFFFFF00EEFA
      EF0054C55E0003A00C00039F0C00014A04000000000000000000000000000000
      0000000000000000000000000000957D75008D766C00A55E3900A23F0800A23F
      0800A23F0800000000000000000000000000078DBB004AC5DD0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E3000682B60008750D004DE67F004DE6
      7F0008750D0000000000000000000000000000000000078DBB004AC5DD0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E3000682B6000D80AA000000
      000000000000000000000000000000000000087412003EBD69002ABA5C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFEFC00FFFFFF00FFFF
      FF00AAE3B00003A00C00039F0C00025205000000000000000000000000000000
      000000000000000000008E7C7200AC928E008E7C72008E7C7200000000000000
      000000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE0008750D0008750D000875
      0D0008750D0000000000000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089DCF000D80AA000000
      00000000000000000000000000000000000006780E0054C57A0044C6740052C7
      7D0057CA810056CA800057CA810049C5730079D59200FAFEFA00FFFFFF0097DD
      A5001AAD330007A51800039D0C00014603000000000000000000000000000000
      0000000000008E7C7200D3BDBD008E7C7200AD938F008E7C7200000000000000
      000000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE000E7FA900000000000000
      00000000000000000000000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089DCF000D80AA000000
      00000000000000000000000000000000000006780E004CBD690083DDA70022B6
      55001CB24E0022B5540022B5540055CA7F00E1F6E900FFFFFF0088D99D0010AB
      2F000CA6270006A71600038C0A00014603000000000000000000000000000000
      00008E7C7200E9DEDE008E7C7200A9958F00D2BABA008E7C7200000000000000
      000000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE000E80AA00000000000000
      00000000000000000000000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089DCF000D80AA000000
      0000000000000000000000000000000000000000000013992300AAE7C50068D0
      8E0016AF48001BB14C0039BF6800F4FCF700FFFFFF0084D99E0011AA32000EA7
      29000BA4200009AF1C00036B0A00000000000000000000000000000000008E7C
      7200FCFAFA008E7C7200000000008E7C7200DFCECE008E7C7200000000000000
      000000000000000000000000000000000000078DBB0091FCFE0082F8FF006FF8
      FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000E80AA00000000000000
      00000000000000000000000000000000000000000000078DBB0091FCFE0082F8
      FF006FF8FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000D80AA000000
      000000000000000000000000000000000000000000001399230056C57300C5F0
      D80066CF8C0020B4520023B55400AAE6C00096DEB10019B1480013AC3C0012AA
      34000FB02D000A991F00036B0A00000000000000000000000000000000008E7C
      72008E7C720000000000000000008E7C7200ECE2E2008E7C7200000000000000
      000000000000000000000000000000000000078DBB00FCFFFF00F4FFFF00D3FF
      FF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000E80AA00000000000000
      00000000000000000000000000000000000000000000078DBB00FCFFFF00F4FF
      FF00D3FFFF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000D80AA000000
      0000000000000000000000000000000000000000000000000000139923006ACC
      8800D0F4E3009AE1B60050C77A0038BD67002CBA5D0030BB60002FBC5D0023BC
      4F0011A3300006620F0000000000000000000000000000000000000000008E7C
      72000000000000000000000000008E7C7200F9F5F5008E7C7200000000000000
      000000000000000000000000000000000000000000000C92C000F4FFFF00E3FA
      FF00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF0000000000000000000000
      00000000000000000000000000000000000000000000000000000C92C000F4FF
      FF00E1F8FD00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF00000000000000
      0000000000000000000000000000000000000000000000000000000000001399
      23001399230098E1B500BDEED400A7E7C40090E0B10078D99F0049C779001B9D
      3D001B9D3D000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008E7C72008E7C720000000000000000000000
      0000000000000000000000000000000000000000000000000000078DBB00078D
      BB00078DBB00078DBB00078DBB00078DBB000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000078D
      BB00078DBB00078DBB00078DBB00078DBB00078DBB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001DA4350013992300139923001399230013992300138C2A000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008E7C72000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFCFC0300000000C0F8C00300000000
      8070800300000000002100030000000000030003000000000007000300000000
      000F00030000000000070001000000000007003C000000000007003E00000000
      000F003F00000000000F003F00000000003F003F00000000003F003F00000000
      807F807F00000000C0FFC0FF00000000FF87FFFFF81FFC7FC087E07FE007F87F
      8007C03FC003FB27000080038001FB43000080038001F85B000080030000FC1B
      000080030000FE030007801F0000FE070007801F0000FC3F0007801F0000F83F
      003F801F0000F03F003F801F8001E23F003F801F8001E63F003F801FC003EE3F
      807FC03FE007FE7FC0FFE07FF81FFEFF00000000000000000000000000000000
      000000000000}
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 576
    Top = 248
    object Editar: TAction
      Caption = 'Editar'
      ImageIndex = 5
    end
    object Borrar: TAction
      Caption = 'Borrar'
      ImageIndex = 1
    end
    object Crear: TAction
      Caption = 'Crear Zona'
      ImageIndex = 0
      OnExecute = CrearExecute
    end
    object Guardar: TAction
      Enabled = False
      ImageIndex = 2
    end
  end
  object QVentasAnuales: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.codigo,c.nombre,c.razon_social,c.direccion_comercial,c.' +
        'telefono_comercial_1,'
      
        '          c.telefono_comercial_2,c.cpostal,c.localidad,s.detalle' +
        ' as muestrasucursal,c.sucursal,'
      
        '          z.detalle as muestrazona,c.nro_de_cuit,i.detalle as Mu' +
        'estraInscripcion,c.zona, c.vendedor,'
      
        '          c.correoelectronico,c.contacto,c.telefono_contacto,c.o' +
        'bservaciones,p.nombre as MuestraVendedor,'
      
        '          cob.nombre as MuestraCobrador,cp.telediscado,c.CATEGOR' +
        'IA, c.latitud,c.longitud,'
      '          cp.detalle_postal as localidad,pv.nombre as Provincia'
      '                 from Clientes c'
      'left join sucursal s on s.codigo=c.sucursal'
      'left join zona z on z.id_zona=c.zona'
      'left join inscripcion i on i.codigo=c.condicion_iva'
      'left join personal p on p.codigo=c.vendedor'
      'left join personal cob on cob.codigo=c.cobrador'
      'left join c_postal cp on cp.id_postal=c.id_cod_postal'
      'left join provincia pv on pv.id_pro=cp.provincia'
      ''
      'where (c.localidad=:localidad) and'
      '      (c.sucursal = :sucursal or :sucursal = - 1 ) and'
      '      (c.zona = :zona or :zona = -1 ) and'
      '      (c.vendedor = :vendedor or :vendedor = '#39'******'#39' ) and'
      '      (c.CATEGORIA = :CATEGORIA or :CATEGORIA = -1 ) and'
      '      (c.activo = :activo or :activo = '#39'*'#39' )'
      ''
      '')
    Left = 248
    Top = 408
    ParamData = <
      item
        Name = 'localidad'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'sucursal'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'zona'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'zona'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'vendedor'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'vendedor'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'CATEGORIA'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'CATEGORIA'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'activo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'activo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object DSPLocalidades: TDataSetProvider
    DataSet = DMBuscadores.QBuscaCPostal
    Left = 904
    Top = 88
  end
  object CDSLocalidades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPLocalidades'
    Left = 984
    Top = 88
    object CDSLocalidadesID_POSTAL: TIntegerField
      FieldName = 'ID_POSTAL'
      Required = True
    end
    object CDSLocalidadesDETALLE_POSTAL: TStringField
      FieldName = 'DETALLE_POSTAL'
      Required = True
      Size = 25
    end
  end
  object DSLocalidades: TDataSource
    DataSet = CDSLocalidades
    Left = 1096
    Top = 80
  end
  object JvFormStorage1: TJvFormStorage
    AppStoragePath = '%FORM_NAME%\'
    StoredValues = <>
    Left = 984
    Top = 56
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    AutoFlush = True
    SubStorages = <>
    Left = 888
    Top = 32
  end
end

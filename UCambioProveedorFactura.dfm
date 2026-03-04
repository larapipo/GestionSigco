object FormCambiaProveedorFactura: TFormCambiaProveedorFactura
  Left = 340
  Top = 297
  Caption = 'Cambia Proveedor Factura'
  ClientHeight = 442
  ClientWidth = 497
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
  OnShow = FormShow
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 497
    Height = 265
    Align = alTop
    Color = clInactiveCaptionText
    ParentBackground = False
    TabOrder = 0
    object JvGradient1: TJvGradient
      Left = 1
      Top = 1
      Width = 495
      Height = 208
      Align = alTop
      Style = grVertical
      StartColor = clWhite
      EndColor = clGradientInactiveCaption
      ExplicitWidth = 500
    end
    object Label1: TLabel
      Left = 8
      Top = 4
      Width = 50
      Height = 13
      Caption = 'Proveedor'
    end
    object Label2: TLabel
      Left = 88
      Top = 42
      Width = 60
      Height = 13
      Caption = 'Razon Social'
    end
    object Label3: TLabel
      Left = 87
      Top = 77
      Width = 43
      Height = 13
      Caption = 'Direccion'
    end
    object Label4: TLabel
      Left = 88
      Top = 114
      Width = 44
      Height = 13
      Caption = 'Localidad'
    end
    object Label5: TLabel
      Left = 318
      Top = 114
      Width = 65
      Height = 13
      Caption = 'Codigo Postal'
    end
    object Label6: TLabel
      Left = 88
      Top = 153
      Width = 45
      Height = 13
      Caption = 'Nro.CUIT'
    end
    object Label8: TLabel
      Left = 88
      Top = 4
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object Label10: TLabel
      Left = 222
      Top = 153
      Width = 17
      Height = 13
      Caption = 'IVA'
    end
    object JvGradient2: TJvGradient
      Left = 1
      Top = 209
      Width = 495
      Height = 55
      Align = alTop
      Style = grVertical
      StartColor = clWhite
      EndColor = clGradientInactiveCaption
      ExplicitWidth = 500
    end
    object edNombreCliente: TEdit
      Left = 88
      Top = 18
      Width = 355
      Height = 21
      Color = clInfoBk
      Enabled = False
      TabOrder = 1
    end
    object btOk: TBitBtn
      Left = 413
      Top = 219
      Width = 38
      Height = 33
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
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btOkClick
    end
    object btcancelar: TBitBtn
      Left = 369
      Top = 219
      Width = 38
      Height = 33
      Cancel = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      ModalResult = 2
      NumGlyphs = 2
      TabOrder = 3
      OnClick = btcancelarClick
    end
    object edRazonSocial: TEdit
      Left = 87
      Top = 55
      Width = 355
      Height = 21
      Color = clInfoBk
      Enabled = False
      TabOrder = 4
    end
    object edDireccion: TEdit
      Left = 87
      Top = 92
      Width = 355
      Height = 21
      Color = clInfoBk
      Enabled = False
      TabOrder = 5
    end
    object edCuit: TEdit
      Left = 87
      Top = 167
      Width = 123
      Height = 21
      Color = clInfoBk
      Enabled = False
      TabOrder = 6
    end
    object edLocalidad: TEdit
      Left = 87
      Top = 130
      Width = 225
      Height = 21
      Color = clInfoBk
      Enabled = False
      TabOrder = 7
    end
    object edCPostal: TEdit
      Left = 318
      Top = 130
      Width = 100
      Height = 21
      Color = clInfoBk
      Enabled = False
      TabOrder = 8
    end
    object edIva: TEdit
      Left = 221
      Top = 167
      Width = 34
      Height = 21
      Color = clInfoBk
      Enabled = False
      TabOrder = 9
    end
    object ceCliente: TJvComboEdit
      Left = 9
      Top = 18
      Width = 73
      Height = 21
      ButtonWidth = 16
      ClickKey = 16397
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000A000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFC000003300000033000000FFC00000}
      TabOrder = 0
      Text = ''
      OnButtonClick = BuscarProveedorExecute
      OnKeyPress = ceClienteKeyPress
    end
  end
  object ActionList1: TActionList
    Left = 320
    Top = 240
    object BuscarProveedor: TAction
      Caption = 'BuscarProveedor'
      OnExecute = BuscarProveedorExecute
    end
  end
  object spCambiaProveedor: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'CAMBIA_PROVEEDOR_CPBTE'
    Left = 304
    Top = 304
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        Precision = 6
        ParamType = ptInput
      end
      item
        Name = 'ID_CPBTE'
        DataType = ftInteger
        Precision = 4
        ParamType = ptInput
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Precision = 2
        ParamType = ptInput
      end>
  end
  object QProveedores: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT P.* ,'
      'c.Telediscado,'
      'PerIva.Descripcion as DesPerIva,'
      'PerIB.Descripcion as DesPerIB,'
      'PerIB2.Descripcion as DesPerIB2,'
      'retib.detalle as MuestraDetalleRetIIBB,'
      'retib.tasa as MuestraTasaRetIIBB,'
      
        'retib.minimo_imponible as MuestraMinImponiRetIIBB FROM Poveedor ' +
        'P'
      'left join c_postal c on p.id_cod_postal=c.id_postal'
      'left join PercepIva PerIva on PerIva.Codigo=p.Id_Perc_Iva'
      'left join PercepIB PerIB on PerIB.Codigo=p.Id_Perc_IBB'
      'left join PercepIB PerIB2 on PerIB2.Codigo=p.Id_Perc_IBB_2'
      ''
      
        'left join tasas_ret_ibrutos retIB on RetIB.id=p.id_tasa_retencio' +
        'n_ib'
      'where P.Codigo=:Codigo')
    Left = 101
    Top = 320
    ParamData = <
      item
        Name = 'Codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QProveedoresCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object QProveedoresNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Required = True
      Size = 35
    end
    object QProveedoresRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
    object QProveedoresN_DE_CUENTA: TStringField
      FieldName = 'N_DE_CUENTA'
      Size = 14
    end
    object QProveedoresID_COD_POSTAL: TIntegerField
      FieldName = 'ID_COD_POSTAL'
    end
    object QProveedoresCOD_POSTAL: TStringField
      FieldName = 'COD_POSTAL'
      Size = 8
    end
    object QProveedoresLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object QProveedoresDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object QProveedoresTELEFONO_1: TStringField
      FieldName = 'TELEFONO_1'
      Size = 10
    end
    object QProveedoresTELEFONO_2: TStringField
      FieldName = 'TELEFONO_2'
      Size = 10
    end
    object QProveedoresCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Required = True
    end
    object QProveedoresN_DE_CUIT: TStringField
      FieldName = 'N_DE_CUIT'
      Size = 13
    end
    object QProveedoresACTIVO: TStringField
      FieldName = 'ACTIVO'
      Size = 1
    end
    object QProveedoresRETIENE_IVA: TStringField
      FieldName = 'RETIENE_IVA'
      Size = 1
    end
    object QProveedoresRETIENE_IB: TStringField
      FieldName = 'RETIENE_IB'
      Size = 1
    end
    object QProveedoresRETIENE_GANANCIAS: TStringField
      FieldName = 'RETIENE_GANANCIAS'
      Size = 1
    end
    object QProveedoresIVA_SERVICIOS: TStringField
      FieldName = 'IVA_SERVICIOS'
      Size = 1
    end
    object QProveedoresPRECIOS_CON_IVA: TStringField
      FieldName = 'PRECIOS_CON_IVA'
      Size = 1
    end
    object QProveedoresOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      BlobType = ftMemo
      Size = 1
    end
    object QProveedoresNOMBRE_REPRESENTANTE: TStringField
      FieldName = 'NOMBRE_REPRESENTANTE'
      Size = 35
    end
    object QProveedoresDIRECCION_REPRESENTANTE: TStringField
      FieldName = 'DIRECCION_REPRESENTANTE'
      Size = 35
    end
    object QProveedoresTELEFONO_REPRESENTANTE: TStringField
      FieldName = 'TELEFONO_REPRESENTANTE'
      Size = 25
    end
    object QProveedoresTIPO_PROVEEDOR: TStringField
      FieldName = 'TIPO_PROVEEDOR'
      Required = True
      Size = 1
    end
    object QProveedoresFECHAULTIMACOMPRA: TSQLTimeStampField
      FieldName = 'FECHAULTIMACOMPRA'
    end
    object QProveedoresFECHAALTA: TSQLTimeStampField
      FieldName = 'FECHAALTA'
    end
    object QProveedoresSALDO_INICIAL: TFloatField
      FieldName = 'SALDO_INICIAL'
    end
    object QProveedoresID_PERC_IVA: TIntegerField
      FieldName = 'ID_PERC_IVA'
    end
    object QProveedoresID_PERC_IBB: TIntegerField
      FieldName = 'ID_PERC_IBB'
    end
    object QProveedoresID_PERC_IBB_2: TIntegerField
      FieldName = 'ID_PERC_IBB_2'
    end
    object QProveedoresRUBRO: TIntegerField
      FieldName = 'RUBRO'
    end
    object QProveedoresID_FACTURAPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURAPORDEFECTO'
    end
    object QProveedoresEXENTO_GANACIA: TStringField
      FieldName = 'EXENTO_GANACIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QProveedoresCODIGO_REGIMEN_RET_GANACIA: TIntegerField
      FieldName = 'CODIGO_REGIMEN_RET_GANACIA'
      Required = True
    end
    object QProveedoresEXENTO_RETENCION_IB: TStringField
      FieldName = 'EXENTO_RETENCION_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QProveedoresID_TASA_RETENCION_IB: TIntegerField
      FieldName = 'ID_TASA_RETENCION_IB'
      Required = True
    end
    object QProveedoresNRO_IIBB: TStringField
      FieldName = 'NRO_IIBB'
      Size = 15
    end
    object QProveedoresCORREO: TStringField
      FieldName = 'CORREO'
      Size = 100
    end
    object QProveedoresCONV_MULTI: TStringField
      FieldName = 'CONV_MULTI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QProveedoresMONEDA_PRECIOS: TIntegerField
      FieldName = 'MONEDA_PRECIOS'
    end
    object QProveedoresTELEDISCADO: TStringField
      FieldName = 'TELEDISCADO'
      Size = 6
    end
    object QProveedoresDESPERIVA: TStringField
      FieldName = 'DESPERIVA'
    end
    object QProveedoresDESPERIB: TStringField
      FieldName = 'DESPERIB'
    end
    object QProveedoresDESPERIB2: TStringField
      FieldName = 'DESPERIB2'
    end
    object QProveedoresMUESTRADETALLERETIIBB: TStringField
      FieldName = 'MUESTRADETALLERETIIBB'
      Size = 25
    end
    object QProveedoresMUESTRATASARETIIBB: TFloatField
      FieldName = 'MUESTRATASARETIIBB'
    end
    object QProveedoresMUESTRAMINIMPONIRETIIBB: TFloatField
      FieldName = 'MUESTRAMINIMPONIRETIIBB'
    end
  end
  object spCambiaProveeRecepcion: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'CAMBIA_PROVEEDOR_RECEPCION'
    Left = 304
    Top = 368
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end
      item
        Position = 2
        Name = 'ID_CPBTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end>
  end
end

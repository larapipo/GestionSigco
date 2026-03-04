object FormTransformaFactura: TFormTransformaFactura
  Left = 373
  Top = 99
  BorderIcons = [biSystemMenu]
  Caption = 'Convertidor de Comprobantes'
  ClientHeight = 682
  ClientWidth = 720
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 720
    Height = 161
    Align = alTop
    BevelOuter = bvNone
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 436
      Top = 9
      Width = 120
      Height = 13
      Caption = 'Numero de Comprobante'
    end
    object Label2: TLabel
      Left = 223
      Top = 9
      Width = 94
      Height = 13
      Caption = 'Clase Comprobante'
    end
    object Label3: TLabel
      Left = 17
      Top = 9
      Width = 40
      Height = 13
      Caption = 'Sucursal'
    end
    object Label4: TLabel
      Left = 168
      Top = 9
      Width = 20
      Height = 13
      Caption = 'Tipo'
    end
    object Label5: TLabel
      Left = 17
      Top = 55
      Width = 42
      Height = 13
      Caption = 'Deposito'
    end
    object Label6: TLabel
      Left = 223
      Top = 55
      Width = 22
      Height = 13
      Caption = 'Caja'
    end
    object edSuc: TEdit
      Left = 460
      Top = 28
      Width = 51
      Height = 21
      TabOrder = 3
      Text = 'edSuc'
      OnExit = edSucExit
    end
    object edNum: TEdit
      Left = 517
      Top = 28
      Width = 84
      Height = 21
      TabOrder = 4
      Text = 'edNum'
      OnExit = edNumExit
    end
    object cbTipo: TComboBox
      Left = 168
      Top = 28
      Width = 49
      Height = 21
      TabOrder = 1
      Text = 'FC'
      OnChange = cbTipoChange
      Items.Strings = (
        'FC'
        'NC'
        'ND'
        'FO')
    end
    object dbcSucursal: TJvDBLookupCombo
      Left = 17
      Top = 28
      Width = 145
      Height = 21
      LookupField = 'CODIGO'
      LookupDisplay = 'DETALLE'
      LookupSource = DSSucursal
      TabOrder = 0
      OnChange = dbcSucursalChange
    end
    object dbcComprobantes: TJvDBLookupCombo
      Left = 223
      Top = 28
      Width = 193
      Height = 21
      DropDownCount = 18
      DropDownWidth = 360
      LookupField = 'ID_COMPROBANTE'
      LookupDisplay = 
        'DENOMINACION;CLASE_COMPROB;LETRA;PREFIJO;NUMERO;FISCAL;FACTURAEL' +
        'ECTRONICA'
      LookupSource = DSComprobantes
      TabOrder = 2
      OnChange = dbcComprobantesChange
    end
    object dbcDeposito: TJvDBLookupCombo
      Left = 17
      Top = 74
      Width = 145
      Height = 21
      LookupField = 'ID'
      LookupDisplay = 'NOMBRE'
      LookupSource = DSDepositos
      TabOrder = 5
      OnChange = dbcSucursalChange
    end
    object dbcCaja: TJvDBLookupCombo
      Left = 223
      Top = 74
      Width = 193
      Height = 21
      LookupField = 'ID_CUENTA_CAJA'
      LookupDisplay = 'MUESTRACAJA'
      LookupSource = DSCaja
      TabOrder = 6
      OnChange = dbcSucursalChange
    end
    object btsalir: TBitBtn
      Left = 562
      Top = 124
      Width = 75
      Height = 25
      Caption = '&Close'
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
      TabOrder = 8
      OnClick = btsalirClick
    end
    object btOk: TBitBtn
      Left = 481
      Top = 124
      Width = 75
      Height = 25
      Caption = 'OK'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      TabOrder = 7
      OnClick = btOkClick
    end
    object edLetra: TEdit
      Left = 436
      Top = 28
      Width = 18
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 9
      Text = 'EDSUC'
      OnExit = edSucExit
    end
    object chImpresos: TCheckBox
      Left = 448
      Top = 55
      Width = 153
      Height = 17
      Caption = 'Marcar como no Impresos'
      TabOrder = 10
    end
    object chModoFiscal: TAdvOfficeRadioGroup
      Left = 17
      Top = 112
      Width = 300
      Height = 37
      BorderColor = 12895944
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -12
      CaptionFont.Name = 'Segoe UI'
      CaptionFont.Style = []
      Version = '1.8.4.2'
      Caption = 'Comprobantes Modo Fiscal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3881787
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentCtl3D = True
      ParentFont = False
      TabOrder = 11
      UIStyle = tsOffice2019White
      Columns = 3
      Items.Strings = (
        'Ver Fiscales'
        'Ver No Fiscales'
        'Ver Todos')
      Themed = True
      Ellipsis = False
      OnRadioButtonClick = chModoFiscalRadioButtonClick
    end
  end
  object DSComprobantes: TDataSource
    DataSet = QComprobantes
    Left = 360
    Top = 200
  end
  object DSSucursal: TDataSource
    DataSet = QSucursal
    Left = 16
    Top = 160
  end
  object DSPFcVtaCab: TDataSetProvider
    DataSet = QFcVtaCab
    Options = []
    Left = 112
    Top = 288
  end
  object CDSFcVtaCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPFcVtaCab'
    Left = 208
    Top = 288
    object CDSFcVtaCabID_FC: TIntegerField
      FieldName = 'ID_FC'
      Required = True
    end
    object CDSFcVtaCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSFcVtaCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSFcVtaCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSFcVtaCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSFcVtaCabLETRAFAC: TStringField
      FieldName = 'LETRAFAC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaCabSUCFAC: TStringField
      FieldName = 'SUCFAC'
      Size = 4
    end
    object CDSFcVtaCabNUMEROFAC: TStringField
      FieldName = 'NUMEROFAC'
      Size = 8
    end
    object CDSFcVtaCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSFcVtaCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSFcVtaCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object CDSFcVtaCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object CDSFcVtaCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSFcVtaCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Required = True
    end
    object CDSFcVtaCabCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSFcVtaCabLISTAPRECIO: TIntegerField
      FieldName = 'LISTAPRECIO'
    end
    object CDSFcVtaCabFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Required = True
    end
    object CDSFcVtaCabFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
    end
    object CDSFcVtaCabFECHA_FISCAL: TSQLTimeStampField
      FieldName = 'FECHA_FISCAL'
    end
    object CDSFcVtaCabCONDICIONVTA: TIntegerField
      FieldName = 'CONDICIONVTA'
      Required = True
    end
    object CDSFcVtaCabANULADO: TStringField
      FieldName = 'ANULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaCabNRORTO: TStringField
      FieldName = 'NRORTO'
      Size = 100
    end
    object CDSFcVtaCabN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
    end
    object CDSFcVtaCabNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
      Required = True
    end
    object CDSFcVtaCabNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
      Required = True
    end
    object CDSFcVtaCabNETONOGRAV1: TFloatField
      FieldName = 'NETONOGRAV1'
      Required = True
    end
    object CDSFcVtaCabNETONOGRAV2: TFloatField
      FieldName = 'NETONOGRAV2'
      Required = True
    end
    object CDSFcVtaCabDSTO: TFloatField
      FieldName = 'DSTO'
      Required = True
    end
    object CDSFcVtaCabDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
      Required = True
    end
    object CDSFcVtaCabNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
      Required = True
    end
    object CDSFcVtaCabNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
      Required = True
    end
    object CDSFcVtaCabTOTAL: TFloatField
      FieldName = 'TOTAL'
      Required = True
    end
    object CDSFcVtaCabDEBE: TFloatField
      FieldName = 'DEBE'
      Required = True
    end
    object CDSFcVtaCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Size = 60
    end
    object CDSFcVtaCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Size = 60
    end
    object CDSFcVtaCabCPTE_MANUAL: TStringField
      FieldName = 'CPTE_MANUAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Required = True
    end
    object CDSFcVtaCabFACTURANRO: TStringField
      FieldName = 'FACTURANRO'
      Size = 13
    end
    object CDSFcVtaCabZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object CDSFcVtaCabLDR: TIntegerField
      FieldName = 'LDR'
      Required = True
    end
    object CDSFcVtaCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object CDSFcVtaCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaCabNROENTREGA: TIntegerField
      FieldName = 'NROENTREGA'
    end
    object CDSFcVtaCabINGRESA_A_CTACTE: TStringField
      FieldName = 'INGRESA_A_CTACTE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaCabINGRESA_LIBRO_IVA: TStringField
      FieldName = 'INGRESA_LIBRO_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaCabTIPO_REMITO: TStringField
      FieldName = 'TIPO_REMITO'
      Size = 2
    end
    object CDSFcVtaCabIDREMITO: TIntegerField
      FieldName = 'IDREMITO'
    end
    object CDSFcVtaCabREDUCIDA: TStringField
      FieldName = 'REDUCIDA'
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaCabCOMSIONVENDEDOR: TFloatField
      FieldName = 'COMSIONVENDEDOR'
      Required = True
    end
    object CDSFcVtaCabLIQUIDADA: TStringField
      FieldName = 'LIQUIDADA'
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaCabFECHA_LIQUIDACION: TSQLTimeStampField
      FieldName = 'FECHA_LIQUIDACION'
    end
    object CDSFcVtaCabVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 6
    end
    object CDSFcVtaCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object CDSFcVtaCabNC_CONTADO: TStringField
      FieldName = 'NC_CONTADO'
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaCabCAJA_POR_DEFECTO: TIntegerField
      FieldName = 'CAJA_POR_DEFECTO'
    end
    object CDSFcVtaCabNRO_Z: TIntegerField
      FieldName = 'NRO_Z'
    end
    object CDSFcVtaCabVALORES_RECIBIDOS: TFloatField
      FieldName = 'VALORES_RECIBIDOS'
      Required = True
    end
    object CDSFcVtaCabPERCEPCION_IB_TASA: TFloatField
      FieldName = 'PERCEPCION_IB_TASA'
      Required = True
    end
    object CDSFcVtaCabPERCEPCION_IB_IMPORTE: TFloatField
      FieldName = 'PERCEPCION_IB_IMPORTE'
      Required = True
    end
    object CDSFcVtaCabPERCIBE_IB: TStringField
      FieldName = 'PERCIBE_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaCabPERCEPCION_IB_BASEIMPONIBLE: TFloatField
      FieldName = 'PERCEPCION_IB_BASEIMPONIBLE'
      Required = True
    end
    object CDSFcVtaCabRENGLONES: TSmallintField
      FieldName = 'RENGLONES'
      Required = True
    end
    object CDSFcVtaCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object CDSFcVtaCabNOTAPEDIDO_ID: TIntegerField
      FieldName = 'NOTAPEDIDO_ID'
    end
    object CDSFcVtaCabNOTAPEDIDO_NROCPBTE: TStringField
      FieldName = 'NOTAPEDIDO_NROCPBTE'
      Size = 13
    end
    object CDSFcVtaCabID_FC_CLON: TIntegerField
      FieldName = 'ID_FC_CLON'
    end
    object CDSFcVtaCabPRESUPUESTO_ID: TIntegerField
      FieldName = 'PRESUPUESTO_ID'
    end
    object CDSFcVtaCabPRESUPUESTO_NROCPBTE: TStringField
      FieldName = 'PRESUPUESTO_NROCPBTE'
      Size = 13
    end
    object CDSFcVtaCabMONEDA_CPBTE: TIntegerField
      FieldName = 'MONEDA_CPBTE'
    end
    object CDSFcVtaCabMONEDA_CPBTE_COTIZACION: TFloatField
      FieldName = 'MONEDA_CPBTE_COTIZACION'
    end
    object CDSFcVtaCabPOR_CTA_Y_ORDEN: TStringField
      FieldName = 'POR_CTA_Y_ORDEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaCabPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 6
    end
    object CDSFcVtaCabTIPO_VTA: TStringField
      FieldName = 'TIPO_VTA'
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaCabID_RECEPCION_GTIA: TIntegerField
      FieldName = 'ID_RECEPCION_GTIA'
    end
    object CDSFcVtaCabJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
    end
    object CDSFcVtaCabJURIDICION_LOCALIDAD: TIntegerField
      FieldName = 'JURIDICION_LOCALIDAD'
    end
    object CDSFcVtaCabCON_GTIA_EXTENDIDA: TStringField
      FieldName = 'CON_GTIA_EXTENDIDA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaCabMESES_DE_GARANTIA: TIntegerField
      FieldName = 'MESES_DE_GARANTIA'
      Required = True
    end
    object CDSFcVtaCabPOLIZA: TStringField
      FieldName = 'POLIZA'
    end
    object CDSFcVtaCabVALOR_ASEGURADO: TFloatField
      FieldName = 'VALOR_ASEGURADO'
    end
    object CDSFcVtaCabABONO_PERIODO: TStringField
      FieldName = 'ABONO_PERIODO'
      Size = 6
    end
    object CDSFcVtaCabNUMERO_OPERACION: TStringField
      FieldName = 'NUMERO_OPERACION'
      Size = 8
    end
    object CDSFcVtaCabSALDO_ACTUAL_CC: TFloatField
      FieldName = 'SALDO_ACTUAL_CC'
    end
    object CDSFcVtaCabID_NOTA_CAMBIO: TIntegerField
      FieldName = 'ID_NOTA_CAMBIO'
    end
    object CDSFcVtaCabCAE: TStringField
      FieldName = 'CAE'
      Required = True
      Size = 50
    end
    object CDSFcVtaCabCAE_VENCIMIENTO: TSQLTimeStampField
      FieldName = 'CAE_VENCIMIENTO'
    end
    object CDSFcVtaCabFACTURA_ELECTRONICA: TStringField
      FieldName = 'FACTURA_ELECTRONICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaCabCANT_BULTOS: TIntegerField
      FieldName = 'CANT_BULTOS'
      Required = True
    end
    object CDSFcVtaCabCUOTAS_CC: TIntegerField
      FieldName = 'CUOTAS_CC'
      Required = True
    end
    object CDSFcVtaCabINTERVALO_CUOTA: TIntegerField
      FieldName = 'INTERVALO_CUOTA'
      Required = True
    end
    object CDSFcVtaCabID_GARANTE: TIntegerField
      FieldName = 'ID_GARANTE'
    end
    object CDSFcVtaCabPAGO_A_CTA: TFloatField
      FieldName = 'PAGO_A_CTA'
      Required = True
    end
    object CDSFcVtaCabID_FC_CON_ADEL: TIntegerField
      FieldName = 'ID_FC_CON_ADEL'
      Required = True
    end
    object CDSFcVtaCabPRIMER_VTO: TSQLTimeStampField
      FieldName = 'PRIMER_VTO'
    end
    object CDSFcVtaCabANTICIPO_VTO: TSQLTimeStampField
      FieldName = 'ANTICIPO_VTO'
    end
    object CDSFcVtaCabCENTRO_COSTO: TIntegerField
      FieldName = 'CENTRO_COSTO'
      Required = True
    end
    object CDSFcVtaCabID_PEDIDO_MORPHI: TIntegerField
      FieldName = 'ID_PEDIDO_MORPHI'
    end
    object CDSFcVtaCabID_PAIS: TSmallintField
      FieldName = 'ID_PAIS'
    end
    object CDSFcVtaCabCUIT_PAIS: TStringField
      FieldName = 'CUIT_PAIS'
      Size = 13
    end
    object CDSFcVtaCabDOC_ADUANERO: TStringField
      FieldName = 'DOC_ADUANERO'
      Size = 15
    end
    object CDSFcVtaCabFECHA_CARGA: TSQLTimeStampField
      FieldName = 'FECHA_CARGA'
    end
    object CDSFcVtaCabNRO_INTERNO: TStringField
      FieldName = 'NRO_INTERNO'
    end
    object CDSFcVtaCabFOB_TOTAL: TFloatField
      FieldName = 'FOB_TOTAL'
      Required = True
    end
    object CDSFcVtaCabNOTAS: TStringField
      FieldName = 'NOTAS'
      Size = 300
    end
    object CDSFcVtaCabDESTINO_DOCUMENTO: TStringField
      FieldName = 'DESTINO_DOCUMENTO'
      Size = 5
    end
    object CDSFcVtaCabPERMISO_EMBARQUE: TStringField
      FieldName = 'PERMISO_EMBARQUE'
      Size = 100
    end
    object CDSFcVtaCabINCOTERMS: TStringField
      FieldName = 'INCOTERMS'
      Size = 5
    end
    object CDSFcVtaCabCBU: TStringField
      FieldName = 'CBU'
      Size = 22
    end
    object CDSFcVtaCabASOCIADO_TIPO: TIntegerField
      FieldName = 'ASOCIADO_TIPO'
    end
    object CDSFcVtaCabASOCIADO_PTOVTA: TIntegerField
      FieldName = 'ASOCIADO_PTOVTA'
    end
    object CDSFcVtaCabASOCIADO_NRO: TFloatField
      FieldName = 'ASOCIADO_NRO'
      Required = True
    end
    object CDSFcVtaCabASOCIADO_CPTEFCH: TStringField
      FieldName = 'ASOCIADO_CPTEFCH'
      Size = 8
    end
    object CDSFcVtaCabINF_X: TStringField
      FieldName = 'INF_X'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaCabTIPO_OPERACION_EXPO: TStringField
      FieldName = 'TIPO_OPERACION_EXPO'
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaCabMEDIO_TRANSPORTE_EXPO: TStringField
      FieldName = 'MEDIO_TRANSPORTE_EXPO'
    end
    object CDSFcVtaCabID_ADUANA: TIntegerField
      FieldName = 'ID_ADUANA'
    end
    object CDSFcVtaCabREFERENCIA_EXPO: TStringField
      FieldName = 'REFERENCIA_EXPO'
      Size = 30
    end
    object CDSFcVtaCabCAMBIO_EXPO: TFloatField
      FieldName = 'CAMBIO_EXPO'
    end
    object CDSFcVtaCabVUELTO: TFloatField
      FieldName = 'VUELTO'
      Required = True
    end
    object CDSFcVtaCabID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
    end
    object CDSFcVtaCabID_DESTINO: TIntegerField
      FieldName = 'ID_DESTINO'
    end
    object CDSFcVtaCabHONORARIOS: TFloatField
      FieldName = 'HONORARIOS'
      Required = True
    end
    object CDSFcVtaCabHONORARIOS_PROCENTAJ: TFloatField
      FieldName = 'HONORARIOS_PROCENTAJ'
      Required = True
    end
    object CDSFcVtaCabDEDUCE_GASTOS: TStringField
      FieldName = 'DEDUCE_GASTOS'
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaCabASOCIADO_ID_CPBTE: TIntegerField
      FieldName = 'ASOCIADO_ID_CPBTE'
      Required = True
    end
    object CDSFcVtaCabCODIGO_ACTIVIDAD: TStringField
      FieldName = 'CODIGO_ACTIVIDAD'
      Required = True
      Size = 10
    end
    object CDSFcVtaCabTRANSPORTE_UNIDAD: TIntegerField
      FieldName = 'TRANSPORTE_UNIDAD'
    end
    object CDSFcVtaCabTRANSPORTE_ADICIONAL: TIntegerField
      FieldName = 'TRANSPORTE_ADICIONAL'
    end
    object CDSFcVtaCabID_CHOFER: TIntegerField
      FieldName = 'ID_CHOFER'
    end
    object CDSFcVtaCabPERCIBE_IVA: TStringField
      FieldName = 'PERCIBE_IVA'
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaCabMINIMO_PERCI_IVA: TFloatField
      FieldName = 'MINIMO_PERCI_IVA'
    end
    object CDSFcVtaCabCOT: TStringField
      FieldName = 'COT'
      Size = 25
    end
  end
  object CDSFcVtaDet: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPFcVtaDet'
    Left = 208
    Top = 344
    object CDSFcVtaDetID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSFcVtaDetID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      Required = True
    end
    object CDSFcVtaDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSFcVtaDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object CDSFcVtaDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSFcVtaDetRENGLON: TFloatField
      FieldName = 'RENGLON'
    end
    object CDSFcVtaDetFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Required = True
    end
    object CDSFcVtaDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object CDSFcVtaDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 45
    end
    object CDSFcVtaDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Size = 3
    end
    object CDSFcVtaDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object CDSFcVtaDetUNIDADES_GRAVADO: TFloatField
      FieldName = 'UNIDADES_GRAVADO'
    end
    object CDSFcVtaDetUNIDADES_EXENTO: TFloatField
      FieldName = 'UNIDADES_EXENTO'
    end
    object CDSFcVtaDetUNIDADES_TOTAL: TFloatField
      FieldName = 'UNIDADES_TOTAL'
    end
    object CDSFcVtaDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
    end
    object CDSFcVtaDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
    end
    object CDSFcVtaDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
    end
    object CDSFcVtaDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
    end
    object CDSFcVtaDetIVA_UNITARIO: TFloatField
      FieldName = 'IVA_UNITARIO'
      Required = True
    end
    object CDSFcVtaDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
    end
    object CDSFcVtaDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
    end
    object CDSFcVtaDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaDetTOTAL_EXENTO: TFloatField
      FieldName = 'TOTAL_EXENTO'
      Required = True
    end
    object CDSFcVtaDetTOTAL_GRAVADO: TFloatField
      FieldName = 'TOTAL_GRAVADO'
      Required = True
    end
    object CDSFcVtaDetIVA_TOTAL: TFloatField
      FieldName = 'IVA_TOTAL'
      Required = True
    end
    object CDSFcVtaDetTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object CDSFcVtaDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Required = True
    end
    object CDSFcVtaDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Required = True
    end
    object CDSFcVtaDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
    end
    object CDSFcVtaDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
    end
    object CDSFcVtaDetDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Required = True
    end
    object CDSFcVtaDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object CDSFcVtaDetMARGEN: TFloatField
      FieldName = 'MARGEN'
    end
    object CDSFcVtaDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaDetGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaDetCON_NRO_SERIE: TStringField
      FieldName = 'CON_NRO_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaDetCON_CODIGO_BARRA: TStringField
      FieldName = 'CON_CODIGO_BARRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaDetIB_TASA: TFloatField
      FieldName = 'IB_TASA'
      Required = True
    end
    object CDSFcVtaDetTIPOIB_TASA: TIntegerField
      FieldName = 'TIPOIB_TASA'
      Required = True
    end
    object CDSFcVtaDetLOTE: TIntegerField
      FieldName = 'LOTE'
    end
    object CDSFcVtaDetPRECIO_EDITABLE: TStringField
      FieldName = 'PRECIO_EDITABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Required = True
    end
    object CDSFcVtaDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Required = True
    end
    object CDSFcVtaDetDETALLE_ADICIONAL: TStringField
      FieldName = 'DETALLE_ADICIONAL'
      Size = 300
    end
    object CDSFcVtaDetGRUPO_DETALLE: TIntegerField
      FieldName = 'GRUPO_DETALLE'
    end
    object CDSFcVtaDetCTA_ORDEN_ID_RECEPCION: TIntegerField
      FieldName = 'CTA_ORDEN_ID_RECEPCION'
    end
    object CDSFcVtaDetCTA_ORDEN_NROCPBTE: TStringField
      FieldName = 'CTA_ORDEN_NROCPBTE'
      Size = 13
    end
    object CDSFcVtaDetCTA_ORDEN_TIPOCPBTE: TStringField
      FieldName = 'CTA_ORDEN_TIPOCPBTE'
      Size = 2
    end
    object CDSFcVtaDetCTA_ORDEN_CALSECPBTE: TStringField
      FieldName = 'CTA_ORDEN_CALSECPBTE'
      Size = 2
    end
    object CDSFcVtaDetMESES_GTIA: TIntegerField
      FieldName = 'MESES_GTIA'
      Required = True
    end
    object CDSFcVtaDetCODIGOBARRA: TStringField
      FieldName = 'CODIGOBARRA'
      Size = 50
    end
    object CDSFcVtaDetDE_PRODUCCION: TStringField
      FieldName = 'DE_PRODUCCION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaDetUNITARIO_TOTAL_OLD: TFloatField
      FieldName = 'UNITARIO_TOTAL_OLD'
      Required = True
    end
    object CDSFcVtaDetUNITARIO_IVA_OLD: TFloatField
      FieldName = 'UNITARIO_IVA_OLD'
      Required = True
    end
    object CDSFcVtaDetUNI_C_REC: TStringField
      FieldName = 'UNI_C_REC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaDetITEM_OCOMPRA: TIntegerField
      FieldName = 'ITEM_OCOMPRA'
    end
    object CDSFcVtaDetCONTROL_TRAZABILIDAD: TStringField
      FieldName = 'CONTROL_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaDetCANTIDAD_UNIDADES: TFloatField
      FieldName = 'CANTIDAD_UNIDADES'
    end
    object CDSFcVtaDetPRESENTACION_CANT: TFloatField
      FieldName = 'PRESENTACION_CANT'
      Required = True
    end
    object CDSFcVtaDetPRESENTACION_UNIDAD: TStringField
      FieldName = 'PRESENTACION_UNIDAD'
      Size = 3
    end
    object CDSFcVtaDetID_DET_REMITO: TIntegerField
      FieldName = 'ID_DET_REMITO'
    end
    object CDSFcVtaDetPERCIBE_IVA: TStringField
      FieldName = 'PERCIBE_IVA'
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaDetTASA_PERCEP_IVA: TFloatField
      FieldName = 'TASA_PERCEP_IVA'
      Required = True
    end
    object CDSFcVtaDetID_TASA_PERCEPCION_IVA: TIntegerField
      FieldName = 'ID_TASA_PERCEPCION_IVA'
    end
    object CDSFcVtaDetPERCEPCION_IVA_DIFERENCIAL: TStringField
      FieldName = 'PERCEPCION_IVA_DIFERENCIAL'
      FixedChar = True
      Size = 1
    end
    object CDSFcVtaDetPRESENTACION_TOLERANCIA: TFloatField
      FieldName = 'PRESENTACION_TOLERANCIA'
      Required = True
    end
  end
  object DSPFcVtaImp: TDataSetProvider
    DataSet = QFcVtaImp
    Options = []
    Left = 120
    Top = 392
  end
  object CDSFcVtaImp: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPFcVtaImp'
    Left = 208
    Top = 400
    object CDSFcVtaImpID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      Required = True
    end
    object CDSFcVtaImpID_FCVTACAB: TIntegerField
      FieldName = 'ID_FCVTACAB'
      Required = True
    end
    object CDSFcVtaImpCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
    end
    object CDSFcVtaImpDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSFcVtaImpNETO: TFloatField
      FieldName = 'NETO'
    end
    object CDSFcVtaImpTASA: TFloatField
      FieldName = 'TASA'
    end
    object CDSFcVtaImpIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
  end
  object DSPFcVtaDet: TDataSetProvider
    DataSet = QFcVtaDet
    Options = []
    Left = 112
    Top = 344
  end
  object CDSFcVtaCabXML: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 424
    Top = 296
  end
  object CDSFcVtaDetXML: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 422
    Top = 355
  end
  object CDSFcVtaImpXML: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 422
    Top = 403
  end
  object DSDepositos: TDataSource
    DataSet = QDepositos
    Left = 88
    Top = 216
  end
  object DSCaja: TDataSource
    DataSet = QCaja
    Left = 344
    Top = 56
  end
  object IBGFcVtaCab: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_FC_VENTA_CAB'
    SystemGenerators = False
    Left = 288
    Top = 288
  end
  object IBGFcVtaDet: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_FC_VENTA_DET'
    SystemGenerators = False
    Left = 296
    Top = 344
  end
  object IBGImpuestos: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_FC_VENTA_IMPUESTO'
    SystemGenerators = False
    Left = 296
    Top = 400
  end
  object DSFcVtaImpXML: TDataSource
    DataSet = CDSFcVtaImpXML
    Left = 526
    Top = 411
  end
  object DSFcVtaDetXML: TDataSource
    DataSet = CDSFcVtaDetXML
    Left = 526
    Top = 355
  end
  object DSFcVtaCabXML: TDataSource
    DataSet = CDSFcVtaCabXML
    Left = 526
    Top = 299
  end
  object QCaja: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'Select c.id_caja, c.id_cuenta_caja,c.numerocaja,cta.nombre as Mu' +
        'estraCaja from caja_cab c'
      'left join cuenta_caja cta on cta.id_cuenta=c.id_cuenta_caja'
      'where c.estado=0 and cta.id_tipo_cta=1')
    Left = 328
    Top = 136
    object QCajaID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCajaID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      Required = True
    end
    object QCajaNUMEROCAJA: TIntegerField
      FieldName = 'NUMEROCAJA'
      Origin = 'NUMEROCAJA'
    end
    object QCajaMUESTRACAJA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACAJA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
  end
  object QComprobantes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from comprobantes where sucursal=:sucursal '
      'and tipo_comprob = :Tipo '
      'and compra_venta = '#39'V'#39
      'and en_uso       = '#39'S'#39' '
      'and ((afecta_iva = :iva) or (:iva ='#39'*'#39'))'
      'and (letra=:letra or :letra='#39'*'#39')')
    Left = 256
    Top = 200
    ParamData = <
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Name = 'IVA'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end
      item
        Name = 'LETRA'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
      end>
    object QComprobantesID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QComprobantesTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QComprobantesCLASE_COMPROB: TStringField
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object QComprobantesDENOMINACION: TStringField
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object QComprobantesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QComprobantesLETRA: TStringField
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object QComprobantesPREFIJO: TStringField
      FieldName = 'PREFIJO'
      Origin = 'PREFIJO'
      Size = 4
    end
    object QComprobantesNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      Origin = 'NUMERARCION_PROPIA'
      FixedChar = True
      Size = 1
    end
    object QComprobantesNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object QComprobantesTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
      Origin = 'TOMA_NRO_DE'
    end
    object QComprobantesAFECTA_IVA: TStringField
      FieldName = 'AFECTA_IVA'
      Origin = 'AFECTA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Origin = 'AFECTA_CC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Origin = 'DESGLOZA_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesCOMPRA_VENTA: TStringField
      FieldName = 'COMPRA_VENTA'
      Origin = 'COMPRA_VENTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesCOPIAS: TIntegerField
      FieldName = 'COPIAS'
      Origin = 'COPIAS'
    end
    object QComprobantesREPORTE: TStringField
      FieldName = 'REPORTE'
      Origin = 'REPORTE'
      Size = 100
    end
    object QComprobantesIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Origin = 'IMPRIME'
      FixedChar = True
      Size = 1
    end
    object QComprobantesFISCAL: TStringField
      DisplayWidth = 6
      FieldName = 'FISCAL'
      Origin = 'FISCAL'
      Required = True
      OnGetText = QComprobantesFISCALGetText
      FixedChar = True
      Size = 1
    end
    object QComprobantesNOMBREIMPRESORA: TStringField
      FieldName = 'NOMBREIMPRESORA'
      Origin = 'NOMBREIMPRESORA'
      Size = 15
    end
    object QComprobantesPENDIENTEIMPRESION: TStringField
      FieldName = 'PENDIENTEIMPRESION'
      Origin = 'PENDIENTEIMPRESION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesLINEAS_DETALLE: TSmallintField
      FieldName = 'LINEAS_DETALLE'
      Origin = 'LINEAS_DETALLE'
      Required = True
    end
    object QComprobantesCALCULA_IVA_ARTICULOS: TStringField
      FieldName = 'CALCULA_IVA_ARTICULOS'
      Origin = 'CALCULA_IVA_ARTICULOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesDEFECTO: TStringField
      FieldName = 'DEFECTO'
      Origin = 'DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesCAJA_DEFECTO: TIntegerField
      FieldName = 'CAJA_DEFECTO'
      Origin = 'CAJA_DEFECTO'
      Required = True
    end
    object QComprobantesDIVIDE_IVA: TStringField
      FieldName = 'DIVIDE_IVA'
      Origin = 'DIVIDE_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesFACTURAELECTRONICA: TStringField
      DisplayWidth = 6
      FieldName = 'FACTURAELECTRONICA'
      Origin = 'FACTURAELECTRONICA'
      Required = True
      OnGetText = QComprobantesFACTURAELECTRONICAGetText
      FixedChar = True
      Size = 1
    end
    object QComprobantesEN_USO: TStringField
      FieldName = 'EN_USO'
      Origin = 'EN_USO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesCODIGO_AFIP: TStringField
      FieldName = 'CODIGO_AFIP'
      Origin = 'CODIGO_AFIP'
      Size = 3
    end
    object QComprobantesID_AJUSTECC: TIntegerField
      FieldName = 'ID_AJUSTECC'
      Origin = 'ID_AJUSTECC'
    end
    object QComprobantesCENTRO_COSTO: TIntegerField
      FieldName = 'CENTRO_COSTO'
      Origin = 'CENTRO_COSTO'
    end
    object QComprobantesFILTRO_COMPROBANTES: TStringField
      FieldName = 'FILTRO_COMPROBANTES'
      Origin = 'FILTRO_COMPROBANTES'
      FixedChar = True
      Size = 1
    end
    object QComprobantesDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QComprobantesULTIMONRO: TIntegerField
      FieldName = 'ULTIMONRO'
      Origin = 'ULTIMONRO'
    end
    object QComprobantesEDITAR_NRO: TStringField
      FieldName = 'EDITAR_NRO'
      Origin = 'EDITAR_NRO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QDepositos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from depositos'
      'where sucursal = :suc or :suc=-1')
    Left = 16
    Top = 216
    ParamData = <
      item
        Name = 'SUC'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QDepositosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDepositosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object QDepositosSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QDepositosCENTRALIZA_STOCK: TStringField
      FieldName = 'CENTRALIZA_STOCK'
      Origin = 'CENTRALIZA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QSucursal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from sucursal ')
    Left = 88
    Top = 160
    object QSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 35
    end
    object QSucursalDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
    end
    object QSucursalLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
    end
    object QSucursalTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Origin = 'TELEFONO1'
      Size = 15
    end
    object QSucursalTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Origin = 'TELEFONO2'
      Size = 15
    end
    object QSucursalRECARGO: TFloatField
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
    end
    object QSucursalAPLICA_PERCEPCION_IIBB: TStringField
      FieldName = 'APLICA_PERCEPCION_IIBB'
      Origin = 'APLICA_PERCEPCION_IIBB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QSucursalGENERA_XML_COMUN: TStringField
      FieldName = 'GENERA_XML_COMUN'
      Origin = 'GENERA_XML_COMUN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QSucursalHOST: TStringField
      FieldName = 'HOST'
      Origin = 'HOST'
      Size = 250
    end
    object QSucursalCERTIFICADO_ELEC: TStringField
      FieldName = 'CERTIFICADO_ELEC'
      Origin = 'CERTIFICADO_ELEC'
      Size = 100
    end
    object QSucursalCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QSucursalRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
  end
  object QPrimerConVta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select Min(codigopago) from condventa where codigocliente=:codig' +
        'o')
    Left = 408
    Top = 136
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
  end
  object QFcVtaCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from fcvtacab where id_fc=:id ')
    Left = 40
    Top = 288
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QFcVtaCabID_FC: TIntegerField
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFcVtaCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QFcVtaCabCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QFcVtaCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object QFcVtaCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QFcVtaCabLETRAFAC: TStringField
      FieldName = 'LETRAFAC'
      Origin = 'LETRAFAC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabSUCFAC: TStringField
      FieldName = 'SUCFAC'
      Origin = 'SUCFAC'
      Size = 4
    end
    object QFcVtaCabNUMEROFAC: TStringField
      FieldName = 'NUMEROFAC'
      Origin = 'NUMEROFAC'
      Size = 8
    end
    object QFcVtaCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object QFcVtaCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object QFcVtaCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 35
    end
    object QFcVtaCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QFcVtaCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object QFcVtaCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
      Origin = 'TIPOIVA'
      Required = True
    end
    object QFcVtaCabCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QFcVtaCabLISTAPRECIO: TIntegerField
      FieldName = 'LISTAPRECIO'
      Origin = 'LISTAPRECIO'
    end
    object QFcVtaCabFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
      Required = True
    end
    object QFcVtaCabFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
    object QFcVtaCabFECHA_FISCAL: TSQLTimeStampField
      FieldName = 'FECHA_FISCAL'
      Origin = 'FECHA_FISCAL'
    end
    object QFcVtaCabCONDICIONVTA: TIntegerField
      FieldName = 'CONDICIONVTA'
      Origin = 'CONDICIONVTA'
      Required = True
    end
    object QFcVtaCabANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabNRORTO: TStringField
      FieldName = 'NRORTO'
      Origin = 'NRORTO'
      Size = 100
    end
    object QFcVtaCabN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
      Origin = 'N_OPERACION2'
    end
    object QFcVtaCabNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
      Origin = 'NETOGRAV1'
      Required = True
    end
    object QFcVtaCabNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
      Origin = 'NETOGRAV2'
      Required = True
    end
    object QFcVtaCabNETONOGRAV1: TFloatField
      FieldName = 'NETONOGRAV1'
      Origin = 'NETONOGRAV1'
      Required = True
    end
    object QFcVtaCabNETONOGRAV2: TFloatField
      FieldName = 'NETONOGRAV2'
      Origin = 'NETONOGRAV2'
      Required = True
    end
    object QFcVtaCabDSTO: TFloatField
      FieldName = 'DSTO'
      Origin = 'DSTO'
      Required = True
    end
    object QFcVtaCabDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
      Origin = 'DSTOIMPORTE'
      Required = True
    end
    object QFcVtaCabNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
      Origin = 'NETOEXEN1'
      Required = True
    end
    object QFcVtaCabNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
      Origin = 'NETOEXEN2'
      Required = True
    end
    object QFcVtaCabTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Required = True
    end
    object QFcVtaCabDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
      Required = True
    end
    object QFcVtaCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Origin = 'IMPRESO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Origin = 'OBSERVACION1'
      Size = 60
    end
    object QFcVtaCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Origin = 'OBSERVACION2'
      Size = 60
    end
    object QFcVtaCabCPTE_MANUAL: TStringField
      FieldName = 'CPTE_MANUAL'
      Origin = 'CPTE_MANUAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QFcVtaCabFACTURANRO: TStringField
      FieldName = 'FACTURANRO'
      Origin = 'FACTURANRO'
      Size = 13
    end
    object QFcVtaCabZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'ZONA'
    end
    object QFcVtaCabLDR: TIntegerField
      FieldName = 'LDR'
      Origin = 'LDR'
      Required = True
    end
    object QFcVtaCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QFcVtaCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabNROENTREGA: TIntegerField
      FieldName = 'NROENTREGA'
      Origin = 'NROENTREGA'
    end
    object QFcVtaCabINGRESA_A_CTACTE: TStringField
      FieldName = 'INGRESA_A_CTACTE'
      Origin = 'INGRESA_A_CTACTE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabINGRESA_LIBRO_IVA: TStringField
      FieldName = 'INGRESA_LIBRO_IVA'
      Origin = 'INGRESA_LIBRO_IVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabTIPO_REMITO: TStringField
      FieldName = 'TIPO_REMITO'
      Origin = 'TIPO_REMITO'
      Size = 2
    end
    object QFcVtaCabIDREMITO: TIntegerField
      FieldName = 'IDREMITO'
      Origin = 'IDREMITO'
    end
    object QFcVtaCabREDUCIDA: TStringField
      FieldName = 'REDUCIDA'
      Origin = 'REDUCIDA'
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabCOMSIONVENDEDOR: TFloatField
      FieldName = 'COMSIONVENDEDOR'
      Origin = 'COMSIONVENDEDOR'
      Required = True
    end
    object QFcVtaCabLIQUIDADA: TStringField
      FieldName = 'LIQUIDADA'
      Origin = 'LIQUIDADA'
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabFECHA_LIQUIDACION: TSQLTimeStampField
      FieldName = 'FECHA_LIQUIDACION'
      Origin = 'FECHA_LIQUIDACION'
    end
    object QFcVtaCabVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 6
    end
    object QFcVtaCabUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object QFcVtaCabNC_CONTADO: TStringField
      FieldName = 'NC_CONTADO'
      Origin = 'NC_CONTADO'
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabCAJA_POR_DEFECTO: TIntegerField
      FieldName = 'CAJA_POR_DEFECTO'
      Origin = 'CAJA_POR_DEFECTO'
    end
    object QFcVtaCabNRO_Z: TIntegerField
      FieldName = 'NRO_Z'
      Origin = 'NRO_Z'
    end
    object QFcVtaCabVALORES_RECIBIDOS: TFloatField
      FieldName = 'VALORES_RECIBIDOS'
      Origin = 'VALORES_RECIBIDOS'
      Required = True
    end
    object QFcVtaCabPERCEPCION_IB_TASA: TFloatField
      FieldName = 'PERCEPCION_IB_TASA'
      Origin = 'PERCEPCION_IB_TASA'
      Required = True
    end
    object QFcVtaCabPERCEPCION_IB_IMPORTE: TFloatField
      FieldName = 'PERCEPCION_IB_IMPORTE'
      Origin = 'PERCEPCION_IB_IMPORTE'
      Required = True
    end
    object QFcVtaCabPERCIBE_IB: TStringField
      FieldName = 'PERCIBE_IB'
      Origin = 'PERCIBE_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabPERCEPCION_IB_BASEIMPONIBLE: TFloatField
      FieldName = 'PERCEPCION_IB_BASEIMPONIBLE'
      Origin = 'PERCEPCION_IB_BASEIMPONIBLE'
      Required = True
    end
    object QFcVtaCabRENGLONES: TSmallintField
      FieldName = 'RENGLONES'
      Origin = 'RENGLONES'
      Required = True
    end
    object QFcVtaCabFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
      Origin = 'FECHA_HORA'
    end
    object QFcVtaCabNOTAPEDIDO_ID: TIntegerField
      FieldName = 'NOTAPEDIDO_ID'
      Origin = 'NOTAPEDIDO_ID'
    end
    object QFcVtaCabNOTAPEDIDO_NROCPBTE: TStringField
      FieldName = 'NOTAPEDIDO_NROCPBTE'
      Origin = 'NOTAPEDIDO_NROCPBTE'
      Size = 13
    end
    object QFcVtaCabID_FC_CLON: TIntegerField
      FieldName = 'ID_FC_CLON'
      Origin = 'ID_FC_CLON'
    end
    object QFcVtaCabPRESUPUESTO_ID: TIntegerField
      FieldName = 'PRESUPUESTO_ID'
      Origin = 'PRESUPUESTO_ID'
    end
    object QFcVtaCabPRESUPUESTO_NROCPBTE: TStringField
      FieldName = 'PRESUPUESTO_NROCPBTE'
      Origin = 'PRESUPUESTO_NROCPBTE'
      Size = 13
    end
    object QFcVtaCabMONEDA_CPBTE: TIntegerField
      FieldName = 'MONEDA_CPBTE'
      Origin = 'MONEDA_CPBTE'
    end
    object QFcVtaCabMONEDA_CPBTE_COTIZACION: TFloatField
      FieldName = 'MONEDA_CPBTE_COTIZACION'
      Origin = 'MONEDA_CPBTE_COTIZACION'
    end
    object QFcVtaCabPOR_CTA_Y_ORDEN: TStringField
      FieldName = 'POR_CTA_Y_ORDEN'
      Origin = 'POR_CTA_Y_ORDEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Origin = 'PROVEEDOR'
      Size = 6
    end
    object QFcVtaCabTIPO_VTA: TStringField
      FieldName = 'TIPO_VTA'
      Origin = 'TIPO_VTA'
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabID_RECEPCION_GTIA: TIntegerField
      FieldName = 'ID_RECEPCION_GTIA'
      Origin = 'ID_RECEPCION_GTIA'
    end
    object QFcVtaCabJURIDICION: TIntegerField
      FieldName = 'JURIDICION'
      Origin = 'JURIDICION'
    end
    object QFcVtaCabJURIDICION_LOCALIDAD: TIntegerField
      FieldName = 'JURIDICION_LOCALIDAD'
      Origin = 'JURIDICION_LOCALIDAD'
    end
    object QFcVtaCabCON_GTIA_EXTENDIDA: TStringField
      FieldName = 'CON_GTIA_EXTENDIDA'
      Origin = 'CON_GTIA_EXTENDIDA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabMESES_DE_GARANTIA: TIntegerField
      FieldName = 'MESES_DE_GARANTIA'
      Origin = 'MESES_DE_GARANTIA'
      Required = True
    end
    object QFcVtaCabPOLIZA: TStringField
      FieldName = 'POLIZA'
      Origin = 'POLIZA'
    end
    object QFcVtaCabVALOR_ASEGURADO: TFloatField
      FieldName = 'VALOR_ASEGURADO'
      Origin = 'VALOR_ASEGURADO'
    end
    object QFcVtaCabABONO_PERIODO: TStringField
      FieldName = 'ABONO_PERIODO'
      Origin = 'ABONO_PERIODO'
      Size = 6
    end
    object QFcVtaCabNUMERO_OPERACION: TStringField
      FieldName = 'NUMERO_OPERACION'
      Origin = 'NUMERO_OPERACION'
      Size = 8
    end
    object QFcVtaCabSALDO_ACTUAL_CC: TFloatField
      FieldName = 'SALDO_ACTUAL_CC'
      Origin = 'SALDO_ACTUAL_CC'
    end
    object QFcVtaCabID_NOTA_CAMBIO: TIntegerField
      FieldName = 'ID_NOTA_CAMBIO'
      Origin = 'ID_NOTA_CAMBIO'
    end
    object QFcVtaCabCAE: TStringField
      FieldName = 'CAE'
      Origin = 'CAE'
      Required = True
      Size = 50
    end
    object QFcVtaCabCAE_VENCIMIENTO: TSQLTimeStampField
      FieldName = 'CAE_VENCIMIENTO'
      Origin = 'CAE_VENCIMIENTO'
    end
    object QFcVtaCabFACTURA_ELECTRONICA: TStringField
      FieldName = 'FACTURA_ELECTRONICA'
      Origin = 'FACTURA_ELECTRONICA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabCANT_BULTOS: TIntegerField
      FieldName = 'CANT_BULTOS'
      Origin = 'CANT_BULTOS'
      Required = True
    end
    object QFcVtaCabCUOTAS_CC: TIntegerField
      FieldName = 'CUOTAS_CC'
      Origin = 'CUOTAS_CC'
      Required = True
    end
    object QFcVtaCabINTERVALO_CUOTA: TIntegerField
      FieldName = 'INTERVALO_CUOTA'
      Origin = 'INTERVALO_CUOTA'
      Required = True
    end
    object QFcVtaCabID_GARANTE: TIntegerField
      FieldName = 'ID_GARANTE'
      Origin = 'ID_GARANTE'
    end
    object QFcVtaCabPAGO_A_CTA: TFloatField
      FieldName = 'PAGO_A_CTA'
      Origin = 'PAGO_A_CTA'
      Required = True
    end
    object QFcVtaCabID_FC_CON_ADEL: TIntegerField
      FieldName = 'ID_FC_CON_ADEL'
      Origin = 'ID_FC_CON_ADEL'
      Required = True
    end
    object QFcVtaCabPRIMER_VTO: TSQLTimeStampField
      FieldName = 'PRIMER_VTO'
      Origin = 'PRIMER_VTO'
    end
    object QFcVtaCabANTICIPO_VTO: TSQLTimeStampField
      FieldName = 'ANTICIPO_VTO'
      Origin = 'ANTICIPO_VTO'
    end
    object QFcVtaCabCENTRO_COSTO: TIntegerField
      FieldName = 'CENTRO_COSTO'
      Origin = 'CENTRO_COSTO'
      Required = True
    end
    object QFcVtaCabID_PEDIDO_MORPHI: TIntegerField
      FieldName = 'ID_PEDIDO_MORPHI'
      Origin = 'ID_PEDIDO_MORPHI'
    end
    object QFcVtaCabID_PAIS: TSmallintField
      FieldName = 'ID_PAIS'
      Origin = 'ID_PAIS'
    end
    object QFcVtaCabCUIT_PAIS: TStringField
      FieldName = 'CUIT_PAIS'
      Origin = 'CUIT_PAIS'
      Size = 13
    end
    object QFcVtaCabDOC_ADUANERO: TStringField
      FieldName = 'DOC_ADUANERO'
      Origin = 'DOC_ADUANERO'
      Size = 15
    end
    object QFcVtaCabFECHA_CARGA: TSQLTimeStampField
      FieldName = 'FECHA_CARGA'
      Origin = 'FECHA_CARGA'
    end
    object QFcVtaCabNRO_INTERNO: TStringField
      FieldName = 'NRO_INTERNO'
      Origin = 'NRO_INTERNO'
    end
    object QFcVtaCabFOB_TOTAL: TFloatField
      FieldName = 'FOB_TOTAL'
      Origin = 'FOB_TOTAL'
      Required = True
    end
    object QFcVtaCabNOTAS: TStringField
      FieldName = 'NOTAS'
      Origin = 'NOTAS'
      Size = 300
    end
    object QFcVtaCabDESTINO_DOCUMENTO: TStringField
      FieldName = 'DESTINO_DOCUMENTO'
      Origin = 'DESTINO_DOCUMENTO'
      Size = 5
    end
    object QFcVtaCabPERMISO_EMBARQUE: TStringField
      FieldName = 'PERMISO_EMBARQUE'
      Origin = 'PERMISO_EMBARQUE'
      Size = 100
    end
    object QFcVtaCabINCOTERMS: TStringField
      FieldName = 'INCOTERMS'
      Origin = 'INCOTERMS'
      Size = 5
    end
    object QFcVtaCabCBU: TStringField
      FieldName = 'CBU'
      Origin = 'CBU'
      Size = 22
    end
    object QFcVtaCabASOCIADO_TIPO: TIntegerField
      FieldName = 'ASOCIADO_TIPO'
      Origin = 'ASOCIADO_TIPO'
    end
    object QFcVtaCabASOCIADO_PTOVTA: TIntegerField
      FieldName = 'ASOCIADO_PTOVTA'
      Origin = 'ASOCIADO_PTOVTA'
    end
    object QFcVtaCabASOCIADO_NRO: TFloatField
      FieldName = 'ASOCIADO_NRO'
      Origin = 'ASOCIADO_NRO'
      Required = True
    end
    object QFcVtaCabASOCIADO_CPTEFCH: TStringField
      FieldName = 'ASOCIADO_CPTEFCH'
      Origin = 'ASOCIADO_CPTEFCH'
      Size = 8
    end
    object QFcVtaCabINF_X: TStringField
      FieldName = 'INF_X'
      Origin = 'INF_X'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabTIPO_OPERACION_EXPO: TStringField
      FieldName = 'TIPO_OPERACION_EXPO'
      Origin = 'TIPO_OPERACION_EXPO'
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabMEDIO_TRANSPORTE_EXPO: TStringField
      FieldName = 'MEDIO_TRANSPORTE_EXPO'
      Origin = 'MEDIO_TRANSPORTE_EXPO'
    end
    object QFcVtaCabID_ADUANA: TIntegerField
      FieldName = 'ID_ADUANA'
      Origin = 'ID_ADUANA'
    end
    object QFcVtaCabREFERENCIA_EXPO: TStringField
      FieldName = 'REFERENCIA_EXPO'
      Origin = 'REFERENCIA_EXPO'
      Size = 30
    end
    object QFcVtaCabCAMBIO_EXPO: TFloatField
      FieldName = 'CAMBIO_EXPO'
      Origin = 'CAMBIO_EXPO'
    end
    object QFcVtaCabVUELTO: TFloatField
      FieldName = 'VUELTO'
      Origin = 'VUELTO'
      Required = True
    end
    object QFcVtaCabID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
      Origin = 'ID_TRANSPORTE'
    end
    object QFcVtaCabID_DESTINO: TIntegerField
      FieldName = 'ID_DESTINO'
      Origin = 'ID_DESTINO'
    end
    object QFcVtaCabHONORARIOS: TFloatField
      FieldName = 'HONORARIOS'
      Origin = 'HONORARIOS'
      Required = True
    end
    object QFcVtaCabHONORARIOS_PROCENTAJ: TFloatField
      FieldName = 'HONORARIOS_PROCENTAJ'
      Origin = 'HONORARIOS_PROCENTAJ'
      Required = True
    end
    object QFcVtaCabDEDUCE_GASTOS: TStringField
      FieldName = 'DEDUCE_GASTOS'
      Origin = 'DEDUCE_GASTOS'
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabASOCIADO_ID_CPBTE: TIntegerField
      FieldName = 'ASOCIADO_ID_CPBTE'
      Origin = 'ASOCIADO_ID_CPBTE'
      Required = True
    end
    object QFcVtaCabCODIGO_ACTIVIDAD: TStringField
      FieldName = 'CODIGO_ACTIVIDAD'
      Origin = 'CODIGO_ACTIVIDAD'
      Required = True
      Size = 10
    end
    object QFcVtaCabTRANSPORTE_UNIDAD: TIntegerField
      FieldName = 'TRANSPORTE_UNIDAD'
      Origin = 'TRANSPORTE_UNIDAD'
    end
    object QFcVtaCabTRANSPORTE_ADICIONAL: TIntegerField
      FieldName = 'TRANSPORTE_ADICIONAL'
      Origin = 'TRANSPORTE_ADICIONAL'
    end
    object QFcVtaCabID_CHOFER: TIntegerField
      FieldName = 'ID_CHOFER'
      Origin = 'ID_CHOFER'
    end
    object QFcVtaCabPERCIBE_IVA: TStringField
      FieldName = 'PERCIBE_IVA'
      Origin = 'PERCIBE_IVA'
      FixedChar = True
      Size = 1
    end
    object QFcVtaCabMINIMO_PERCI_IVA: TFloatField
      FieldName = 'MINIMO_PERCI_IVA'
      Origin = 'MINIMO_PERCI_IVA'
    end
    object QFcVtaCabCOT: TStringField
      FieldName = 'COT'
      Origin = '"COT"'
      Size = 25
    end
  end
  object QFcVtaDet: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from fcvtaDet where Id_CabFac=:id')
    Left = 40
    Top = 336
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QFcVtaDetID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFcVtaDetID_CABFAC: TIntegerField
      FieldName = 'ID_CABFAC'
      Origin = 'ID_CABFAC'
      Required = True
    end
    object QFcVtaDetTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QFcVtaDetCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QFcVtaDetNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QFcVtaDetRENGLON: TFloatField
      FieldName = 'RENGLON'
      Origin = 'RENGLON'
    end
    object QFcVtaDetFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
      Required = True
    end
    object QFcVtaDetCODIGOARTICULO: TStringField
      FieldName = 'CODIGOARTICULO'
      Origin = 'CODIGOARTICULO'
      Required = True
      Size = 8
    end
    object QFcVtaDetDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QFcVtaDetUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object QFcVtaDetMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QFcVtaDetUNIDADES_GRAVADO: TFloatField
      FieldName = 'UNIDADES_GRAVADO'
      Origin = 'UNIDADES_GRAVADO'
    end
    object QFcVtaDetUNIDADES_EXENTO: TFloatField
      FieldName = 'UNIDADES_EXENTO'
      Origin = 'UNIDADES_EXENTO'
    end
    object QFcVtaDetUNIDADES_TOTAL: TFloatField
      FieldName = 'UNIDADES_TOTAL'
      Origin = 'UNIDADES_TOTAL'
    end
    object QFcVtaDetCOSTO_GRAVADO: TFloatField
      FieldName = 'COSTO_GRAVADO'
      Origin = 'COSTO_GRAVADO'
    end
    object QFcVtaDetCOSTO_EXENTO: TFloatField
      FieldName = 'COSTO_EXENTO'
      Origin = 'COSTO_EXENTO'
    end
    object QFcVtaDetCOSTO_TOTAL: TFloatField
      FieldName = 'COSTO_TOTAL'
      Origin = 'COSTO_TOTAL'
    end
    object QFcVtaDetUNITARIO_GRAVADO: TFloatField
      FieldName = 'UNITARIO_GRAVADO'
      Origin = 'UNITARIO_GRAVADO'
    end
    object QFcVtaDetIVA_UNITARIO: TFloatField
      FieldName = 'IVA_UNITARIO'
      Origin = 'IVA_UNITARIO'
      Required = True
    end
    object QFcVtaDetUNITARIO_EXENTO: TFloatField
      FieldName = 'UNITARIO_EXENTO'
      Origin = 'UNITARIO_EXENTO'
    end
    object QFcVtaDetUNITARIO_TOTAL: TFloatField
      FieldName = 'UNITARIO_TOTAL'
      Origin = 'UNITARIO_TOTAL'
    end
    object QFcVtaDetDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Origin = 'DESGLOZAIVA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetTOTAL_EXENTO: TFloatField
      FieldName = 'TOTAL_EXENTO'
      Origin = 'TOTAL_EXENTO'
      Required = True
    end
    object QFcVtaDetTOTAL_GRAVADO: TFloatField
      FieldName = 'TOTAL_GRAVADO'
      Origin = 'TOTAL_GRAVADO'
      Required = True
    end
    object QFcVtaDetIVA_TOTAL: TFloatField
      FieldName = 'IVA_TOTAL'
      Origin = 'IVA_TOTAL'
      Required = True
    end
    object QFcVtaDetTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object QFcVtaDetTIPOIVA_TASA: TIntegerField
      FieldName = 'TIPOIVA_TASA'
      Origin = 'TIPOIVA_TASA'
      Required = True
    end
    object QFcVtaDetTIPOIVA_SOBRETASA: TIntegerField
      FieldName = 'TIPOIVA_SOBRETASA'
      Origin = 'TIPOIVA_SOBRETASA'
      Required = True
    end
    object QFcVtaDetIVA_TASA: TFloatField
      FieldName = 'IVA_TASA'
      Origin = 'IVA_TASA'
    end
    object QFcVtaDetIVA_SOBRETASA: TFloatField
      FieldName = 'IVA_SOBRETASA'
      Origin = 'IVA_SOBRETASA'
    end
    object QFcVtaDetDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
      Origin = 'DESCUENTO'
      Required = True
    end
    object QFcVtaDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QFcVtaDetMARGEN: TFloatField
      FieldName = 'MARGEN'
      Origin = 'MARGEN'
    end
    object QFcVtaDetAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Origin = 'CALCULA_SOBRETASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      Origin = 'GRAVADO_IB'
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetCON_NRO_SERIE: TStringField
      FieldName = 'CON_NRO_SERIE'
      Origin = 'CON_NRO_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetCON_CODIGO_BARRA: TStringField
      FieldName = 'CON_CODIGO_BARRA'
      Origin = 'CON_CODIGO_BARRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetIB_TASA: TFloatField
      FieldName = 'IB_TASA'
      Origin = 'IB_TASA'
      Required = True
    end
    object QFcVtaDetTIPOIB_TASA: TIntegerField
      FieldName = 'TIPOIB_TASA'
      Origin = 'TIPOIB_TASA'
      Required = True
    end
    object QFcVtaDetLOTE: TIntegerField
      FieldName = 'LOTE'
      Origin = 'LOTE'
    end
    object QFcVtaDetPRECIO_EDITABLE: TStringField
      FieldName = 'PRECIO_EDITABLE'
      Origin = 'PRECIO_EDITABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Origin = 'ID_MONEDA'
      Required = True
    end
    object QFcVtaDetCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      Required = True
    end
    object QFcVtaDetDETALLE_ADICIONAL: TStringField
      FieldName = 'DETALLE_ADICIONAL'
      Origin = 'DETALLE_ADICIONAL'
      Size = 300
    end
    object QFcVtaDetGRUPO_DETALLE: TIntegerField
      FieldName = 'GRUPO_DETALLE'
      Origin = 'GRUPO_DETALLE'
    end
    object QFcVtaDetCTA_ORDEN_ID_RECEPCION: TIntegerField
      FieldName = 'CTA_ORDEN_ID_RECEPCION'
      Origin = 'CTA_ORDEN_ID_RECEPCION'
    end
    object QFcVtaDetCTA_ORDEN_NROCPBTE: TStringField
      FieldName = 'CTA_ORDEN_NROCPBTE'
      Origin = 'CTA_ORDEN_NROCPBTE'
      Size = 13
    end
    object QFcVtaDetCTA_ORDEN_TIPOCPBTE: TStringField
      FieldName = 'CTA_ORDEN_TIPOCPBTE'
      Origin = 'CTA_ORDEN_TIPOCPBTE'
      Size = 2
    end
    object QFcVtaDetCTA_ORDEN_CALSECPBTE: TStringField
      FieldName = 'CTA_ORDEN_CALSECPBTE'
      Origin = 'CTA_ORDEN_CALSECPBTE'
      Size = 2
    end
    object QFcVtaDetMESES_GTIA: TIntegerField
      FieldName = 'MESES_GTIA'
      Origin = 'MESES_GTIA'
      Required = True
    end
    object QFcVtaDetCODIGOBARRA: TStringField
      FieldName = 'CODIGOBARRA'
      Origin = 'CODIGOBARRA'
      Size = 50
    end
    object QFcVtaDetDE_PRODUCCION: TStringField
      FieldName = 'DE_PRODUCCION'
      Origin = 'DE_PRODUCCION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetUNITARIO_TOTAL_OLD: TFloatField
      FieldName = 'UNITARIO_TOTAL_OLD'
      Origin = 'UNITARIO_TOTAL_OLD'
      Required = True
    end
    object QFcVtaDetUNITARIO_IVA_OLD: TFloatField
      FieldName = 'UNITARIO_IVA_OLD'
      Origin = 'UNITARIO_IVA_OLD'
      Required = True
    end
    object QFcVtaDetUNI_C_REC: TStringField
      FieldName = 'UNI_C_REC'
      Origin = 'UNI_C_REC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetITEM_OCOMPRA: TIntegerField
      FieldName = 'ITEM_OCOMPRA'
      Origin = 'ITEM_OCOMPRA'
    end
    object QFcVtaDetCONTROL_TRAZABILIDAD: TStringField
      FieldName = 'CONTROL_TRAZABILIDAD'
      Origin = 'CONTROL_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetCANTIDAD_UNIDADES: TFloatField
      FieldName = 'CANTIDAD_UNIDADES'
      Origin = 'CANTIDAD_UNIDADES'
    end
    object QFcVtaDetPRESENTACION_CANT: TFloatField
      FieldName = 'PRESENTACION_CANT'
      Origin = 'PRESENTACION_CANT'
      Required = True
    end
    object QFcVtaDetPRESENTACION_UNIDAD: TStringField
      FieldName = 'PRESENTACION_UNIDAD'
      Origin = 'PRESENTACION_UNIDAD'
      Size = 3
    end
    object QFcVtaDetID_DET_REMITO: TIntegerField
      FieldName = 'ID_DET_REMITO'
      Origin = 'ID_DET_REMITO'
    end
    object QFcVtaDetPERCIBE_IVA: TStringField
      FieldName = 'PERCIBE_IVA'
      Origin = 'PERCIBE_IVA'
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetTASA_PERCEP_IVA: TFloatField
      FieldName = 'TASA_PERCEP_IVA'
      Origin = 'TASA_PERCEP_IVA'
      Required = True
    end
    object QFcVtaDetID_TASA_PERCEPCION_IVA: TIntegerField
      FieldName = 'ID_TASA_PERCEPCION_IVA'
      Origin = 'ID_TASA_PERCEPCION_IVA'
    end
    object QFcVtaDetPERCEPCION_IVA_DIFERENCIAL: TStringField
      FieldName = 'PERCEPCION_IVA_DIFERENCIAL'
      Origin = 'PERCEPCION_IVA_DIFERENCIAL'
      FixedChar = True
      Size = 1
    end
    object QFcVtaDetPRESENTACION_TOLERANCIA: TFloatField
      FieldName = 'PRESENTACION_TOLERANCIA'
      Origin = 'PRESENTACION_TOLERANCIA'
      Required = True
    end
  end
  object QFcVtaImp: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from fcvtaImpuesto where Id_FcVtaCab=:id')
    Left = 40
    Top = 392
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QFcVtaImpID_IMPUESTO: TIntegerField
      FieldName = 'ID_IMPUESTO'
      Origin = 'ID_IMPUESTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFcVtaImpID_FCVTACAB: TIntegerField
      FieldName = 'ID_FCVTACAB'
      Origin = 'ID_FCVTACAB'
      Required = True
    end
    object QFcVtaImpCODIGO_GRAVAMEN: TIntegerField
      FieldName = 'CODIGO_GRAVAMEN'
      Origin = 'CODIGO_GRAVAMEN'
    end
    object QFcVtaImpDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QFcVtaImpNETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
    end
    object QFcVtaImpTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object QFcVtaImpIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
  end
  object spIngresaMovCajaFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'AGREGAR_MOV_CAJA_EFECTIVO'
    Left = 568
    Top = 216
    ParamData = <
      item
        Position = 1
        Name = 'ID_CPBTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'TIPO_COMPROB'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 3
        Name = 'CLASE_COMPROB'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 4
        Name = 'NROCPBTE'
        DataType = ftString
        ParamType = ptInput
        Size = 13
      end
      item
        Position = 5
        Name = 'ID_CUENTA_CAJA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'FECHA_MOVIMIENTO'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'DEBE'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'HABER'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'TIPOOPERACION'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end>
  end
  object CDSFcVtaPercXML: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 422
    Top = 475
  end
  object DSFcVtaPercXML: TDataSource
    DataSet = CDSFcVtaPercXML
    Left = 534
    Top = 475
  end
  object IBGPercepcionIVA: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'NEXT_ID_PERCEPCION_IVA_VTA'
    SystemGenerators = False
    Left = 302
    Top = 466
  end
  object DSPPercepcionIVA: TDataSetProvider
    DataSet = QPercepcionIvaVta
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 118
    Top = 466
  end
  object CDSPercepcionIVA: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPPercepcionIVA'
    Left = 214
    Top = 466
    object CDSPercepcionIVAID_PERCEPCION: TIntegerField
      FieldName = 'ID_PERCEPCION'
      Origin = 'ID_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPercepcionIVACODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      Origin = 'CODIGO_PERCEPCION'
      Required = True
    end
    object CDSPercepcionIVADETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSPercepcionIVAID_FCVTACAB: TIntegerField
      FieldName = 'ID_FCVTACAB'
      Origin = 'ID_FCVTACAB'
      Required = True
    end
    object CDSPercepcionIVANETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
      DisplayFormat = ',0.00'
    end
    object CDSPercepcionIVATASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
      DisplayFormat = '0.00'
    end
    object CDSPercepcionIVAIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object CDSPercepcionIVACODIGOREGIMEN: TIntegerField
      FieldName = 'CODIGOREGIMEN'
      Origin = 'CODIGOREGIMEN'
    end
  end
  object DSPercepcionIVA: TDataSource
    DataSet = CDSPercepcionIVA
    Left = 214
    Top = 546
  end
  object QPercepcionIvaVta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from fcvtapercepcioniva i where i.id_fcvtacab=:id')
    Left = 39
    Top = 463
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QPercepcionIvaVtaID_PERCEPCION: TIntegerField
      FieldName = 'ID_PERCEPCION'
      Origin = 'ID_PERCEPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPercepcionIvaVtaCODIGO_PERCEPCION: TIntegerField
      FieldName = 'CODIGO_PERCEPCION'
      Origin = 'CODIGO_PERCEPCION'
      Required = True
    end
    object QPercepcionIvaVtaDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QPercepcionIvaVtaID_FCVTACAB: TIntegerField
      FieldName = 'ID_FCVTACAB'
      Origin = 'ID_FCVTACAB'
      Required = True
    end
    object QPercepcionIvaVtaNETO: TFloatField
      FieldName = 'NETO'
      Origin = 'NETO'
    end
    object QPercepcionIvaVtaTASA: TFloatField
      FieldName = 'TASA'
      Origin = 'TASA'
    end
    object QPercepcionIvaVtaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QPercepcionIvaVtaCODIGOREGIMEN: TIntegerField
      FieldName = 'CODIGOREGIMEN'
      Origin = 'CODIGOREGIMEN'
    end
  end
end

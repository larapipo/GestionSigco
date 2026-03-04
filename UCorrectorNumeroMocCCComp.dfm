object FormCorrectorCC: TFormCorrectorCC
  Left = 64
  Top = 67
  Width = 677
  Height = 544
  Caption = 'FormCorrectorCC'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter
    Left = 0
    Top = 247
    Width = 669
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object Splitter3: TSplitter
    Left = 0
    Top = 65
    Width = 669
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object Splitter4: TSplitter
    Left = 0
    Top = 183
    Width = 669
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object Splitter1: TSplitter
    Left = 0
    Top = 341
    Width = 669
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object Splitter5: TSplitter
    Left = 0
    Top = 413
    Width = 669
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 669
    Height = 65
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = DSClientes
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object wwDBGClientes: TwwDBGrid
    Left = 0
    Top = 68
    Width = 669
    Height = 115
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = DSFcVtaCab
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object wwDBGrid3: TwwDBGrid
    Left = 0
    Top = 186
    Width = 669
    Height = 61
    Selected.Strings = (
      'ID_CPBTE'#9'10'#9'ID_CPBTE'
      'ID_MOVCCVTA'#9'10'#9'ID_MOVCCVTA'
      'CLIENTE'#9'6'#9'CLIENTE'
      'FECHAVTA'#9'18'#9'FECHAVTA'
      'FECHAVTO'#9'18'#9'FECHAVTO'
      'TIPOCPBTE'#9'2'#9'TIPOCPBTE'
      'NROCPBTE'#9'13'#9'NROCPBTE'
      'DEBE'#9'10'#9'DEBE'
      'HABER'#9'10'#9'HABER'
      'SALDO'#9'10'#9'SALDO'
      'DETALLE'#9'20'#9'DETALLE')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = DSMovCCVta
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object wwDBGrid4: TwwDBGrid
    Left = 0
    Top = 250
    Width = 669
    Height = 91
    Selected.Strings = (
      'ID_MOVCCVTA'#9'10'#9'ID_MOVCCVTA'
      'ID_MOV'#9'10'#9'ID_MOV'
      'FECHA'#9'18'#9'FECHA'
      'CLIENTE'#9'6'#9'CLIENTE'
      'ID_CPBTE'#9'10'#9'ID_CPBTE'
      'TIPOCPBTE'#9'2'#9'TIPOCPBTE'
      'NUMEROCPBTE'#9'13'#9'NUMEROCPBTE'
      'IMPORTE'#9'10'#9'IMPORTE'
      'APLICA_ID_CPBTE'#9'10'#9'APLICA_ID_CPBTE'
      'APLICA_TIPOCPBTE'#9'2'#9'APLICA_TIPOCPBTE'
      'APLICA_NROCPBTE'#9'13'#9'APLICA_NROCPBTE'
      'DETALLE'#9'20'#9'DETALLE')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = DSMovAplicaCCVta
    TabOrder = 3
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object wwDBGrid2: TwwDBGrid
    Left = 0
    Top = 344
    Width = 669
    Height = 69
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = DSRecibo
    TabOrder = 4
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object wwDBGrid5: TwwDBGrid
    Left = 0
    Top = 416
    Width = 669
    Height = 56
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DSMovCCVtaRec
    TabOrder = 5
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 472
    Width = 669
    Height = 26
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 6
    OnDblClick = Panel1DblClick
    object CurrencyEdit1: TCurrencyEdit
      Left = 511
      Top = 1
      Width = 121
      Height = 21
      AutoSize = False
      TabOrder = 0
    end
  end
  object DSPClientes: TDataSetProvider
    DataSet = QClientes
    Constraints = True
    Left = 272
    Top = 16
  end
  object CDSClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPClientes'
    Left = 152
    Top = 16
    object CDSClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
  end
  object DSPFcVtaCab: TDataSetProvider
    DataSet = QFcVtaCab
    Constraints = True
    Left = 136
    Top = 112
  end
  object CDSFcVtaCab: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    MasterFields = 'CODIGO'
    MasterSource = DSClientes
    PacketRecords = 0
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptUnknown
        Value = '000001'
      end>
    ProviderName = 'DSPFcVtaCab'
    Left = 280
    Top = 112
    object CDSFcVtaCabID_FC: TIntegerField
      FieldName = 'ID_FC'
    end
    object CDSFcVtaCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSFcVtaCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSFcVtaCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSFcVtaCabTOTAL: TFloatField
      FieldName = 'TOTAL'
      currency = True
    end
    object CDSFcVtaCabFECHAVTA: TDateTimeField
      FieldName = 'FECHAVTA'
    end
    object CDSFcVtaCabFECHAVTO: TDateTimeField
      FieldName = 'FECHAVTO'
    end
    object CDSFcVtaCabANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object CDSFcVtaCabDEBE: TFloatField
      FieldName = 'DEBE'
    end
    object CDSFcVtaCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
  end
  object DSPMovCCVta: TDataSetProvider
    DataSet = QMovCCVta
    Constraints = True
    Left = 144
    Top = 208
  end
  object CDSMovCCVta: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CPBTE;TIPOCPBTE'
    MasterFields = 'ID_FC;TIPOCPBTE'
    MasterSource = DSFcVtaCab
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPMovCCVta'
    Left = 72
    Top = 208
    object CDSMovCCVtaID_MOVCCVTA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_MOVCCVTA'
    end
    object CDSMovCCVtaTIPOCPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSMovCCVtaNROCPBTE: TStringField
      DisplayWidth = 13
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSMovCCVtaDEBE: TFloatField
      DisplayWidth = 10
      FieldName = 'DEBE'
      currency = True
    end
    object CDSMovCCVtaHABER: TFloatField
      DisplayWidth = 10
      FieldName = 'HABER'
      currency = True
    end
    object CDSMovCCVtaSALDO: TFloatField
      DisplayWidth = 10
      FieldName = 'SALDO'
      currency = True
    end
    object CDSMovCCVtaDETALLE: TStringField
      DisplayWidth = 20
      FieldName = 'DETALLE'
    end
    object CDSMovCCVtaID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
    end
  end
  object QClientes: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select codigo,nombre,razon_social from clientes')
    Left = 216
    Top = 16
    object QClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object QClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object QClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Size = 35
    end
  end
  object DSClientes: TDataSource
    DataSet = CDSClientes
    Left = 336
    Top = 24
  end
  object MainMenu1: TMainMenu
    Left = 80
    Top = 16
    object Acciones: TMenuItem
      Caption = 'Acciones'
      object Gravar: TMenuItem
        Caption = 'Gravar los Cambios'
      end
      object Cancelar: TMenuItem
        Caption = 'Cancelar '
      end
      object Salir: TMenuItem
        Caption = 'Salir'
      end
    end
  end
  object DSFcVtaCab: TDataSource
    DataSet = CDSFcVtaCab
    Left = 80
    Top = 104
  end
  object DSMovCCVta: TDataSource
    DataSet = CDSMovCCVta
    Left = 192
    Top = 200
  end
  object QMovCCVta: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select *  from MovCCVta where id_cpbte=:id'
      'and tipoCpbte=:tipo')
    Left = 320
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptUnknown
      end>
    object QMovCCVtaID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
    end
    object QMovCCVtaID_MOVCCVTA: TIntegerField
      FieldName = 'ID_MOVCCVTA'
    end
    object QMovCCVtaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 6
    end
    object QMovCCVtaFECHAVTA: TDateTimeField
      FieldName = 'FECHAVTA'
    end
    object QMovCCVtaFECHAVTO: TDateTimeField
      FieldName = 'FECHAVTO'
    end
    object QMovCCVtaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object QMovCCVtaNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QMovCCVtaDEBE: TFloatField
      FieldName = 'DEBE'
    end
    object QMovCCVtaHABER: TFloatField
      FieldName = 'HABER'
    end
    object QMovCCVtaSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object QMovCCVtaDETALLE: TStringField
      FieldName = 'DETALLE'
    end
  end
  object DSMovAplicaCCVta: TDataSource
    DataSet = CDSMovAplicaCCVta
    Left = 560
    Top = 304
  end
  object QMovAplicaCCVta: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select * from  movaplicaccvta where id_movccvta=:id')
    Left = 448
    Top = 296
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    object QMovAplicaCCVtaID_MOVCCVTA: TIntegerField
      FieldName = 'ID_MOVCCVTA'
    end
    object QMovAplicaCCVtaID_MOV: TIntegerField
      FieldName = 'ID_MOV'
    end
    object QMovAplicaCCVtaFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object QMovAplicaCCVtaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 6
    end
    object QMovAplicaCCVtaID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
    end
    object QMovAplicaCCVtaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object QMovAplicaCCVtaNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Size = 13
    end
    object QMovAplicaCCVtaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QMovAplicaCCVtaAPLICA_ID_CPBTE: TIntegerField
      FieldName = 'APLICA_ID_CPBTE'
    end
    object QMovAplicaCCVtaAPLICA_TIPOCPBTE: TStringField
      FieldName = 'APLICA_TIPOCPBTE'
      Size = 2
    end
    object QMovAplicaCCVtaAPLICA_NROCPBTE: TStringField
      FieldName = 'APLICA_NROCPBTE'
      Size = 13
    end
    object QMovAplicaCCVtaDETALLE: TStringField
      FieldName = 'DETALLE'
    end
  end
  object CDSMovAplicaCCVta: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_MOVCCVTA'
    MasterFields = 'ID_MOVCCVTA'
    MasterSource = DSMovCCVta
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPMovAplicaCCVta'
    Left = 352
    Top = 280
    object CDSMovAplicaCCVtaID_MOV: TIntegerField
      DisplayWidth = 5
      FieldName = 'ID_MOV'
    end
    object CDSMovAplicaCCVtaFECHA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'FECHA'
    end
    object CDSMovAplicaCCVtaID_CPBTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CPBTE'
    end
    object CDSMovAplicaCCVtaTIPOCPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSMovAplicaCCVtaNUMEROCPBTE: TStringField
      DisplayWidth = 13
      FieldName = 'NUMEROCPBTE'
      Size = 13
    end
    object CDSMovAplicaCCVtaIMPORTE: TFloatField
      DisplayWidth = 10
      FieldName = 'IMPORTE'
      currency = True
    end
    object CDSMovAplicaCCVtaAPLICA_ID_CPBTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'APLICA_ID_CPBTE'
    end
    object CDSMovAplicaCCVtaAPLICA_TIPOCPBTE: TStringField
      DisplayWidth = 2
      FieldName = 'APLICA_TIPOCPBTE'
      Size = 2
    end
    object CDSMovAplicaCCVtaAPLICA_NROCPBTE: TStringField
      DisplayWidth = 13
      FieldName = 'APLICA_NROCPBTE'
      Size = 13
    end
    object CDSMovAplicaCCVtaDETALLE: TStringField
      DisplayWidth = 20
      FieldName = 'DETALLE'
    end
    object CDSMovAplicaCCVtaID_MOVCCVTA: TIntegerField
      FieldName = 'ID_MOVCCVTA'
    end
  end
  object DSPMovAplicaCCVta: TDataSetProvider
    DataSet = QMovAplicaCCVta
    Constraints = True
    Left = 256
    Top = 288
  end
  object QFcVtaCab: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select * from  FcVtaCab where codigo=:codigo')
    Left = 216
    Top = 112
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptUnknown
        Value = '000001'
      end>
    object QFcVtaCabCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object QFcVtaCabID_FC: TIntegerField
      FieldName = 'ID_FC'
    end
    object QFcVtaCabTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object QFcVtaCabNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QFcVtaCabLETRAFAC: TStringField
      FieldName = 'LETRAFAC'
      Size = 1
    end
    object QFcVtaCabSUCFAC: TStringField
      FieldName = 'SUCFAC'
      Size = 4
    end
    object QFcVtaCabNUMEROFAC: TStringField
      FieldName = 'NUMEROFAC'
      Size = 8
    end
    object QFcVtaCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object QFcVtaCabRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object QFcVtaCabDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object QFcVtaCabCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object QFcVtaCabLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object QFcVtaCabTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
    end
    object QFcVtaCabCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object QFcVtaCabFECHAVTA: TDateTimeField
      FieldName = 'FECHAVTA'
    end
    object QFcVtaCabFECHAVTO: TDateTimeField
      FieldName = 'FECHAVTO'
    end
    object QFcVtaCabCONDICIONVTA: TIntegerField
      FieldName = 'CONDICIONVTA'
    end
    object QFcVtaCabANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object QFcVtaCabNRORTO: TStringField
      FieldName = 'NRORTO'
    end
    object QFcVtaCabN_OPERACION2: TFloatField
      FieldName = 'N_OPERACION2'
    end
    object QFcVtaCabVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 3
    end
    object QFcVtaCabNETOGRAV1: TFloatField
      FieldName = 'NETOGRAV1'
    end
    object QFcVtaCabNETOGRAV2: TFloatField
      FieldName = 'NETOGRAV2'
    end
    object QFcVtaCabDSTO: TFloatField
      FieldName = 'DSTO'
    end
    object QFcVtaCabDSTOIMPORTE: TFloatField
      FieldName = 'DSTOIMPORTE'
    end
    object QFcVtaCabNETOEXEN1: TFloatField
      FieldName = 'NETOEXEN1'
    end
    object QFcVtaCabNETOEXEN2: TFloatField
      FieldName = 'NETOEXEN2'
    end
    object QFcVtaCabTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object QFcVtaCabDEBE: TFloatField
      FieldName = 'DEBE'
    end
    object QFcVtaCabIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Size = 1
    end
    object QFcVtaCabOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Size = 60
    end
    object QFcVtaCabOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Size = 60
    end
    object QFcVtaCabCPTE_MANUAL: TStringField
      FieldName = 'CPTE_MANUAL'
      Size = 1
    end
    object QFcVtaCabSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object QFcVtaCabFACTURANRO: TStringField
      FieldName = 'FACTURANRO'
      Size = 13
    end
    object QFcVtaCabZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object QFcVtaCabLDR: TIntegerField
      FieldName = 'LDR'
    end
    object QFcVtaCabDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object QFcVtaCabCALCULA_SOBRETASA: TStringField
      FieldName = 'CALCULA_SOBRETASA'
      Size = 1
    end
    object QFcVtaCabDESGLOZAIVA: TStringField
      FieldName = 'DESGLOZAIVA'
      Size = 1
    end
    object QFcVtaCabNROENTREGA: TIntegerField
      FieldName = 'NROENTREGA'
    end
  end
  object DSRecibo: TDataSource
    DataSet = CDSRecibo
    Left = 200
    Top = 360
  end
  object DSMovCCVtaRec: TDataSource
    DataSet = CDSMovCCVtaRec
    Left = 216
    Top = 448
  end
  object QRecibo: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select * from recibos where id_rc=:id and TipoCpbte=:Tipo')
    Left = 288
    Top = 360
    ParamData = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Tipo'
        ParamType = ptUnknown
      end>
  end
  object QMovCCVtaRec: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select * from MovAplicaccvta where id_cpbte=:id'
      'and tipocpbte=:tipo')
    Left = 296
    Top = 448
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptUnknown
      end>
  end
  object DSPrecibo: TDataSetProvider
    DataSet = QRecibo
    Constraints = True
    Left = 360
    Top = 368
  end
  object DSPMovCCVtaRec: TDataSetProvider
    DataSet = QMovCCVtaRec
    Constraints = True
    Left = 376
    Top = 448
  end
  object CDSRecibo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_RC;TIPOCPBTE'
    MasterFields = 'ID_CPBTE;TIPOCPBTE'
    MasterSource = DSMovAplicaCCVta
    PacketRecords = 0
    Params = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Tipo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPrecibo'
    Left = 440
    Top = 368
    object CDSReciboID_RC: TIntegerField
      FieldName = 'ID_RC'
    end
    object CDSReciboTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSReciboNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSReciboCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object CDSReciboNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSReciboTOTAL: TFloatField
      FieldName = 'TOTAL'
      currency = True
    end
    object CDSReciboSALDO_APLICAR: TFloatField
      FieldName = 'SALDO_APLICAR'
      currency = True
    end
  end
  object CDSMovCCVtaRec: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_CPBTE;TIPOCPBTE'
    MasterFields = 'ID_RC;TIPOCPBTE'
    MasterSource = DSRecibo
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'tipo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPMovCCVtaRec'
    Left = 472
    Top = 440
    object CDSMovCCVtaRecID_MOVCCVTA: TIntegerField
      FieldName = 'ID_MOVCCVTA'
    end
    object CDSMovCCVtaRecID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
    end
    object CDSMovCCVtaRecTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSMovCCVtaRecNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Size = 13
    end
    object CDSMovCCVtaRecIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      currency = True
    end
    object CDSMovCCVtaRecAPLICA_ID_CPBTE: TIntegerField
      FieldName = 'APLICA_ID_CPBTE'
    end
    object CDSMovCCVtaRecAPLICA_TIPOCPBTE: TStringField
      FieldName = 'APLICA_TIPOCPBTE'
      Size = 2
    end
    object CDSMovCCVtaRecAPLICA_NROCPBTE: TStringField
      FieldName = 'APLICA_NROCPBTE'
      Size = 13
    end
    object CDSMovCCVtaRecDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object CDSMovCCVtaRecFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object CDSMovCCVtaRecCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 6
    end
    object CDSMovCCVtaRecID_MOV: TIntegerField
      FieldName = 'ID_MOV'
    end
  end
end

inherited FormAnulaCheques: TFormAnulaCheques
  Left = 196
  Top = 170
  Caption = 'Anulación de Cheques emitidos'
  ClientHeight = 407
  ClientWidth = 577
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 577
    Height = 193
    object Label2: TLabel
      Left = 276
      Top = 52
      Width = 20
      Height = 13
      Caption = 'Nro:'
      Transparent = True
    end
    object Label3: TLabel
      Left = 4
      Top = 127
      Width = 82
      Height = 26
      Caption = 'Pagese'#13#10'a la Orden de:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 6
      Top = 53
      Width = 62
      Height = 13
      Caption = 'Mar del Plata'
      Transparent = True
    end
    object Label5: TLabel
      Left = 267
      Top = 76
      Width = 31
      Height = 16
      Caption = 'Unid.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label17: TLabel
      Left = 4
      Top = 76
      Width = 92
      Height = 13
      Caption = 'Para ser cobrado el'
      Transparent = True
    end
    object Label18: TLabel
      Left = 290
      Top = 100
      Width = 7
      Height = 16
      Caption = '$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 8
      Top = 0
      Width = 31
      Height = 13
      Caption = 'Banco'
    end
    object Label6: TLabel
      Left = 0
      Top = 161
      Width = 91
      Height = 13
      Caption = 'OBSERVACIONES'
      FocusControl = dbeObs
    end
    object Bevel1: TBevel
      Left = 8
      Top = 40
      Width = 521
      Height = 17
      Shape = bsTopLine
    end
    object dbeNumero: TDBEdit
      Left = 304
      Top = 49
      Width = 121
      Height = 21
      DataField = 'NUMERO'
      DataSource = DSBase
      Enabled = False
      TabOrder = 0
    end
    object dbEmision: TDBDateEdit
      Left = 104
      Top = 49
      Width = 121
      Height = 21
      DataField = 'FECHA_EMISION'
      DataSource = DSBase
      Enabled = False
      NumGlyphs = 2
      TabOrder = 1
    end
    object dbCobro: TDBDateEdit
      Left = 104
      Top = 73
      Width = 121
      Height = 21
      DataField = 'FECHA_COBRO'
      DataSource = DSBase
      Enabled = False
      NumGlyphs = 2
      TabOrder = 2
    end
    object dbeUnidades: TDBEdit
      Left = 304
      Top = 73
      Width = 121
      Height = 21
      DataField = 'UNIDADES'
      DataSource = DSBase
      Enabled = False
      TabOrder = 3
    end
    object dbeImporte: TDBEdit
      Left = 304
      Top = 97
      Width = 121
      Height = 21
      DataField = 'IMPORTE'
      DataSource = DSBase
      Enabled = False
      TabOrder = 4
    end
    object dbeOrdende: TDBEdit
      Left = 104
      Top = 129
      Width = 321
      Height = 21
      DataField = 'ORDEN_DE'
      DataSource = DSBase
      Enabled = False
      TabOrder = 5
    end
    object dbeObs: TDBEdit
      Left = 104
      Top = 157
      Width = 321
      Height = 21
      DataField = 'OBSERVACIONES'
      DataSource = DSBase
      TabOrder = 6
    end
    object RxDBCBancos: TRxDBLookupCombo
      Left = 8
      Top = 16
      Width = 145
      Height = 21
      DropDownCount = 8
      LookupField = 'ID_BANCO'
      LookupDisplay = 'NOMBRE'
      LookupSource = DSBancos
      TabOrder = 7
    end
    object cbCondicion: TCheckBox
      Left = 424
      Top = 11
      Width = 97
      Height = 17
      Caption = 'Buscar Anulados'
      TabOrder = 8
    end
  end
  inherited ToolBar1: TToolBar
    Top = 193
    Width = 577
    inherited btNuevo: TBitBtn
      Visible = False
    end
    inherited btModificar: TBitBtn
      Caption = '&Anular'
    end
    inherited btBorrar: TBitBtn
      Visible = False
    end
  end
  inherited Panel1: TPanel
    Top = 227
    Width = 577
  end
  inherited ActionList1: TActionList
    Left = 488
    inherited Modificar: TAction
      Caption = '&Anular'
    end
  end
  inherited DSBase: TDataSource
    DataSet = CDSCheques
    Top = 56
  end
  inherited wwBuscador: TwwLookupDialog
    Selected.Strings = (
      'NUMERO'#9'10'#9'Numero'#9'F'
      'ORDEN_DE'#9'30'#9'Orden de'#9'F'
      'FECHA_COBRO'#9'18'#9'A Cobrar'#9'F'
      'FECHA_EMISION'#9'18'#9'Emisión'#9'F'
      'IMPORTE'#9'10'#9'Importe'#9'F')
    LookupTable = QBuscador
    Caption = 'Cheque Nro.'
    Left = 480
    Top = 120
  end
  inherited FormStorage1: TFormStorage
    Left = 448
    Top = 96
  end
  inherited MPSAutoSize1: TMPSAutoSize
    Left = 240
  end
  object wwQCheques: TwwQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select Che.* from cheque_propio Che'
      'where che.id_cheque_pro=:id')
    ValidateWithMask = True
    Left = 392
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object DSPCheques: TDataSetProvider
    DataSet = wwQCheques
    Constraints = True
    Left = 200
    Top = 248
  end
  object QBancos: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select * from cuenta_caja where id_tipo_cta=2')
    Left = 192
    Top = 312
  end
  object DSBancos: TDataSource
    DataSet = QBancos
    Left = 256
    Top = 312
  end
  object QBuscador: TQuery
    DatabaseName = 'DBMain'
    SQL.Strings = (
      'select id_cheque_pro,id_chequera,id_banco'
      ',fecha_emision,Fecha_Cobro,orden_de,numero,importe,anulado'
      'from cheque_propio where id_banco=:id and anulado=:condicion'
      'order by id_banco,numero desc')
    Left = 368
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'condicion'
        ParamType = ptUnknown
      end>
    object QBuscadorID_CHEQUE_PRO: TIntegerField
      FieldName = 'ID_CHEQUE_PRO'
    end
    object QBuscadorID_CHEQUERA: TIntegerField
      FieldName = 'ID_CHEQUERA'
    end
    object QBuscadorID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object QBuscadorFECHA_EMISION: TDateTimeField
      DisplayLabel = 'Emisión'
      DisplayWidth = 18
      FieldName = 'FECHA_EMISION'
    end
    object QBuscadorFECHA_COBRO: TDateTimeField
      DisplayLabel = 'A Cobrar'
      DisplayWidth = 18
      FieldName = 'FECHA_COBRO'
    end
    object QBuscadorORDEN_DE: TStringField
      DisplayLabel = 'Orden de'
      DisplayWidth = 30
      FieldName = 'ORDEN_DE'
      Size = 30
    end
    object QBuscadorNUMERO: TIntegerField
      DisplayLabel = 'Numero'
      DisplayWidth = 10
      FieldName = 'NUMERO'
    end
    object QBuscadorIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      DisplayWidth = 10
      FieldName = 'IMPORTE'
      DisplayFormat = '0.00'
    end
    object QBuscadorANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
  end
  object CDSCheques: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPCheques'
    Left = 296
    Top = 251
    object CDSChequesID_CHEQUE_PRO: TIntegerField
      FieldName = 'ID_CHEQUE_PRO'
    end
    object CDSChequesID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
    end
    object CDSChequesID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
    end
    object CDSChequesID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
    end
    object CDSChequesID_CHEQUERA: TIntegerField
      FieldName = 'ID_CHEQUERA'
    end
    object CDSChequesID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object CDSChequesFECHA_EMISION: TDateTimeField
      FieldName = 'FECHA_EMISION'
    end
    object CDSChequesFECHA_COBRO: TDateTimeField
      FieldName = 'FECHA_COBRO'
    end
    object CDSChequesORDEN_DE: TStringField
      FieldName = 'ORDEN_DE'
      Size = 30
    end
    object CDSChequesNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object CDSChequesUNIDADES: TFloatField
      FieldName = 'UNIDADES'
    end
    object CDSChequesIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object CDSChequesCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object CDSChequesID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
    end
    object CDSChequesID_CUENTA_BANCO: TIntegerField
      FieldName = 'ID_CUENTA_BANCO'
    end
    object CDSChequesMONEDA: TIntegerField
      FieldName = 'MONEDA'
    end
    object CDSChequesANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object CDSChequesOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Size = 30
    end
  end
end

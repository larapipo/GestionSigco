object FormModificarDatosChPropio: TFormModificarDatosChPropio
  Left = 362
  Top = 240
  Caption = 'Modificar Datos de Ch.Propio'
  ClientHeight = 379
  ClientWidth = 659
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
  object Panel1: TPanel
    Left = 32
    Top = 32
    Width = 569
    Height = 273
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 140
      Height = 19
      Caption = 'Fecha de Emisi'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 162
      Top = 7
      Width = 125
      Height = 19
      Caption = 'Fecha de Cobro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 416
      Top = 8
      Width = 120
      Height = 19
      Caption = 'Nro.de Cheque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbId: TLabel
      Left = 289
      Top = 12
      Width = 18
      Height = 13
      Caption = 'lbId'
    end
    object Label4: TLabel
      Left = 16
      Top = 79
      Width = 49
      Height = 19
      Caption = 'Banco'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 144
      Width = 78
      Height = 19
      Caption = 'Chequera'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 332
      Top = 144
      Width = 69
      Height = 19
      Caption = 'Nro.Incial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 458
      Top = 145
      Width = 64
      Height = 19
      Caption = 'Nro.Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Emision: TJvDateEdit
      Left = 16
      Top = 31
      Width = 140
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowNullDate = False
      TabOrder = 0
    end
    object Cobro: TJvDateEdit
      Left = 162
      Top = 32
      Width = 140
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ShowNullDate = False
      TabOrder = 1
    end
    object edNumero: TEdit
      Left = 415
      Top = 33
      Width = 121
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = 'edNumero'
    end
    object BitBtn1: TBitBtn
      Left = 472
      Top = 232
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 3
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 391
      Top = 232
      Width = 75
      Height = 25
      Caption = '&Cerrar'
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 4
      OnClick = BitBtn2Click
    end
    object dbcBancos: TJvDBLookupCombo
      Left = 16
      Top = 104
      Width = 305
      Height = 26
      EmptyValue = '-1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      LookupField = 'ID_CUENTA'
      LookupDisplay = 'NOMBRE'
      LookupSource = DSBancos
      ParentFont = False
      TabOrder = 5
      OnChange = dbcBancosChange
    end
    object dbcChequera: TJvDBLookupCombo
      Left = 16
      Top = 169
      Width = 537
      Height = 26
      DropDownCount = 15
      DropDownWidth = 460
      DisplayAllFields = True
      DisplayEmpty = 'Sin Seleccion'
      EmptyValue = '-1'
      EmptyItemColor = clGradientInactiveCaption
      FieldsDelimiter = ';'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      LookupField = 'ID_CHEQUERA'
      LookupDisplay = 'NOMBRE;NUMERO_INCIAL;NUMERO_FINAL;id_cuenta'
      LookupSource = DSChequera
      ParentFont = False
      RightTrimmedLookup = True
      TabOrder = 6
    end
    object rgEstados: TRadioGroup
      Left = 416
      Top = 64
      Width = 125
      Height = 75
      Caption = 'Estado de Chequeras'
      ItemIndex = 2
      Items.Strings = (
        'Activas'
        'Terminadas'
        'Todas')
      TabOrder = 7
      OnClick = rgEstadosClick
    end
  end
  object DSPBancos: TDataSetProvider
    DataSet = QBanc
    Left = 176
    Top = 224
  end
  object CDSBancos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBancos'
    Left = 240
    Top = 224
    object CDSBancosID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
      Origin = 'ID_CUENTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSBancosID_TIPO_CTA: TIntegerField
      FieldName = 'ID_TIPO_CTA'
      Origin = 'ID_TIPO_CTA'
      Required = True
    end
    object CDSBancosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object CDSBancosNRO_CUENTA: TStringField
      FieldName = 'NRO_CUENTA'
      Origin = 'NRO_CUENTA'
      Size = 15
    end
    object CDSBancosID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
    end
    object CDSBancosCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object CDSBancosRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
  end
  object DSBancos: TDataSource
    DataSet = CDSBancos
    Left = 312
    Top = 224
  end
  object DSPChequera: TDataSetProvider
    DataSet = QChequera
    Left = 176
    Top = 296
  end
  object CDSChequera: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'idCta_banco'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'estado'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'estado'
        ParamType = ptInput
      end>
    ProviderName = 'DSPChequera'
    Left = 240
    Top = 296
    object CDSChequeraID_CHEQUERA: TIntegerField
      FieldName = 'ID_CHEQUERA'
      Origin = 'ID_CHEQUERA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSChequeraID_CUENTA: TIntegerField
      DisplayWidth = 5
      FieldName = 'ID_CUENTA'
      Origin = 'ID_CUENTA'
      Required = True
    end
    object CDSChequeraNRO_CUENTA: TStringField
      FieldName = 'NRO_CUENTA'
      Origin = 'NRO_CUENTA'
      Size = 15
    end
    object CDSChequeraNUMERO_INCIAL: TIntegerField
      DisplayWidth = 8
      FieldName = 'NUMERO_INCIAL'
      Origin = 'NUMERO_INCIAL'
      Required = True
    end
    object CDSChequeraNUMERO_FINAL: TIntegerField
      DisplayWidth = 8
      FieldName = 'NUMERO_FINAL'
      Origin = 'NUMERO_FINAL'
      Required = True
    end
    object CDSChequeraULTIMO_NUMERO: TIntegerField
      FieldName = 'ULTIMO_NUMERO'
      Origin = 'ULTIMO_NUMERO'
      Required = True
    end
    object CDSChequeraDIFERIDO: TSmallintField
      FieldName = 'DIFERIDO'
      Origin = 'DIFERIDO'
      Required = True
    end
    object CDSChequeraNOMBRE: TStringField
      DisplayWidth = 18
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 30
    end
    object CDSChequeraID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
      Required = True
    end
    object CDSChequeraMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object CDSChequeraCANT_CHE_EMITIDOS: TIntegerField
      FieldName = 'CANT_CHE_EMITIDOS'
      Origin = 'CANT_CHE_EMITIDOS'
    end
    object CDSChequeraCHEQUERA_TERMINADA: TStringField
      FieldName = 'CHEQUERA_TERMINADA'
      Origin = 'CHEQUERA_TERMINADA'
      FixedChar = True
      Size = 1
    end
  end
  object DSChequera: TDataSource
    DataSet = CDSChequera
    Left = 312
    Top = 296
  end
  object QBanc: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from cuenta_caja where id_tipo_cta=2')
    Left = 104
    Top = 224
  end
  object QChequera: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select ch.* from chequera ch where ch.id_cuenta = :idCta_banco'
      'and ((ch.chequera_terminada = :estado ) or ( :estado = '#39'*'#39' ))'
      'order by ch.chequera_terminada,ch.numero_incial')
    Left = 96
    Top = 296
    ParamData = <
      item
        Position = 1
        Name = 'idCta_banco'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'estado'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'estado'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object spModificaCheFD: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'MODIFICA_CHEPROPIO'
    Left = 584
    Top = 312
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'EMISION'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'COBRO'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'NUMERO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'ID_CTA_BCO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'ID_CHEQUERA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end

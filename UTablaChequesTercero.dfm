object FormTablaCheques3: TFormTablaCheques3
  Left = 111
  Top = 137
  Caption = 'Tabla de Cheques Tercero'
  ClientHeight = 582
  ClientWidth = 1010
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    1010
    582)
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 476
    Width = 78
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Numero de Che.'
    ExplicitTop = 448
  end
  object Label2: TLabel
    Left = 151
    Top = 477
    Width = 32
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Origen'
    ExplicitTop = 449
  end
  object Label3: TLabel
    Left = 390
    Top = 477
    Width = 36
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Destino'
    ExplicitTop = 449
  end
  object dbgMovimientos: TJvDBGrid
    Left = 0
    Top = 0
    Width = 1010
    Height = 466
    Align = alTop
    Anchors = [akTop, akRight, akBottom]
    DataSource = DSCheque3
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleButtons = True
    OnTitleBtnClick = dbgMovimientosTitleBtnClick
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
  end
  object DBNavigator1: TDBNavigator
    Left = 747
    Top = 475
    Width = 240
    Height = 25
    DataSource = DSCheque3
    Anchors = [akRight, akBottom]
    TabOrder = 1
    ExplicitLeft = 715
    ExplicitTop = 499
  end
  object BitBtn1: TBitBtn
    Left = 912
    Top = 513
    Width = 75
    Height = 24
    Anchors = [akRight, akBottom]
    Caption = 'Commit'
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
    ModalResult = 1
    NumGlyphs = 2
    TabOrder = 2
    OnClick = BitBtn1Click
    ExplicitLeft = 880
    ExplicitTop = 537
  end
  object BitBtn2: TBitBtn
    Left = 912
    Top = 542
    Width = 75
    Height = 24
    Anchors = [akRight, akBottom]
    Caption = 'Open'
    TabOrder = 3
    OnClick = BitBtn2Click
    ExplicitLeft = 880
    ExplicitTop = 566
  end
  object edNroCheque: TJvDBFindEdit
    Left = 9
    Top = 496
    Width = 131
    Height = 21
    Anchors = [akLeft, akBottom]
    TabOrder = 4
    Text = ''
    DataField = 'NUMERO'
    DataSource = DSCheque3
    FindStyle = fsFilter
    ExplicitTop = 520
  end
  object edOrigen: TJvDBFindEdit
    Left = 151
    Top = 496
    Width = 228
    Height = 21
    Anchors = [akLeft, akBottom]
    TabOrder = 5
    Text = ''
    DataField = 'ORIGEN'
    DataSource = DSCheque3
    FindStyle = fsFilter
    ExplicitTop = 520
  end
  object edDestino: TJvDBFindEdit
    Left = 390
    Top = 496
    Width = 228
    Height = 21
    Anchors = [akLeft, akBottom]
    TabOrder = 6
    Text = ''
    DataField = 'DESTINO'
    DataSource = DSCheque3
    FindStyle = fsFilter
    ExplicitTop = 520
  end
  object DSCheque3: TDataSource
    DataSet = QCheque3
    Left = 344
    Top = 152
  end
  object QCheque3: TFDQuery
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select ch.* from cheque_tercero ch'
      'order by ch.id_cheque_ter')
    Left = 248
    Top = 152
    object QCheque3ID_CHEQUE_TER: TIntegerField
      FieldName = 'ID_CHEQUE_TER'
      Origin = 'ID_CHEQUE_TER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCheque3ID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      Required = True
    end
    object QCheque3ID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
      Required = True
    end
    object QCheque3ID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      Required = True
    end
    object QCheque3ID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
      Required = True
    end
    object QCheque3NUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object QCheque3FECHA_EMISION: TSQLTimeStampField
      FieldName = 'FECHA_EMISION'
      Origin = 'FECHA_EMISION'
    end
    object QCheque3FECHA_COBRO: TSQLTimeStampField
      FieldName = 'FECHA_COBRO'
      Origin = 'FECHA_COBRO'
    end
    object QCheque3FECHA_ENTRADA: TSQLTimeStampField
      FieldName = 'FECHA_ENTRADA'
      Origin = 'FECHA_ENTRADA'
    end
    object QCheque3FECHA_SALIDA: TSQLTimeStampField
      FieldName = 'FECHA_SALIDA'
      Origin = 'FECHA_SALIDA'
    end
    object QCheque3ORIGEN: TStringField
      FieldName = 'ORIGEN'
      Origin = 'ORIGEN'
      Size = 30
    end
    object QCheque3DESTINO: TStringField
      FieldName = 'DESTINO'
      Origin = 'DESTINO'
      Size = 30
    end
    object QCheque3UNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
      Required = True
    end
    object QCheque3IMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QCheque3DISPONIBLE: TStringField
      FieldName = 'DISPONIBLE'
      Origin = 'DISPONIBLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCheque3FIRMANTE: TStringField
      FieldName = 'FIRMANTE'
      Origin = 'FIRMANTE'
      Size = 30
    end
    object QCheque3COTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
    object QCheque3ID_MOV_CAJA_EGRESOS: TIntegerField
      FieldName = 'ID_MOV_CAJA_EGRESOS'
      Origin = 'ID_MOV_CAJA_EGRESOS'
    end
    object QCheque3ID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      Required = True
    end
    object QCheque3ID_CUENTA_BCO_DEPOSITADO: TIntegerField
      FieldName = 'ID_CUENTA_BCO_DEPOSITADO'
      Origin = 'ID_CUENTA_BCO_DEPOSITADO'
    end
    object QCheque3MONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object QCheque3SALDO_UNIDADES: TFloatField
      FieldName = 'SALDO_UNIDADES'
      Origin = 'SALDO_UNIDADES'
    end
    object QCheque3SALDO_IMPORTE: TFloatField
      FieldName = 'SALDO_IMPORTE'
      Origin = 'SALDO_IMPORTE'
    end
    object QCheque3CUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QCheque3SUCURSAL_BCO: TStringField
      FieldName = 'SUCURSAL_BCO'
      Origin = 'SUCURSAL_BCO'
      Size = 6
    end
    object QCheque3NRO_CTA: TStringField
      FieldName = 'NRO_CTA'
      Origin = 'NRO_CTA'
      Size = 15
    end
  end
end

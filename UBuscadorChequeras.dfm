object FormBuscadorChequeras: TFormBuscadorChequeras
  Left = 158
  Top = 158
  BorderStyle = bsSingle
  Caption = 'Buscador de Chequeras'
  ClientHeight = 523
  ClientWidth = 658
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 8
    Top = 8
    Width = 641
    Height = 393
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 61
      Height = 13
      Caption = 'Cta.Bancaria'
    end
    object chbTerminada: TCheckBox
      Left = 416
      Top = 16
      Width = 153
      Height = 17
      Caption = 'Chequeras Terminadas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BuscarExecute
    end
    object BitBtn1: TBitBtn
      Left = 427
      Top = 351
      Width = 75
      Height = 25
      Action = Cancelar
      Cancel = True
      Caption = 'Cancelar'
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
    end
    object BitBtn2: TBitBtn
      Left = 508
      Top = 351
      Width = 75
      Height = 25
      Action = Aceptar
      Caption = 'Aceptar'
      Default = True
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
      TabOrder = 4
    end
    object cbCtas: TJvDBLookupCombo
      Left = 8
      Top = 24
      Width = 265
      Height = 22
      DropDownCount = 15
      DisplayEmpty = 'Todas las Cuentas'
      EmptyValue = '-1'
      FieldsDelimiter = ';'
      ListStyle = lsDelimited
      LookupField = 'ID_CUENTA'
      LookupDisplay = 'NOMBRE;nro_cuenta'
      LookupSource = DSCtas
      TabOrder = 0
      OnClick = BuscarExecute
    end
    object dbgChequeras: TJvDBGrid
      Left = 8
      Top = 52
      Width = 625
      Height = 293
      DataSource = DSChequera
      DrawingStyle = gdsGradient
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = AceptarExecute
      OnKeyPress = dbgChequerasKeyPress
      TitleButtons = True
      OnTitleBtnClick = dbgChequerasTitleBtnClick
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'ID_CHEQUERA'
          Title.Alignment = taCenter
          Title.Caption = 'Id'
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Title.Alignment = taCenter
          Title.Caption = 'Nombre'
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 191
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRO_CUENTA'
          Title.Alignment = taCenter
          Title.Caption = 'Nro.de Cta'
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO_INCIAL'
          Title.Alignment = taCenter
          Title.Caption = 'Nro.Inicial'
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO_FINAL'
          Title.Alignment = taCenter
          Title.Caption = 'Nro.Final'
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 75
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'ULTIMO_NUMERO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Ult.Numero'
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 78
          Visible = True
        end>
    end
  end
  object DSCtas: TDataSource
    DataSet = QCtas
    Left = 112
    Top = 256
  end
  object DSChequera: TDataSource
    DataSet = CDSChequeras
    Left = 584
    Top = 128
  end
  object ActionList1: TActionList
    Left = 584
    Top = 24
    object Aceptar: TAction
      Caption = 'Aceptar'
      OnExecute = AceptarExecute
    end
    object Cancelar: TAction
      Caption = 'Cancelar'
      OnExecute = CancelarExecute
    end
    object Buscar: TAction
      Caption = 'Buscar'
      OnExecute = BuscarExecute
    end
  end
  object CDSChequeras: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id_cuenta'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_cuenta'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Terminada'
        ParamType = ptInput
      end>
    ProviderName = 'DSPChequeras'
    Left = 520
    Top = 136
    object CDSChequerasID_CHEQUERA: TIntegerField
      FieldName = 'ID_CHEQUERA'
      Origin = 'ID_CHEQUERA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSChequerasID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
      Origin = 'ID_CUENTA'
      Required = True
    end
    object CDSChequerasNRO_CUENTA: TStringField
      FieldName = 'NRO_CUENTA'
      Origin = 'NRO_CUENTA'
      Size = 15
    end
    object CDSChequerasNUMERO_INCIAL: TIntegerField
      FieldName = 'NUMERO_INCIAL'
      Origin = 'NUMERO_INCIAL'
      Required = True
    end
    object CDSChequerasNUMERO_FINAL: TIntegerField
      FieldName = 'NUMERO_FINAL'
      Origin = 'NUMERO_FINAL'
      Required = True
    end
    object CDSChequerasULTIMO_NUMERO: TIntegerField
      FieldName = 'ULTIMO_NUMERO'
      Origin = 'ULTIMO_NUMERO'
      Required = True
    end
    object CDSChequerasDIFERIDO: TSmallintField
      FieldName = 'DIFERIDO'
      Origin = 'DIFERIDO'
      Required = True
    end
    object CDSChequerasNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 30
    end
    object CDSChequerasID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
      Required = True
    end
    object CDSChequerasMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object CDSChequerasCANT_CHE_EMITIDOS: TIntegerField
      FieldName = 'CANT_CHE_EMITIDOS'
      Origin = 'CANT_CHE_EMITIDOS'
    end
    object CDSChequerasCHEQUERA_TERMINADA: TStringField
      FieldName = 'CHEQUERA_TERMINADA'
      Origin = 'CHEQUERA_TERMINADA'
      FixedChar = True
      Size = 1
    end
  end
  object DSPChequeras: TDataSetProvider
    DataSet = QCheq
    Left = 448
    Top = 128
  end
  object QCtas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from cuenta_caja where id_tipo_cta=2')
    Left = 72
    Top = 256
    object QCtasID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
      Origin = 'ID_CUENTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCtasID_TIPO_CTA: TIntegerField
      FieldName = 'ID_TIPO_CTA'
      Origin = 'ID_TIPO_CTA'
      Required = True
    end
    object QCtasNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object QCtasNRO_CUENTA: TStringField
      FieldName = 'NRO_CUENTA'
      Origin = 'NRO_CUENTA'
      Size = 15
    end
    object QCtasID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
    end
    object QCtasCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QCtasRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
  end
  object QCheq: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from chequera '
      'where (id_cuenta= :id_cuenta or :id_cuenta = -1 )'
      'and chequera_terminada= :Terminada'
      'order by id_cuenta,id_chequera desc')
    Left = 384
    Top = 120
    ParamData = <
      item
        Position = 1
        Name = 'id_cuenta'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'Terminada'
        DataType = ftString
        ParamType = ptInput
      end>
  end
end

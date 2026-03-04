object FormBuscadorPorObs: TFormBuscadorPorObs
  Left = 239
  Top = 72
  BorderIcons = [biSystemMenu]
  Caption = 'Busqueda por Observaciones'
  ClientHeight = 579
  ClientWidth = 879
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 13
  object pnBase: TPanel
    Left = 0
    Top = 97
    Width = 879
    Height = 376
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 287
      Width = 95
      Height = 16
      Caption = 'Observaciones'
      FocusControl = cxDBTextEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object JvDBStatusLabel1: TJvDBStatusLabel
      Left = 754
      Top = 290
      Width = 96
      Height = 13
      DataSource = DSBuscador
      Style = lsRecordNo
      CalcRecCount = True
      Transparent = True
    end
    object DBText1: TDBText
      Left = 799
      Top = 309
      Width = 65
      Height = 17
      DataField = 'IDFACTURA'
      DataSource = DSBuscador
    end
    object Label4: TLabel
      Left = 15
      Top = 333
      Width = 48
      Height = 13
      Caption = 'Nro.Rtos'
      FocusControl = cxDBTextEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbgResultado: TJvDBGrid
      Left = 1
      Top = 1
      Width = 877
      Height = 283
      Align = alTop
      DataSource = DSBuscador
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = dbgResultadoDrawColumnCell
      OnDblClick = dbgResultadoDblClick
      OnKeyPress = dbgResultadoKeyPress
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 20
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'TIPOCPBTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLASECPBTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NROCPBTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 238
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAZONSOCIAL'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 243
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 116
          Visible = True
        end>
    end
    object cxDBTextEdit1: TDBEdit
      Left = 13
      Top = 306
      Width = 705
      Height = 24
      DataField = 'OBSERVACIONES'
      DataSource = DSBuscador
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object chRtosFacturados: TCheckBox
      Left = 740
      Top = 346
      Width = 138
      Height = 17
      Caption = 'Filtrar Rtos.Facturados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = chRtosFacturadosClick
    end
    object cxDBTextEdit2: TDBEdit
      Left = 15
      Top = 349
      Width = 289
      Height = 21
      DataField = 'NRORTOS'
      DataSource = DSBuscador
      Enabled = False
      TabOrder = 3
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 473
    Width = 879
    Height = 60
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 1
    object btOk: TBitBtn
      Left = 744
      Top = 16
      Width = 107
      Height = 33
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 0
      OnClick = btOkClick
    end
    object btCancelar: TBitBtn
      Left = 631
      Top = 16
      Width = 107
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
      OnClick = btCancelarClick
    end
  end
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 879
    Height = 97
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 2
    object Label3: TLabel
      Left = 16
      Top = 10
      Width = 227
      Height = 25
      Caption = 'Buscador x Detalle de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 41
      Width = 91
      Height = 16
      Caption = 'Dato a Buscar'
      FocusControl = cxDBTextEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 431
      Top = 60
      Width = 26
      Height = 21
      Flat = True
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFBCBCBC9E9E9EBEBEBEFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFBDBDBD9C9C9C767676898989BEBEBEFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB0B0B09F9F9FAAAAAA8787
        878A8A8ABFBFBFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB2B2B2
        BFBFBFBABABAA9A9A9858585898989BEBEBEFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFB4B4B4C1C1C1BABABAA9A9A98484848C8C8CBFBFBFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB4B4B4C1C1C1BABABAA9A9A984
        84848B8B8BBEBEBEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB4B4
        B4C1C1C1BABABAA8A8A88383838F8F8FBBBBBBFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFB5B5B5C1C1C1BABABAA6A6A6838383818181FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB6B6B6C1C1C1B9B9B9AAAAAA
        898989FF00FFFF00FFFF00FFA1A1A1A1A1A1A1A1A1A1A1A1A1A1A1FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB6
        B6B6C6C6C6CACACAB4B4B47B7B7B979797A1A1A1D1D1D1F0F0F0F0F0F0EFEFEF
        DADADAA1A1A1A1A1A1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFCACACAAAAAAABDBDBDEEEEEEEEEEEEED
        EDEDECECECEDEDEDEEEEEEF4F4F4CACACAA1A1A1FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA2A2A2C1C1C1E0E0
        E0E2E2E2ECECECECECECECECECEFEFEFF1F1F1F7F7F7FFFFFFD2D2D2A1A1A1FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        A1A1A1DCDCDCCDCDCDE0E0E0EDEDEDECECECEEEEEEF5F5F5FAFAFAFDFDFDFEFE
        FEFEFEFEA1A1A1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFA1A1A1D0D0D0CDCDCDC4C4C4E0E0E0EDEDEDECECECEFEFEFF7F7F7
        FEFEFEFEFEFEFAFAFAF5F5F5CCCCCCA1A1A1FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFA1A1A1DFDFDFC4C4C4BFBFBFD9D9D9EAEAEAED
        EDEDEFEFEFF5F5F5FBFBFBFBFBFBF5F5F5EFEFEFF1F1F1A1A1A1FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA1A1A1DFDFDFC3C3C3B9B9
        B9CDCDCDE4E4E4EDEDEDEEEEEEF0F0F0F3F3F3F4F4F4F0F0F0EEEEEEF1F1F1A1
        A1A1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA1A1A1
        E1E1E1C9C9C9B5B5B5C2C2C2D5D5D5E6E6E6EDEDEDEEEEEEEEEEEEEEEEEEEDED
        EDECECECF0F0F0A1A1A1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFA1A1A1D0D0D0D7D7D7C4C4C4C2C2C2C7C7C7D6D6D6E4E4E4ECECEC
        EDEDEDEDEDEDEDEDEDEDEDEDCDCDCDA1A1A1FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFA1A1A1E7E7E7E9E9E9DBDBDBC8C8C8C6
        C6C6D0D0D0DDDDDDE4E4E4E5E5E5E7E7E7EEEEEEA1A1A1FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA1A1A1C9C9C9FFFF
        FFF8F8F8DBDBDBBFBFBFB9B9B9C1C1C1CACACAD4D4D4E2E2E2C5C5C5A1A1A1FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFA1A1A1CCCCCCFFFFFFEBEBEBCFCFCFC4C4C4C7C7C7CFCFCFDDDDDDC3C3
        C3A1A1A1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFA1A1A1A1A1A1CECECEE2E2E2DFDFDFE0E0E0
        D2D2D2A1A1A1A1A1A1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA1A1A1A1
        A1A1A1A1A1A1A1A1A1A1A1FF00FFFF00FFFF00FFFF00FFFF00FF}
      OnClick = SpeedButton1Click
    end
    object edDato: TEdit
      Left = 16
      Top = 60
      Width = 409
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = edDatoKeyDown
      OnKeyPress = edDatoKeyPress
    end
    object rgBuscarPor: TRadioGroup
      Left = 594
      Top = 10
      Width = 257
      Height = 71
      Caption = 'Buscar por (Alt+Der/Izq- cambia)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'En las Observaciones'
        'Por el Nombre de Cabecera'
        'Por Nro Rto.(Vtas)')
      ParentFont = False
      TabOrder = 1
      OnClick = rgBuscarPorClick
    end
  end
  object CDSBuscador: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFixedChar
        Name = 'CPBTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'dato'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'modo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscador'
    Left = 360
    Top = 368
    object CDSBuscadorID_FC: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID_FC'
      Origin = 'ID_FC'
    end
    object CDSBuscadorTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSBuscadorCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSBuscadorLETRAFAC: TStringField
      DisplayLabel = 'Let.'
      FieldName = 'LETRAFAC'
      Origin = 'LETRAFAC'
      FixedChar = True
      Size = 1
    end
    object CDSBuscadorNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSBuscadorCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object CDSBuscadorNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSBuscadorOBSERVACIONES: TStringField
      DisplayLabel = 'Observaciones'
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      Size = 200
    end
    object CDSBuscadorRAZONSOCIAL: TStringField
      DisplayLabel = 'Razon Social'
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSBuscadorANULADO: TStringField
      FieldName = 'ANULADO'
      Origin = 'ANULADO'
      Size = 1
    end
    object CDSBuscadorIDFACTURA: TIntegerField
      FieldName = 'IDFACTURA'
      Origin = 'IDFACTURA'
    end
    object CDSBuscadorTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = ',0.00'
    end
    object CDSBuscadorNRORTOS: TStringField
      FieldName = 'NRORTOS'
      Size = 100
    end
  end
  object DSPBuscador: TDataSetProvider
    DataSet = QBuscador
    Left = 464
    Top = 368
  end
  object DSBuscador: TDataSource
    DataSet = CDSBuscador
    Left = 264
    Top = 368
  end
  object QBuscador: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from buscador_cpbte_obs(:CPBTE, :dato, :modo)')
    Left = 544
    Top = 368
    ParamData = <
      item
        Position = 1
        Name = 'CPBTE'
        DataType = ftFixedChar
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'dato'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'modo'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    AutoFlush = True
    SubStorages = <>
    Left = 375
    Top = 495
  end
  object JvFormStorage: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    Options = [fpState, fpSize, fpLocation, fpActiveControl]
    PreventResize = True
    StoredValues = <>
    Left = 463
    Top = 503
  end
end

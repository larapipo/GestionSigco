object FormOpciones: TFormOpciones
  Left = 334
  Top = 80
  Caption = 'Opciones'
  ClientHeight = 619
  ClientWidth = 866
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  Position = poDesigned
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 866
    Height = 550
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 864
      Height = 548
      ActivePage = TabSheet1
      Align = alClient
      Anchors = []
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Opciones de Formato'
        object pnPrincipal: TPanel
          Left = 0
          Top = 0
          Width = 856
          Height = 520
          Align = alClient
          TabOrder = 0
          DesignSize = (
            856
            520)
          object Label1: TLabel
            Left = 6
            Top = 283
            Width = 144
            Height = 16
            Caption = 'Formatos Numericos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 8
            Top = 8
            Width = 108
            Height = 16
            Caption = 'Otras Opciones'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object dbgOpcionesMascara: TDBGrid
            Left = 8
            Top = 305
            Width = 499
            Height = 202
            Anchors = [akLeft, akTop, akBottom]
            Color = clMenu
            DataSource = DSOpcionesMascar
            Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnCellClick = dbgOpcionesMascaraCellClick
            OnColEnter = dbgOpcionesMascaraColEnter
            Columns = <
              item
                Expanded = False
                FieldName = 'DESCRIPCION'
                Title.Alignment = taCenter
                Title.Caption = 'Descripci'#243'n'
                Width = 348
                Visible = True
              end
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'VALOR'
                PickList.Strings = (
                  '##0.0'
                  '###,##0.0'
                  '###,##0.00'
                  '###,##0.000')
                Title.Alignment = taCenter
                Title.Caption = 'Valor'
                Width = 120
                Visible = True
              end>
          end
          object dbgOpciones: TDBGrid
            Left = 6
            Top = 27
            Width = 603
            Height = 250
            Color = clMenu
            DataSource = DSOpciones
            Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnCellClick = dbgOpcionesCellClick
            OnColEnter = dbgOpcionesColEnter
            Columns = <
              item
                Expanded = False
                FieldName = 'DESCRIPCION'
                Title.Alignment = taCenter
                Title.Caption = 'Descripci'#243'n'
                Width = 306
                Visible = True
              end
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'VALOR'
                PickList.Strings = (
                  '##0.0'
                  '###,##0.0'
                  '###,##0.00'
                  '###,##0.000')
                Title.Alignment = taCenter
                Title.Caption = 'Valor'
                Width = 265
                Visible = True
              end>
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Opciones de Estado'
        ImageIndex = 1
        object lwOpciones: TListView
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 850
          Height = 514
          Align = alClient
          Checkboxes = True
          Columns = <
            item
            end
            item
              Caption = 'Descripcion'
              Width = 500
            end
            item
              Caption = 'Clave'
              Width = 60
            end>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ViewStyle = vsReport
          OnColumnClick = lwOpcionesColumnClick
          OnCustomDrawItem = lwOpcionesCustomDrawItem
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Notas Pie de Presupuesto'
        ImageIndex = 2
        object edNotasCorreo: TDBRichEdit
          Left = 0
          Top = 0
          Width = 856
          Height = 520
          Align = alClient
          DataField = 'NOTAS'
          DataSource = DSNotas
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          TabOrder = 0
          WantTabs = True
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Notas Correo'
        ImageIndex = 3
        object DBRichEdit1: TDBRichEdit
          Left = 0
          Top = 0
          Width = 856
          Height = 520
          Align = alClient
          DataField = 'TEXTO'
          DataSource = DSNotasCorreo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          PlainText = True
          ScrollBars = ssVertical
          TabOrder = 0
          WantTabs = True
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Texto Mailing'
        ImageIndex = 4
        object DBRichEdit2: TDBRichEdit
          Left = 0
          Top = 0
          Width = 856
          Height = 520
          Align = alClient
          DataField = 'TEXTO'
          DataSource = DSMailing
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          PlainText = True
          ScrollBars = ssVertical
          TabOrder = 0
          WantTabs = True
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'pppp'
        ImageIndex = 5
      end
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 550
    Width = 866
    Height = 69
    Align = alBottom
    Anchors = []
    TabOrder = 1
    DesignSize = (
      866
      69)
    object BitBtn1: TBitBtn
      Left = 561
      Top = 14
      Width = 81
      Height = 30
      Action = Aceptar
      Anchors = [akRight]
      Caption = '&Aceptar'
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
      TabOrder = 0
    end
    object btCancelar: TBitBtn
      Left = 648
      Top = 14
      Width = 81
      Height = 30
      Anchors = [akRight]
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
      TabOrder = 1
      OnClick = btCancelarClick
    end
    object BitBtn2: TBitBtn
      Left = 758
      Top = 14
      Width = 81
      Height = 30
      Action = Salir
      Anchors = [akRight]
      Caption = '&Salir'
      Glyph.Data = {
        56070000424D5607000000000000360400002800000028000000140000000100
        0800000000002003000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A600000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030707070707
        070707070707070707070707070703FFFFFFFFFFFFFFFFFFFFFFFF0303030303
        03FFF8F8F8F8F8F8F8F8F8F8F8F8FF07FF07FF07F8F8F8F8F8F8F8F8F8F8F8F8
        F8F8030303030303F8F8F8F8F8F8F8F8F8F8F8F8F80707FF07FF07F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8FF030303FFFFF8F8F80404040404040000F8F8F8FFFFFF
        040404040404F8F8F8F8F8F8F8F8F8F8F8030303F8F8F8F8F803030303030304
        FD05000007FFFFFF0403030303030303030303F8FFF8F8F8FF030303F8FF0303
        030303030303030405FD0500FFFFFFFF0403030303030303030303F8F807F8F8
        FF030303F8FF03030303030303030304FD05FD00FFFFFFFF0403030303030303
        030303F8FFF807F8FF030303F8FF0303030303030303030405FD0500FFFEFFFE
        0403030303030303030303F8F807F8F8FF030303F8FF03030303030303030304
        FD05FD00FFFFFFFF0403030303030303030303F8FFF807F8FF030303F8FF0303
        030303030303030405FD0500FFFEFFFE0403030303030303030303F8F807F8F8
        FF030303F8FF03030303030303030304FD05FD00FFFFFFFF0403030303030303
        030303F8FFF807F8FF030303F8FF0303030303030303030405FD0500FFFEFFFE
        0403030303030303030303F8F807F8F8FF030303F8FF03030303030303030304
        FD05FD00FEFFFEFF0403030303030303030303F8FFF807F8FF030303F8FF0303
        030303030303030405FD0500FFFEFFFE0403030303030303030303F8F807F8F8
        FF030303F8FF03030303030303030304FD05FD00FEFFFEFF0403030303030303
        030303F8FFF8FFF8FFFFFFFFF8FF030303030303030303040404040404040404
        0403030303030303030303F8F8F8F8F8F8F8F8F8F80303030303030303030303
        03030303030303030303030303030303030303030303FFFFFFFFFFFF03030303
        0303030303030303030000000000000303030303030303030303030303F8F8F8
        F8F8F8FF0303030303030303030303030300FAFAFAFA00030303030303030303
        0303030303F8FFFFFFFFF8FF0303030303030303030303030300000000000003
        03030303030303030303030303F8F8F8F8F8F803030303030303}
      NumGlyphs = 2
      TabOrder = 2
    end
  end
  object DSOpciones: TDataSource
    DataSet = CDSOpciones
    OnStateChange = DSOpcionesStateChange
    Left = 400
    Top = 128
  end
  object DSPOpciones: TDataSetProvider
    DataSet = QOpciones
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 256
    Top = 128
  end
  object CDSOpciones: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPOpciones'
    Left = 336
    Top = 128
    object CDSOpcionesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSOpcionesOPCION: TStringField
      FieldName = 'OPCION'
      Origin = 'OPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 13
    end
    object CDSOpcionesDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 50
    end
    object CDSOpcionesVALOR: TStringField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      OnSetText = CDSOpcionesVALORSetText
      Size = 100
    end
    object CDSOpcionesGRUPO: TStringField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      Size = 1
    end
  end
  object ActionList1: TActionList
    Left = 496
    Top = 80
    object Aceptar: TAction
      Caption = '&Aceptar'
      OnExecute = AceptarExecute
    end
    object Salir: TAction
      Caption = '&Salir'
      OnExecute = SalirExecute
    end
  end
  object DSPOpcionSiNo: TDataSetProvider
    DataSet = QOpcionSiNO
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 256
    Top = 432
  end
  object DSOpcionSiNo: TDataSource
    DataSet = CDSOpcionSiNo
    OnStateChange = DSOpcionSiNoStateChange
    Left = 432
    Top = 440
  end
  object DSOpcionesMascar: TDataSource
    DataSet = CDSOpcionesMascara
    OnStateChange = DSOpcionesMascarStateChange
    Left = 80
    Top = 312
  end
  object DSPOpcionesMascara: TDataSetProvider
    DataSet = QOpcionesMascar
    Options = [poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 296
    Top = 312
  end
  object CDSOpcionesMascara: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPOpcionesMascara'
    Left = 360
    Top = 312
    object CDSOpcionesMascaraID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSOpcionesMascaraOPCION: TStringField
      FieldName = 'OPCION'
      Origin = 'OPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object CDSOpcionesMascaraDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 50
    end
    object CDSOpcionesMascaraVALOR: TStringField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Size = 100
    end
    object CDSOpcionesMascaraGRUPO: TStringField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      FixedChar = True
      Size = 1
    end
  end
  object DSNotas: TDataSource
    DataSet = CDSNotas
    OnStateChange = DSOpcionesStateChange
    Left = 536
    Top = 216
  end
  object DSPNotas: TDataSetProvider
    DataSet = QNotas
    Options = [poAllowCommandText]
    Left = 424
    Top = 224
  end
  object CDSNotas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPNotas'
    Left = 488
    Top = 224
    object CDSNotasNOTAS: TMemoField
      FieldName = 'NOTAS'
      Origin = 'NOTAS'
      BlobType = ftMemo
    end
    object CDSNotasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object CDSOpcionSiNo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPOpcionSiNo'
    AfterOpen = CDSOpcionSiNoAfterOpen
    Left = 332
    Top = 432
    object CDSOpcionSiNoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSOpcionSiNoOPCION: TStringField
      FieldName = 'OPCION'
      Origin = 'OPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object CDSOpcionSiNoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 50
    end
    object CDSOpcionSiNoVALOR: TStringField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Size = 100
    end
    object CDSOpcionSiNoGRUPO: TStringField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      FixedChar = True
      Size = 1
    end
    object CDSOpcionSiNoVALOR_BOOLEAN: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'VALOR_BOOLEAN'
      ProviderFlags = []
    end
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    FileName = 'FormOpciones.ini'
    SubStorages = <>
    Left = 76
    Top = 59
  end
  object JvFormStorage1: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    Options = [fpState, fpSize, fpLocation, fpActiveControl]
    StoredValues = <>
    Left = 156
    Top = 59
  end
  object QNtotaCorreo: TFDQuery
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from TABLA_TEXTO_CORREO')
    Left = 568
    Top = 312
    object QNtotaCorreoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QNtotaCorreoTEXTO: TMemoField
      FieldName = 'TEXTO'
      Origin = 'TEXTO'
      BlobType = ftMemo
    end
  end
  object DSPNotasCorreo: TDataSetProvider
    DataSet = QNtotaCorreo
    Options = [poAllowCommandText]
    Left = 672
    Top = 312
  end
  object CDSNotasCorreo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPNotasCorreo'
    OnNewRecord = CDSNotasCorreoNewRecord
    Left = 768
    Top = 312
    object CDSNotasCorreoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSNotasCorreoTEXTO: TMemoField
      FieldName = 'TEXTO'
      Origin = 'TEXTO'
      BlobType = ftMemo
    end
  end
  object DSNotasCorreo: TDataSource
    DataSet = CDSNotasCorreo
    OnStateChange = DSOpcionesStateChange
    Left = 728
    Top = 416
  end
  object QMailing: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from TABLA_TEXTO_mailing')
    Left = 768
    Top = 56
    object QMailingID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMailingTEXTO: TMemoField
      FieldName = 'TEXTO'
      Origin = 'TEXTO'
      BlobType = ftMemo
    end
  end
  object DSPMailing: TDataSetProvider
    DataSet = QMailing
    Options = [poAllowCommandText]
    Left = 768
    Top = 112
  end
  object CDSMailing: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMailing'
    OnNewRecord = CDSMailingNewRecord
    Left = 776
    Top = 160
    object CDSMailingID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSMailingTEXTO: TMemoField
      FieldName = 'TEXTO'
      BlobType = ftMemo
    end
  end
  object DSMailing: TDataSource
    DataSet = CDSMailing
    OnStateChange = DSOpcionesStateChange
    Left = 784
    Top = 224
  end
  object QOpciones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from opciones '
      'where grupo<>'#39'O'#39' and grupo<>'#39'I'#39' and grupo<>'#39'M'#39
      'order by descripcion')
    Left = 189
    Top = 129
    object QOpcionesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOpcionesOPCION: TStringField
      FieldName = 'OPCION'
      Origin = 'OPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object QOpcionesDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 50
    end
    object QOpcionesVALOR: TStringField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Size = 100
    end
    object QOpcionesGRUPO: TStringField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      FixedChar = True
      Size = 1
    end
  end
  object QNotas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from tabla_notas')
    Left = 365
    Top = 225
    object QNotasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QNotasNOTAS: TMemoField
      FieldName = 'NOTAS'
      Origin = 'NOTAS'
      BlobType = ftMemo
    end
  end
  object QOpcionesMascar: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from opciones '
      'where grupo='#39'M'#39
      'order by grupo,descripcion')
    Left = 213
    Top = 329
    object QOpcionesMascarID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOpcionesMascarOPCION: TStringField
      FieldName = 'OPCION'
      Origin = 'OPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object QOpcionesMascarDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 50
    end
    object QOpcionesMascarVALOR: TStringField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Size = 100
    end
    object QOpcionesMascarGRUPO: TStringField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      FixedChar = True
      Size = 1
    end
  end
  object QOpcionSiNO: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from opciones '
      'where grupo='#39'I'#39' order by descripcion')
    Left = 181
    Top = 433
    object QOpcionSiNOID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOpcionSiNOOPCION: TStringField
      FieldName = 'OPCION'
      Origin = 'OPCION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object QOpcionSiNODESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 50
    end
    object QOpcionSiNOVALOR: TStringField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Size = 100
    end
    object QOpcionSiNOGRUPO: TStringField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      FixedChar = True
      Size = 1
    end
  end
  object QVerificaOp: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select o.* from opciones o '
      'where o.opcion = :opcion')
    Left = 93
    Top = 401
    ParamData = <
      item
        Name = 'OPCION'
        DataType = ftString
        ParamType = ptInput
        Size = 13
        Value = Null
      end>
  end
  object QMaxId: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max(id) from opciones ')
    Left = 93
    Top = 473
    object QMaxIdMAX: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MAX'
      Origin = 'MAX'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object AdvAppStyler1: TAdvAppStyler
    Left = 693
    Top = 217
  end
end

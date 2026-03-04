inherited FormProducc_Diario: TFormProducc_Diario
  Caption = 'O.de Producc.Parte Diario'
  ClientHeight = 799
  ClientWidth = 960
  StyleElements = [seFont, seClient, seBorder]
  OnActivate = FormActivate
  ExplicitWidth = 978
  ExplicitHeight = 840
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Top = 19
    Width = 960
    Height = 630
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 19
    ExplicitWidth = 960
    ExplicitHeight = 630
    object Label13: TLabel
      Left = 5
      Top = 455
      Width = 71
      Height = 13
      Caption = 'Observaciones'
    end
    object Label35: TLabel
      Left = 10
      Top = 572
      Width = 93
      Height = 13
      Caption = 'Diferencia Horm.Lts'
      FocusControl = dbeDifHormigonLts
    end
    object Label36: TLabel
      Left = 170
      Top = 572
      Width = 115
      Height = 13
      Caption = 'Diferencia Hormigon Kg.'
      FocusControl = dbeDifHormigonKg
    end
    object Label37: TLabel
      Left = 317
      Top = 569
      Width = 71
      Height = 13
      Caption = 'Dif.Piedera Kg.'
      FocusControl = dbeDifPiedraKg
    end
    object Label38: TLabel
      Left = 458
      Top = 569
      Width = 60
      Height = 13
      Caption = 'Dif.Arena Kg'
      FocusControl = dbeDifArenaKg
    end
    object Label39: TLabel
      Left = 597
      Top = 569
      Width = 77
      Height = 13
      Caption = 'Dif.Cemento Kg.'
      FocusControl = dbeDifCementoKg
    end
    object dbeObservaciones: TDBMemo
      Left = 8
      Top = 474
      Width = 921
      Height = 45
      DataField = 'OBSERVACIONES'
      DataSource = DSBase
      TabOrder = 1
    end
    object PageControl1: TPageControl
      Left = 2
      Top = 327
      Width = 312
      Height = 116
      ActivePage = pagLotes
      TabOrder = 0
      OnChanging = PageControl1Changing
      object pagLotes: TTabSheet
        Caption = 'Control por Lotes'
        ImageIndex = 1
        object Label18: TLabel
          Left = 20
          Top = 3
          Width = 36
          Height = 24
          Caption = 'Lote'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object dbeLote: TDBEdit
          Left = 20
          Top = 25
          Width = 232
          Height = 32
          Color = clWhite
          DataField = 'NRO_LOTE'
          DataSource = DSBase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TextHint = 'Ingrese Lote'
        end
      end
      object pagTroqueles: TTabSheet
        Caption = 'Control por Troqueles'
        object dbgTroqueles: TDBGrid
          Left = 0
          Top = 0
          Width = 304
          Height = 88
          Align = alClient
          DataSource = DSTroqueles
          DrawingStyle = gdsClassic
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnColEnter = dbgTroquelesColEnter
          OnKeyPress = dbgTroquelesKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'NRO_TROQUEL'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 133
              Visible = True
            end
            item
              Color = clCream
              Expanded = False
              FieldName = 'FECHA_INGRESO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 125
              Visible = True
            end
            item
              Color = clCream
              Expanded = False
              FieldName = 'FECHA_EGRESO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 110
              Visible = True
            end>
        end
      end
    end
    object pnPostes: TPanel
      Left = 0
      Top = 169
      Width = 960
      Height = 152
      Align = alTop
      TabOrder = 2
      object Label19: TLabel
        Left = 12
        Top = 5
        Width = 62
        Height = 13
        Caption = 'Hormigon Lts'
        FocusControl = dbeHormigoLts
      end
      object Label20: TLabel
        Left = 154
        Top = 5
        Width = 64
        Height = 13
        Caption = 'Hormigon Kg.'
        FocusControl = dbeHormigonKg
      end
      object Label21: TLabel
        Left = 154
        Top = 51
        Width = 86
        Height = 13
        Caption = 'Hormigon Kg Real'
        FocusControl = dneHormigonKgReal
      end
      object Label22: TLabel
        Left = 12
        Top = 51
        Width = 82
        Height = 13
        Caption = 'Hormigon Lt.Real'
        FocusControl = dbeHormLtsReal
      end
      object Label23: TLabel
        Left = 154
        Top = 97
        Width = 77
        Height = 13
        Caption = 'Puestas a Tierra'
        FocusControl = dbePuestaTierra
      end
      object Label24: TLabel
        Left = 435
        Top = 96
        Width = 52
        Height = 13
        Caption = 'Acero Pas.'
        FocusControl = dbeAceroPas
      end
      object Label25: TLabel
        Left = 12
        Top = 97
        Width = 40
        Height = 13
        Caption = 'Aros Kg.'
        FocusControl = dbeArosKg
      end
      object Label26: TLabel
        Left = 580
        Top = 97
        Width = 61
        Height = 13
        Caption = 'Trenzado Kg'
        FocusControl = dbeTrenzaKg
      end
      object Label27: TLabel
        Left = 293
        Top = 97
        Width = 67
        Height = 13
        Caption = 'Cordondes Kg'
        FocusControl = dbeCordones
      end
      object Label28: TLabel
        Left = 785
        Top = 5
        Width = 54
        Height = 13
        Caption = 'Alambre Kg'
        FocusControl = dneAlambreKg
      end
      object Label29: TLabel
        Left = 293
        Top = 5
        Width = 51
        Height = 13
        Caption = 'Piedras Kg'
        FocusControl = dbePiedraKg
      end
      object Label30: TLabel
        Left = 435
        Top = 4
        Width = 44
        Height = 13
        Caption = 'Arena Kg'
        FocusControl = dbeArenaKg
      end
      object Label31: TLabel
        Left = 580
        Top = 5
        Width = 58
        Height = 13
        Caption = 'Cemento Kg'
        FocusControl = dbeCementoKg
      end
      object Label32: TLabel
        Left = 293
        Top = 51
        Width = 76
        Height = 13
        Caption = 'Piedars Kg Real'
        FocusControl = debPiedraKgReal
      end
      object Label33: TLabel
        Left = 435
        Top = 50
        Width = 69
        Height = 13
        Caption = 'Arena Kg Real'
        FocusControl = dbeArenaKgReal
      end
      object Label34: TLabel
        Left = 580
        Top = 51
        Width = 83
        Height = 13
        Caption = 'Cemento Kg Real'
        FocusControl = dbeCementoKgReal
      end
      object dbePuestaTierra: TDBEdit
        Left = 154
        Top = 113
        Width = 121
        Height = 21
        DataField = 'PATS_CANT'
        DataSource = DSBase
        TabOrder = 0
      end
      object dbeHormigoLts: TDBEdit
        Left = 12
        Top = 24
        Width = 121
        Height = 21
        DataField = 'HORM_LTS'
        DataSource = DSBase
        TabOrder = 1
      end
      object dbeHormigonKg: TDBEdit
        Left = 154
        Top = 24
        Width = 121
        Height = 21
        DataField = 'HORM_KG'
        DataSource = DSBase
        TabOrder = 2
      end
      object dneHormigonKgReal: TDBEdit
        Left = 154
        Top = 70
        Width = 121
        Height = 21
        Color = clInfoBk
        DataField = 'HORM_REAL_KG'
        DataSource = DSBase
        TabOrder = 3
      end
      object dbeHormLtsReal: TDBEdit
        Left = 12
        Top = 70
        Width = 121
        Height = 21
        DataField = 'HORM_REAL_LTS'
        DataSource = DSBase
        TabOrder = 4
      end
      object dbeAceroPas: TDBEdit
        Left = 435
        Top = 112
        Width = 121
        Height = 21
        DataField = 'ACERO_PAS_KG'
        DataSource = DSBase
        TabOrder = 5
      end
      object dbeArosKg: TDBEdit
        Left = 12
        Top = 113
        Width = 121
        Height = 21
        DataField = 'AROS_KG'
        DataSource = DSBase
        TabOrder = 6
      end
      object dbeTrenzaKg: TDBEdit
        Left = 580
        Top = 113
        Width = 121
        Height = 21
        DataField = 'TRENZAS_KG'
        DataSource = DSBase
        TabOrder = 7
      end
      object dbeCordones: TDBEdit
        Left = 293
        Top = 113
        Width = 121
        Height = 21
        DataField = 'CORDONES_KG'
        DataSource = DSBase
        TabOrder = 8
      end
      object dneAlambreKg: TDBEdit
        Left = 785
        Top = 24
        Width = 121
        Height = 21
        DataField = 'ALAMBRE_KG'
        DataSource = DSBase
        TabOrder = 9
      end
      object dbePiedraKg: TDBEdit
        Left = 293
        Top = 24
        Width = 121
        Height = 21
        Color = clInfoBk
        DataField = 'PIEDRA_KG'
        DataSource = DSBase
        TabOrder = 10
      end
      object dbeArenaKg: TDBEdit
        Left = 435
        Top = 23
        Width = 121
        Height = 21
        Color = clInfoBk
        DataField = 'ARENA_KG'
        DataSource = DSBase
        TabOrder = 11
      end
      object dbeCementoKg: TDBEdit
        Left = 580
        Top = 24
        Width = 121
        Height = 21
        Color = clInfoBk
        DataField = 'CEMENTO_KG'
        DataSource = DSBase
        TabOrder = 12
      end
      object debPiedraKgReal: TDBEdit
        Left = 293
        Top = 70
        Width = 121
        Height = 21
        Color = clInfoBk
        DataField = 'PIEDRA_KG_REAL'
        DataSource = DSBase
        TabOrder = 13
      end
      object dbeArenaKgReal: TDBEdit
        Left = 435
        Top = 69
        Width = 121
        Height = 21
        Color = clInfoBk
        DataField = 'ARENA_KG_REAL'
        DataSource = DSBase
        TabOrder = 14
      end
      object dbeCementoKgReal: TDBEdit
        Left = 580
        Top = 70
        Width = 121
        Height = 21
        Color = clInfoBk
        DataField = 'CEMENTO_KG_REAL'
        DataSource = DSBase
        TabOrder = 15
      end
    end
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 960
      Height = 169
      Align = alTop
      TabOrder = 3
      ExplicitTop = 2
      object Label1: TLabel
        Left = 671
        Top = 8
        Width = 9
        Height = 13
        Caption = 'Id'
      end
      object Label2: TLabel
        Left = 716
        Top = 8
        Width = 55
        Height = 13
        Caption = 'Id Det.Plani'
      end
      object Label4: TLabel
        Left = 592
        Top = 63
        Width = 28
        Height = 13
        Caption = 'Turno'
      end
      object Label5: TLabel
        Left = 758
        Top = 61
        Width = 37
        Height = 13
        Caption = 'Material'
      end
      object Label6: TLabel
        Left = 413
        Top = 115
        Width = 42
        Height = 12
        Caption = 'Cantidad'
      end
      object Label7: TLabel
        Left = 817
        Top = 6
        Width = 75
        Height = 13
        Caption = 'Nro.Parte Diario'
        Visible = False
      end
      object SpeedButton1: TSpeedButton
        Left = 140
        Top = 22
        Width = 25
        Height = 22
        Hint = 'Buscar Detalle de Items'
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000000000000000000000000000000000003F3C398C8482
          6562602D2B292C2829312D2D383635FFFFFFFFFFFF3835358A84813533312120
          1F2221212C2829302E2E272323BAB7B075716C1310101110101A1A183C3835FF
          FFFFFFFFFF474444EBE6E4332F2E110F0F1716152F2D2B333131504B48CFC8CA
          BABAB556504E514B494B4645494443FFFFFFFFFFFF6B675FBEBCBAA5A09E514D
          494C4746494643312E2C76716FCCCCC8EFEDED8E88837F7B776F69664E4B46FF
          FFFFFFFFFF716D66AFAAA6F5F5F3857F7B736D6B615C5946424183807EBAB5B2
          E8E8E686827E6C68646863614B4646FFFFFFFFFFFF64635EABA6A0E0E0DE746D
          6B67625D625D5B5E5D5DB3B2AFABA5A0F9FBFB9E9A98746F6C716C69575352FF
          FFFFFFFFFF625F5CADA8A3F5F5F5807B78736D69635D5B9E9D9DB5B3B3888280
          F9F7F7B5ADAB716C69716C685A56558B8887AFAEAC5D5B58A6A29DF3F3F3827E
          79736F6B514C4A9291918481803935353834322F2B2A2521213D3A386F69685B
          56552A28276F68684D47441515140B090A0B0A0B0C0B0C3C3C3CBCBABA8B8682
          EBE8E8F1F1F3E0DAD77C7775645F61645D5C2927266F6966575151EFEDEBF9F9
          F5D7D3CFE9E2DA969494D2D0CF736F69D7D7D5DAD5D7C5C1BE716C6B5F5B595F
          58572826256B6663524F4DE6E6E4CECCCCBAB5B4A59E9BB2B2B1DFDEDE645D5B
          D5D1CFE9EBEDE2E2DE7B777766615F6B6362262323595451494542FDFDFBEBED
          EDE0E0DC97918ECCCCCCFFFFFF817D7AE8E2E0C3C3C07F787555514F59565440
          3D3B332F2FB7AFAB7F7B77A39D9D8C898697918F53504FFFFFFFFFFFFFC3C1C1
          A09B9B5B5755AAA6A37873703D3938FFFFFFFFFFFF9D9A98F5F5EB524E4D312E
          2E52504E767474FFFFFFFFFFFFFFFFFFFFFFFF6966629B98975E59572E2B28FF
          FFFFFFFFFF5651508C8B863C3838464444FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF6D6867FFFFFFF3EDEBA29D9AFFFFFFFFFFFFAAA5A5FFFFFFF1EBE66965
          63FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6A6865A5A2A08B87845E5956FF
          FFFFFFFFFF625E5C9C9997726E6E53514EFFFFFFFFFFFFFFFFFF}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton1Click
      end
      object Label8: TLabel
        Left = 132
        Top = 61
        Width = 33
        Height = 13
        Caption = 'Codigo'
      end
      object Label9: TLabel
        Left = 205
        Top = 61
        Width = 38
        Height = 13
        Caption = 'Detalles'
      end
      object Label10: TLabel
        Left = 180
        Top = 7
        Width = 31
        Height = 13
        Caption = 'Sector'
      end
      object Label11: TLabel
        Left = 7
        Top = 8
        Width = 30
        Height = 13
        Caption = 'Fecha'
      end
      object Label12: TLabel
        Left = 782
        Top = 112
        Width = 105
        Height = 13
        Caption = 'Nro.Rto Entre.Material'
      end
      object dbeId: TDBText
        Left = 669
        Top = 27
        Width = 27
        Height = 13
        AutoSize = True
        Color = clInfoBk
        DataField = 'ID'
        DataSource = DSBase
        Enabled = False
        ParentColor = False
      end
      object dbeIdDet: TDBText
        Left = 721
        Top = 27
        Width = 44
        Height = 13
        AutoSize = True
        Color = clInfoBk
        DataField = 'ID_SUBDET_PROD'
        DataSource = DSBase
        Enabled = False
        ParentColor = False
      end
      object Label14: TLabel
        Left = 413
        Top = 64
        Width = 53
        Height = 13
        Caption = 'Cantidades'
      end
      object Label15: TLabel
        Left = 498
        Top = 64
        Width = 27
        Height = 13
        Caption = 'Saldo'
      end
      object Label16: TLabel
        Left = 592
        Top = 114
        Width = 71
        Height = 13
        Caption = 'Nro.de Troquel'
        FocusControl = dbeNroTroquel
      end
      object dbeNroCpbte: TDBEdit
        Left = 7
        Top = 80
        Width = 118
        Height = 21
        Color = clInfoBk
        DataField = 'NROCPBTE'
        DataSource = DSBase
        Enabled = False
        TabOrder = 0
      end
      object dbcTurno: TJvDBComboBox
        Left = 591
        Top = 80
        Width = 150
        Height = 21
        DataField = 'TURNO'
        DataSource = DSBase
        Items.Strings = (
          'Ma'#241'ana'
          'Tarde')
        TabOrder = 1
        Values.Strings = (
          '1'
          '2')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object dbcMaterial: TJvDBLookupCombo
        Left = 758
        Top = 80
        Width = 145
        Height = 21
        DataField = 'TIPO_MATERIAL'
        DataSource = DSBase
        LookupField = 'ID'
        LookupDisplay = 'DETALLE'
        LookupSource = DSMaterial
        TabOrder = 2
      end
      object dbeCodigo: TDBEdit
        Left = 132
        Top = 80
        Width = 67
        Height = 21
        Color = clInfoBk
        DataField = 'MUESTRACODIGO'
        DataSource = DSBase
        Enabled = False
        TabOrder = 3
      end
      object debDetalle: TDBEdit
        Left = 205
        Top = 80
        Width = 202
        Height = 21
        Color = clInfoBk
        DataField = 'MUESTRADETALLE'
        DataSource = DSBase
        Enabled = False
        TabOrder = 4
      end
      object dbcEstacion: TJvDBLookupCombo
        Left = 171
        Top = 24
        Width = 227
        Height = 21
        DropDownCount = 12
        DropDownWidth = 400
        DisplayAllFields = True
        DataField = 'ID_SECTOR'
        DataSource = DSBase
        LookupField = 'ID'
        LookupDisplay = 'DETALLE'
        LookupSource = DSSector
        TabOrder = 5
      end
      object dbeFecha: TJvDBDateEdit
        Left = 7
        Top = 24
        Width = 114
        Height = 21
        DataField = 'FECHA'
        DataSource = DSBase
        ShowNullDate = False
        TabOrder = 6
      end
      object dbeRto: TDBEdit
        Left = 782
        Top = 131
        Width = 118
        Height = 21
        Color = clWhite
        DataField = 'NRORTO'
        DataSource = DSBase
        TabOrder = 7
      end
      object dbeCant: TDBEdit
        Left = 411
        Top = 80
        Width = 79
        Height = 21
        Color = clInfoBk
        DataField = 'MUESTRACANTIDAD'
        DataSource = DSBase
        Enabled = False
        TabOrder = 8
      end
      object dbeNroParte: TDBEdit
        Left = 785
        Top = 24
        Width = 118
        Height = 21
        Color = clWhite
        DataField = 'ID'
        DataSource = DSBase
        TabOrder = 9
      end
      object dbeSaldo: TDBEdit
        Left = 495
        Top = 80
        Width = 79
        Height = 21
        Color = clInfoBk
        DataField = 'MUESTRASALDO'
        DataSource = DSBase
        Enabled = False
        TabOrder = 10
      end
      object dbeCantidad: TDBEdit
        Left = 413
        Top = 131
        Width = 118
        Height = 21
        Color = clWhite
        DataField = 'CANTIDAD'
        DataSource = DSBase
        TabOrder = 11
      end
      object dbeNroTroquel: TDBEdit
        Left = 592
        Top = 131
        Width = 121
        Height = 21
        DataField = 'TROQUEL'
        DataSource = DSBase
        TabOrder = 12
      end
    end
    object dbeDifHormigonLts: TDBEdit
      Left = 10
      Top = 588
      Width = 121
      Height = 21
      Color = clInfoBk
      DataField = 'DIF_HORM_LTS'
      DataSource = DSBase
      TabOrder = 4
    end
    object dbeDifHormigonKg: TDBEdit
      Left = 170
      Top = 588
      Width = 121
      Height = 21
      Color = clInfoBk
      DataField = 'DIF_HORM_KG'
      DataSource = DSBase
      TabOrder = 5
    end
    object dbeDifPiedraKg: TDBEdit
      Left = 317
      Top = 588
      Width = 121
      Height = 21
      Color = clInfoBk
      DataField = 'DIF_PIEDRA_KG'
      DataSource = DSBase
      TabOrder = 6
    end
    object dbeDifArenaKg: TDBEdit
      Left = 458
      Top = 588
      Width = 121
      Height = 21
      Color = clInfoBk
      DataField = 'DIF_ARENA_KG'
      DataSource = DSBase
      TabOrder = 7
    end
    object dbeDifCementoKg: TDBEdit
      Left = 597
      Top = 588
      Width = 121
      Height = 21
      Color = clInfoBk
      DataField = 'DIF_CEMENTO_KG'
      DataSource = DSBase
      TabOrder = 8
    end
  end
  inherited ToolBar1: TToolBar
    Top = 649
    Width = 960
    ButtonHeight = 27
    ExplicitTop = 476
    ExplicitWidth = 1052
    inherited btConfirma: TBitBtn
      Height = 27
      DoubleBuffered = True
      ExplicitHeight = 27
    end
    inherited btNuevo: TBitBtn
      Height = 27
      DoubleBuffered = True
      ExplicitHeight = 27
    end
    inherited btCancelar: TBitBtn
      Height = 27
      DoubleBuffered = True
      ExplicitHeight = 27
    end
    inherited btModificar: TBitBtn
      Height = 27
      DoubleBuffered = True
      ExplicitHeight = 27
    end
    inherited Pr: TSpeedButton
      Height = 27
      ExplicitHeight = 27
    end
    inherited btBuscar: TBitBtn
      Height = 27
      DoubleBuffered = True
      ExplicitHeight = 27
    end
    inherited Ne: TSpeedButton
      Height = 27
      ExplicitHeight = 27
    end
    inherited btBorrar: TBitBtn
      Height = 27
      DoubleBuffered = True
      ExplicitHeight = 27
    end
    inherited btSalir: TBitBtn
      Height = 27
      DoubleBuffered = True
      ExplicitHeight = 27
    end
    object ToolButton1: TToolButton
      Left = 557
      Top = 0
      Width = 17
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object spAgregarStock: TSpeedButton
      Left = 574
      Top = 0
      Width = 23
      Height = 27
      Action = AltaStock
    end
  end
  inherited Panel1: TPanel
    Top = 679
    Width = 960
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 506
    ExplicitWidth = 646
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 871
      ExplicitWidth = 871
    end
  end
  object pnAjuste: TPanel [3]
    Left = 779
    Top = 395
    Width = 173
    Height = 46
    TabOrder = 3
    object Label17: TLabel
      Left = 12
      Top = 4
      Width = 122
      Height = 13
      Caption = 'Ajuste de Stock Asociada'
    end
    object DBText1: TDBText
      Left = 12
      Top = 23
      Width = 122
      Height = 17
      DataField = 'MUESTRANROAJUSTE'
      DataSource = DSBase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = DBText1Click
    end
  end
  object lbIdOp: TPanel [4]
    Left = 8
    Top = 67
    Width = 118
    Height = 26
    BevelOuter = bvNone
    TabOrder = 4
    object Label3: TLabel
      Left = 2
      Top = 3
      Width = 85
      Height = 13
      Cursor = crHandPoint
      Caption = 'Nro.Cpbte OP (PI)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = Label3Click
    end
  end
  object ToolBar2: TToolBar [5]
    Left = 0
    Top = 0
    Width = 960
    Height = 19
    ButtonHeight = 21
    ButtonWidth = 94
    Caption = 'ToolBar2'
    Menu = MainMenu1
    ShowCaptions = True
    TabOrder = 5
    Transparent = True
    ExplicitWidth = 646
  end
  inherited ActionList1: TActionList
    Left = 888
    Top = 24
    object AltaStock: TAction
      Hint = 'Ingresar al Stock'
      ImageIndex = 10
      OnExecute = AltaStockExecute
    end
  end
  inherited DSBase: TDataSource
    DataSet = CDSDiario
    Left = 760
    Top = 16
  end
  inherited ImageList1: TImageList
    Left = 696
    Top = 32
    Bitmap = {
      494C01010B001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004490600055B0900066C0C00066C0C00055E0A00044C06000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006C6A6A006C6A6A0000000000000000006C6A6A006C6A6A00000000000000
      00000000000000000000000000000000000000000000DBDBDB24CECECE31E6E6
      E619F8F8F807FEFEFE0100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000560
      0900056009000891130009B0180009B31A0009B3190009B11900079614000568
      0C0005680C000000000000000000000000000000000000000000000000006C6A
      6A00AAA7A700A19F9F006C6A6A006C6A6A006C6A6A00E5E3E3006C6A6A006C6A
      6A006C6A6A000000000000000000000000000000000040B3D9FF0D89B2F2336C
      7FCC666666999191916EC0C0C03FE0E0E01FF4F4F40BFEFEFE01000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A6A15000A7F
      15000BB61C0009B91A0008B4180007B2160009B3190009B4190009B81A0009B9
      1A0007831000044D0600000000000000000000000000000000006C6A6A00DAD9
      D900A19F9F00A19F9F00A19F9F0037363600353535006C6D6D00BFBFBF00E1E2
      E200B7B6B6006C6A6A006C6A6A006C6A6A00FEFEFE0116A3D6FF8CDFFFFF72D8
      FFFF72D8FFFF41BDE9FF119BC9FB25718BDA5F5F5FA08383837CB3B3B34CDADA
      DA25F6F6F6090000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B6A15000F85220016BD
      340011B727000BB21C0007B1160008B1170009B2190009B2190009B2190009B4
      190009BA1A000784100006670C0000000000000000006C6A6A00D4D3D300CACA
      CA008E8C8C008E8C8C008E8C8C003C3B3B000A090A00070707000B0B0B000707
      07007A7A7A00BBBBBB006C6A6A0000000000FEFEFE0181D5FFFFE6F9FFFF7BE1
      FFFF7BE1FFFF7BE1FFFF7BE1FFFF7BE1FFFF7BE1FFFF5DCFF2FF20ACD9FF1B7A
      99E4A1A1A15EFEFEFE0100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B6A150020BE49001BBD
      400014B730000AB21F0028BC3600DFF5E100EEFAEF0063CE6D0009B2190009B2
      190009B3190009BA1A0006670C00000000006C6A6A00CACACA00CACACA008E8C
      8C00D7D4D400CECBCB00BFBCBC00B1AFAF00A3A0A000888686005E5B5C000707
      070009090900080808006C6A6A0076737300FEFEFE018DD9FFFFAFDFEFFF86EC
      FFFF86ECFFFF86ECFFFF86ECFFFF86ECFFFF86ECFFFF86ECFFFF86ECFFFF74D9
      FFFF545D60ABEDEDED1200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087210001B9A3A002AC65B001DBB
      45000EB425000BB31B0011B421009ADFA000FFFFFF00F7FDF8005ACB650009B2
      190009B2190009B81A0008941300045D09006C6A6A00CACACA008E8C8C00EFEE
      EE00FFFEFE00FBFAFA00E3E0E100DEDEDE00DEDDDD00CFCECE00BDBCBC00ADAB
      AB008B898900585656007A78780075737300FEFEFE0188D6FCFF28ABDBFF95F5
      FFFF8EF4FFFF8EF4FFFF8EF4FFFF8EF4FFFF8EF4FFFF8EF4FFFF8EF4FFFF78D9
      FFFF088DBAF7B2B2B24D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000087210002AB65B002CC5650022BD
      4D000FB422000AB21A000CB31C000AB219008DDB9500FDFEFD00F6FCF70058CB
      630009B2190009B51A0008AB1700045D09006C6A6A008E8C8C00FFFFFF00FEFC
      FC00FAFAFA00D5D4D50098919300A0989900B2ABAC00C4C0C100D7D7D700D8D8
      D800C7C6C600B7B6B600918F8F006C696900FEFEFE0197DCFEFF57C5F8FFDFFF
      FFFF98FEFFFF98FEFFFFACE3DFFF89E5F9FF98FEFFFF98FEFFFF98FEFFFF7DD9
      FFFFABF2F9FF6565659AF5F5F50A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F821C0037C26C0033C76C00CDF1
      DA00C9EFD300C7EED000C8EFD200C5EED000C7EECF00F8FDF900FFFFFF00F2FB
      F3006FD2790008B4190009B3190005650B00000000006C6A6A006C6A6A00EDEB
      EB00B1A6A7007A6F72008A83880096929500969091009D9798009A9395009E98
      9900BBBABA00D1D1D100C2C2C2006C6A6A00FEFEFE0190DCFFFF6BD1FFFF9FD9
      ECFFE0FFFFFFC2FFFFFFDEDBB9FFFFD1A2FF90EBF9FFA2F8FFFFA0D7DFFFFFCD
      9BFFD4FFFFFF1A7999E5C5C5C53A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000138D230058CC830042C97700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFEFD00FFFFFF00FFFF
      FF00BCEAC1000AB41A0009B31900066D0D000000000000000000000000006C6A
      6A00BB897F00A7876D008B6F64007D6760006F626500797379008F8B8E00A9A3
      A400CBCACA00C1C1C1006C6A6A0000000000F8F8F807A0E7FFFF7CE2FFFF7CE2
      FFFF7CE2FFFF4EC7ECFF39B3DFFFEFF9FCFFFFD8B1FFF8CE9FFFFFEAD6FFFFCC
      99FFE7FFFFFF90D9ECFF7474748BFAFAFA050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F911D006FD293005FD38D006DD4
      950072D6990071D6980072D6990064D28C0092DFA800FBFEFB00FFFFFF00ACE5
      B8002EBF4C0011B82B0008B1190005610A000000000000000000000000000000
      0000BD828100FFE3B400FFD39F00E9B28100C9997300BA916C00BD828100807D
      7E006C6A6A006C6A6A000000000000000000B7DDEA489DF1FFFF8BF1FFFF8BF1
      FFFF8BF1FFFF8BF1FFFF7EE3FFFFC6CFC6FF80CCE6FFBFE6F2FFFFFFFFFFF5F5
      F2FFFCFFFFFFFBFFFFFF3B7487C4E6E6E6190000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F911D0067CC83009BE5BA0038C6
      700030C3690038C56F0038C56F0070D69700E8F8EE00FFFFFF009FE2B10020BD
      48001AB93E0010BA290008A3170005610A000000000000000000000000000000
      0000BD828100FFE0B800FFD3A700FFD09D00FFCE9000FFC68800BD8281000000
      000000000000000000000000000000000000B8DEEB47ABFCFFFF99FFFFFF99FF
      FFFF98FEFFFFAFAF80FFF2B373FFFFD9B4FFFFD4A9FFFFF8F0FFFFE4CAFF5D71
      5DEE799FAC8675C1DB8A8FC8DB70FBFBFB040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025AE3900BCEDD20082DB
      A40028C063002FC2670053CD8200F7FDF900FFFFFF009CE2B20022BC4B001DBA
      410018B7360014C030000A85170000000000000000000000000000000000C086
      8300FFE7CF00FFE0C000FFD9B200FFD3A500FFD09900BD828100000000000000
      00000000000000000000000000000000000000000000E9FAFFFF99FFFFFF99FF
      FFFFACC69FFFFFF7F0FFFFFFFFFFFFEDDAFFFFCD9CFFFFE9D4FFFFF6EDFFFCCA
      97FF78522CD3ADADAD5200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000025AE390071D28C00D2F4
      E10080DAA30036C46D0039C56F00BCECCE00ABE6C2002DC2630024BE560023BC
      4D001FC1460016AE34000A85170000000000000000000000000000000000BD82
      8100FEEBD800FFE6CC00FFDEBD00FFD8B100FED3A400BD828100000000000000
      000000000000000000000000000000000000000000002EAAD4E0BDE5F2FFFDFE
      FFFFEAFEFFFF5EA0B7A1FAFAFA05EACAAA55FFE7D0FFFFDAB4FFE2A970FFF5E2
      CFFFFCEAD9FFABABAB54FEFEFE01000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000025AE390084D8
      9F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA7B0048CB780039CB
      6A0021B649000F7C1F0000000000000000000000000000000000BD828100FFFF
      F200FFFFF200FFEBD800FFE5CA00FFE1BD00F3C7A700BD828100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFEFE01000000000000000000000000F9EADBFFFFCE9CFF83766A95FDFD
      FD02FEFEFE010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000025AE
      390025AE3900ADE8C500CCF2DE00BAEDD100A6E7C20091E2B30064D492002FB1
      57002FB157000000000000000000000000000000000000000000BD828100BD82
      8100BD828100FBEFE200FBE3CF00FBDDC200BD82810000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DF9F60FFF5C08AFFB2B2B24D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000032B74E0025AE390025AE390025AE390025AE390024A342000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD828100BD828100BD8281000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D9924DB2D67D24FFE7E7E7180000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000001079F000313A9000418AE000419AE000313A9000108A0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007D2C05006B250800521E1500551F13006D2607007E2D05000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000521E15006B2508007D2C05007E2D05006D260700551F13000000
      0000000000000000000000000000000000000000000000000000006600000066
      0000B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B000066
      0000006600000000000000000000000000000000000000000000000000000104
      9D00041CB1000730C0000734C4000735C5000735C5000734C3000731C100041F
      B30001069E000000000000000000000000000000000000000000000000008932
      040055211700BF5C1500E1985500EFBD8A00F0BF8C00E29D5B00C2621800541F
      1600903503000000000000000000000000000000000000000000000000005521
      170089320400BF5C1500E1985500EFBD8A00F0BF8C00E29D5B00C26218009035
      0300541F16000000000000000000000000000000000000660000009900000099
      0000E5DEDF000066000000660000E4E7E700E0E3E600D9DFE000CCC9CC000066
      0000037D030000660000000000000000000000000000000000000109A100052B
      C3000735C7000733C2000732C2000732C2000732C2000732C2000733C3000735
      C400062DBE00020CA400000000000000000000000000000000006C290E00AF47
      0400EBB17900FFFEF800FEF8F400F2DAC400F2D9C200FCF6F000FFFFFC00EEBA
      8700B64E070060231100000000000000000000000000000000006C290E00AF47
      0400EBB17900FFFEF800FEF8F400F2DAC400F2D9C200FCF6F000FFFFFC00EEBA
      8700B64E07006023110000000000000000000000000000660000009900000099
      0000E9E2E2000066000000660000E2E1E300E2E6E800DDE2E400CFCCCF000066
      0000037D03000066000000000000000000000000000001049B00052BCA000636
      D8000431CD000027C400032EC1000732C2000732C2000430C1000027BF00042F
      C1000735C400072EBE0001069E000000000000000000732D0D00B0460200F4D0
      AB00FFFFFE00D4884600BD4E0400BA470000BA460000C0530700D4844200FCF8
      F300F8DDBD00B64D0500903502000000000000000000732D0D00B0460200F4D0
      AB00FFFEFE00D78C4E00C0540900BA460000BA460000BD4F0400D07E3900FCF8
      F400F8DDBD00B64D0500541F1600000000000000000000660000009900000099
      0000ECE4E4000066000000660000DFDDDF00E1E6E800E0E5E700D3D0D2000066
      0000037D030000660000000000000000000000000000031ABA000537E7000331
      DD00123DD8006480E0001840CB00002CC100022DC0000F38C4006580D9001B43
      C700052FC1000735C500051FB30000000000000000009A380000E6AB7200FFFF
      FF00CC732800C9682000CE752A00BB480000BC4B0000B8430000B8420000CA6C
      1F00FCF8F400EFBC8800541F160000000000000000009A380000E6AB7200FFFF
      FF00CF762D00B8410000BA430000BC4A0000BB470000C6631500CE753100C96B
      1F00FCF8F400EFBC880090350200000000000000000000660000009900000099
      0000EFE6E600EDE5E500E5DEDF00E0DDDF00DFE0E200E0E1E300D6D0D2000066
      0000037D030000660000000000000000000001049E000430E4000436F100002A
      E4005070E900FFFFFF00B7C4F1000D36CA00042DC300A2B2E800FFFFFF006984
      DA000026BE000733C3000731C1000108A000A9440300C05C1100FFFCFA00E1A3
      6A00BF480000EECBA900F0D5BA00BD4A0000B8420000CA6C2000E9BD9300BA46
      0000D4884300FFFFFF00C16016007B2C040089340600C05C1100FFFCFA00E1A3
      6A00C04C0000FFFFFF00D3803800BC470000B8420000DC995E00FFFFFF00B843
      0000D4874300FFFFFF00C1601600551F13000000000000660000009900000099
      0000009900000099000000990000009900000099000000990000009900000099
      000000990000006600000000000000000000020FAF000336FA000335F8000232
      EE000A35E8008CA2F200FFFFFF00B4C2F100A9B8ED00FFFFFF00A7B7E900133A
      C400052FC1000732C2000734C4000313AA009A3B0200DD955400FFFFFF00D376
      2800CC600E00EFCBA900F0D3B400C2510100D5864100FAF2E900F7E7D900BC4B
      0000BF510300FCF8F300E29D5A006D2607009A3B0200DD955400FFFFFF00D376
      2800CC600D00FFFFFF00FFFFFF00DC955400BC450000DA965800FFFFFF00BC4B
      0000BF510300FCF8F300E29D5A006D260700000000000066000000990000B1D0
      B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0
      B100009900000066000000000000000000000619BC001747FE00093AFC000435
      F8000131F000002BE80091A5F400FFFFFF00FFFFFF00ABBAEF00062FC500022D
      C0000732C2000732C2000736C5000419AE0089340600EBBB8A00FBF0E700D87A
      2B00D7742200F3D1B000F2D1B400E6AC7600FFFFFF00FFFFFF00F3DEC700BD4D
      0100BA450000F2DAC200EFC08E00551F1300A9440300EBBB8A00FBF0E700D87A
      2B00D7742200FFFFFF00FFFFFF00FFFFFF00E5AF7B00E0A16800FFFFFF00BD4D
      0100BA450000F2DAC200EFC08E007D2C0400000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900009900000066000000000000000000000B1DBE004168FE001C49FC000335
      FB000031F9000531F200A4B5F700FFFFFF00FFFFFF00B9C6F2000D36D000002C
      C6000732C2000732C2000736C5000418AD00AD450200EEBF9000FCF4EB00E28A
      3E00E1843500F6D8B800F3D7BA00E5A36500FCF3EB00FFFFFF00F3DEC900BD4D
      0100BA460000F3DEC700EFBD8A00521F1600B04A0600EEBF9000FCF4EB00E28A
      3E00E1843500FFFFFF00FFFFFF00FFFFFF00EDC59E00E5AA7500FFFFFF00BD4D
      0100BA460000F3DEC700EFBD8A007B2C0400000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900009900000066000000000000000000000613B4005B7CFC00486CFD000133
      FB00113CFB00A1B4FE00FFFFFF00A4B6F80092A7F500FFFFFF00B6C4F2001A41
      D300042FC8000732C4000734C3000212A900B0490500E9AA6E00FFFFFF00EDA4
      6200EA954700F8DEC200F7DEC600D9742100DC883F00F7E3D100F7EADC00BC4B
      0000C0540500FEFBF800E09752006B240800B0490500E9AA6E00FFFFFF00EDA4
      6200EA934600FFFFFF00FFFFFF00EDBA8800D0671300E3A66D00FFFFFF00BC4B
      0000C0540500FEFBF800E09752006B240800000000000066000000990000F9F9
      F900CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00F9F9
      F900009900000066000000000000000000000003A0004A6AF3008FA6FF001F46
      FB004C6FFC00FFFFFF00A7B8FE000733F600002AED008CA2F600FFFFFF00627F
      E7000028D0000734CC000730C30000069F00B04A0600DD893F00FFFCF800FAD7
      B400F4A35900FCE6D000F8E3CE00E1843500D7722000D3752700E3AC7800BB47
      0000D9935400FFFFFE00BD5A10007B2C0400AD450200DD893F00FFFCF800FAD7
      B400F4A55B00FFFFFF00F0BB8700DE813000D56E1D00E7AF7A00FFFFFF00BA44
      0000D9935300FFFFFE00BD5A1000521F1600000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F90000990000006600000000000000000000000000001A2FCB0099AFFF008BA2
      FE00214DFB004D71FC000E3DFB000030FB000031F7000636F1004C6EF100103C
      E3000432DB000636D700041CB5000000000000000000C9651800F8CEA500FFFF
      FF00FED0A300F8BA7F00EFAD7000E2883B00D9792A00CE651200C04C0000D07A
      3100FFFFFF00EAAF7300501F18000000000000000000C9651800F8CEA500FFFF
      FF00FED1A600F6A96300EB964800E2893C00D8772600D77B2E00D1782D00D07A
      3200FFFFFF00EAAF73008931030000000000000000000066000000990000F9F9
      F900CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00F9F9
      F90000990000006600000000000000000000000000000004A000415EEC00B8C7
      FF009CAFFD003A5CFC000A3AFB000335FB000335FB000133F900052FF2000635
      EB000537E900052CCD0000049C000000000000000000B2470100E0873B00FEE5
      CB00FFFFFF00FAD3AC00EDA15C00E28B3F00D97B2D00D4782A00E1A46B00FFFF
      FF00F3CCA400AC440200893103000000000000000000B2470100E0873B00FEE5
      CB00FFFFFF00FAD5B100EDA56300E28B3F00D97B2D00D3752600DE9D6200FFFF
      FF00F3CCA400AC440200501F180000000000000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F9000099000000660000000000000000000000000000000000000309A5004260
      EC00A9BBFF00BDCAFF008EA5FE006483FD005073FC004A6EFD003961FD001444
      F900042CD7000109A20000000000000000000000000000000000B64C0400DE87
      3B00F8CEA300FFFAF300FFFFFF00FEF6EE00FCF3EA00FFFFFF00FEF7EE00E6A5
      6A00AC4403005A22140000000000000000000000000000000000B64C0400DE87
      3B00F8CEA300FFFAF300FFFFFF00FEF6EE00FCF3EA00FFFFFF00FEF7EE00E6A5
      6A00AC4403005A2214000000000000000000000000000000000000660000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900006600000000000000000000000000000000000000000000000000000004
      A0001E32CD005876F600859EFE008BA3FF007994FE005376FC00234AF000051E
      C50001049C00000000000000000000000000000000000000000000000000AF45
      0100C5641800DC884000E9A76C00EEBB8900EBB58100DC914D00BD590F005D23
      150090340200000000000000000000000000000000000000000000000000AF45
      0100C5641800DC884000E9A76C00EEBB8900EBB58100DC914D00BD590F009034
      02005D2315000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000004A0000917B6001022C3000D1FC2000311B40001059F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A3410300A5450700A64608009E4006008B350500752D0C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A3410300A5450700A64608009E4006008B350500752D0C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006D7C94006F7C88000000000000000000000000000000
      0000000000000000000000000000000000000000000008750D0008750D000875
      0D0008750D000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000099330000993300009933
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000D7FA9000E80
      AA000D7FA9000E80AA000E80AA001081AB000000000000000000000000000000
      000000000000788295001F89E00059A9DC0000000000000000000E80AA000E80
      AA000E80AA000E80AA000E80AA000E80AA000000000008750D0013AA220010A6
      1D0008750D0000000000000000000000000000000000000000000E80AA000E80
      AA000E80AA000E80AA0099330000FDFEFE00FDFEFE00FDFEFE008EA4FD00B8C6
      FD00FDFEFE009933000000000000000000000000000000000000000000000D80
      AA000D80AA000D80AA000D80AA000D80AA000D80AA0000000000000000000000
      00000000000000000000000000000000000000000000048CB90048D5EE0022D7
      FC0035D8FD006FE6FF008DE6FA0044BADD000E80AA0000000000000000000000
      0000788295002087DE004EB7FF0057AEF40000000000078DBB0049D5EE0023D7
      FE0036D8FD006FE6FF008DE7FA0044BADD000E80AA0008750D001AB12D0013AA
      220008750D0000000000000000000000000000000000078DBB0049D5EE0023D7
      FE0036D9FE006FE6FF0099330000FDFEFE00FDFEFE007E98FC000335FB00597A
      FC00FDFEFE009933000000000000000000000000000000000000078DBB0049D5
      EE0023D6FD0036D9FE006FE6FF008DE7FA0044BADD000D80AA00000000000000
      000000000000000000000000000000000000048CB9008CFAFD0058E9FD0022D7
      FC0035D8FD0070E6FF008DE6FA004ABFE0000F9DCE001180A700000000008B86
      97001F7ECE004EB7FF0057AEF40000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF0008750D0008750D0008750D0008750D0025BD3E001CB4
      310008750D0008750D0008750D0008750D00078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF0099330000D6DEFE004368FC000335FB004368FC000335
      FB00D9E0FE0099330000000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0035D3F70000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A000000000000000000088EBC008CFAFD0058E9FD0022D7
      FC0035D8FD0075D3E900B1979400C2A69A00C6AEA000AE877C008C6B6C006092
      BD004EB7FF004EB7FF000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF0008750D003CD4620035CE590030C952002CC3490026BE
      410025BD3E001AB12D0017AF2A0008750D00078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF00993300005274FC001442FB00BCC9FD00EFF2FE001A47
      FB004F72FC0097330400000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0035D3F70000009A003E6EFF00285BFF001248FF000236FF000029
      F900001DEC0000009A000000000000000000088EBC008CFAFD0058E9FD0024D8
      FD0046C6E400AB939500ECDDCC00FEFED600FFFFE400F7F2D900CFB7A100AD85
      80004EB7FF00000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF0008750D0041DA6D0041DA6D0038D15E0035CE59002CC3
      49002AC1470025BD3E0020B8360008750D00078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF0099330000E4EAFE00D9E0FE00FDFEFE00FDFEFE0098AC
      FD000335FB0064345900000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0035D4F80000009A004474FF003264FF001B50FF00083CFF000029
      F9000022F10000009A000000000000000000048CB900B4FFFF00B6F6FF00C6F5
      FF00B5A09F00E8DDD600FFFFF400FEFED600FFFEDD00FEFED600FFF2BA00CAA0
      8C0000000000000000000000000000000000078DBB00B3FCFE00B6F6FF00C6F5
      FF00E3FAFF00E9F9FD0008750D0008750D0008750D0008750D003FD868003CD4
      620008750D0008750D0008750D0008750D00078DBB00B3FCFE00B6F6FF00C6F5
      FF00E3FAFF00EBFBFF0099330000FDFEFE00FDFEFE00FDFEFE00FDFEFE00FDFE
      FE005274FC000335FB00000000000000000000000000078DBB00B3FCFE00B6F6
      FF00C6F5FF00E1F8FD0000009A0000009A0000009A0000009A0000009A000000
      9A0000009A0000009A000000000000000000048CB900B8EDF60030BCDC0011A7
      D1009C919000FFFFE400FFFEDD00FEFED600FFFEDD00FCF5CD00F8D09800ECD1
      AC00AD858000000000000000000000000000078DBB00BAEEF60030BCDD0011A7
      D200129FCB0020A1CA0035A7CD002692BF0092CEE40008750D0045DD710041DA
      6D0008750D00000000000000000000000000078DBB00BAEEF60030BCDD0011A7
      D200129FCB0020A2CB0099330000993300009933000099330000993300009933
      00008F3311002235C8000335FB000000000000000000078DBB00BAEEF60030BC
      DD0011A7D200129ECA0020A2CB0035A7CD002692BF0092CEE4000D80AA000000
      000000000000000000000000000000000000088EBC004BC6DC0058E9FD0022D7
      FC00A49E9900FFFEDD00FFFEDD00FFFEDD00FFFEDD00F6DAAB00F3BE8000F5DE
      B500AD858000000000000000000000000000078DBB004AC5DD0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E3000682B60008750D004DE67F004DE6
      7F0008750D00000000000000000000000000078DBB004AC5DD0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E3000682B6000E80AA00000000000000
      000000000000000000000335FB000335FB0000000000078DBB004AC5DD0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E3000682B6000D80AA000000
      000000000000000000000000000000000000048CB9008CFAFD0058E9FD0024D8
      FD0096959400FAF6D600FFFEDD00FAF6D600F9E1B100F5CB9A00FEEAB900E4CC
      A900AD858000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE0008750D0008750D000875
      0D0008750D00000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80AA00000000000000
      00000000000000000000000000000335FB0000000000078DBB008CFBFE0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089DCF000D80AA000000
      000000000000000000000000000000000000048CB9008CFAFD0058E9FD0024D8
      FD005EA8BE00D3BBA200FFF7C600F8D09800F4C88E00FEF7E000F9F6F200AD85
      800000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE000E7FA900000000000000
      000000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80AA00000000000000
      00000000000000000000000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089DCF000D80AA000000
      000000000000000000000000000000000000048CB9008CFAFD0058E9FD0024D8
      FD0039D7FB008AA5AD00CDAC9300ECD1AC00F5E1B600DAC5B700AD858000AD85
      800000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D8FD006FE6FF008DE7FA0049C1E300089CCE000E80AA00000000000000
      000000000000000000000000000000000000078DBB008CFBFE0059EAFE0023D7
      FE0036D9FE006FE6FF008DE7FA0049C1E300089DCF000E80AA00000000000000
      00000000000000000000000000000000000000000000078DBB008CFBFE0059EA
      FE0023D6FD0036D9FE006FE6FF008DE7FA0049C1E300089DCF000D80AA000000
      000000000000000000000000000000000000088EBC008CFAFD0081F8FE0071F9
      FE007BFFFF0097FCFD00A1C6C8008F989B008683880087707000000000000000
      000000000000000000000000000000000000078DBB0091FCFE0082F8FF006FF8
      FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000E80AA00000000000000
      000000000000000000000000000000000000078DBB0091FCFE0082F8FF006FF8
      FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000E80AA00000000000000
      00000000000000000000000000000000000000000000078DBB0091FCFE0082F8
      FF006FF8FF007AFEFF0091FCFE00A0FCFE0063DAF5000DA2D4000D80AA000000
      000000000000000000000000000000000000048CB900FBFFFF00F5FFFE00D2FF
      FF00B4FFFF00ADFFFE00ADFFFE00ADFFFE0071F9FE000E80AA00000000000000
      000000000000000000000000000000000000078DBB00FCFFFF00F4FFFF00D3FF
      FF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000E80AA00000000000000
      000000000000000000000000000000000000078DBB00FDFEFE00F4FFFF00D3FF
      FF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000E80AA00000000000000
      00000000000000000000000000000000000000000000078DBB00FCFFFF00F4FF
      FF00D3FFFF00B3FCFE00B3FCFE00ADFFFF00ADFFFF006FF8FF000D80AA000000
      000000000000000000000000000000000000000000000A91C100F5FFFE00E3FE
      FF00C6FEFF00ADFFFE00A7FFFF009BFBFD001285B00000000000000000000000
      000000000000000000000000000000000000000000000C92C000F4FFFF00E3FA
      FF00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF0000000000000000000000
      000000000000000000000000000000000000000000000C92C000F4FFFF00E3FA
      FF00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF0000000000000000000000
      00000000000000000000000000000000000000000000000000000C92C000F4FF
      FF00E1F8FD00C7FFFF00ADFFFF00A0FCFE009BFBFC001385AF00000000000000
      0000000000000000000000000000000000000000000000000000088EBC00088E
      BC00048CB900088EBC00088EBC00088EBC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000078DBB00078D
      BB00078DBB00078DBB00078DBB00078DBB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000078DBB00078D
      BB00078DBB00078DBB00078DBB00078DBB000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000078D
      BB00078DBB00078DBB00078DBB00078DBB00078DBB0000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00F81FF33F83FF0000E007E007803F0000
      C003C00000070000800180010003000080010000000300000000000000030000
      000000000001000000008000000100000000E001000000000000F00300000000
      0000F01F000000008001E03F800300008001E03F80010000C003C03FF7070000
      E007C07FFF1F0000F81FF8FFFF1F0000FFFFF81FF81FF81FC007E007E007E007
      8003C003C003C003800380018001800180038001800180018003000000000000
      8003000000000000800300000000000080030000000000008003000000000000
      8003000000000000800380018001800180038001800180018003C003C003C003
      C007E007E007E007FFFFF81FF81FF81FFFFCFF87FC03FFFFC0F8C087C003E07F
      807080078003C03F002100000003800300030000000380030007000000038003
      000F000000038003000700070001801F00070007003C801F00070007003E801F
      000F003F003F801F000F003F003F801F003F003F003F801F003F003F003F801F
      807F807F807FC03FC0FFC0FFC0FFE07F00000000000000000000000000000000
      000000000000}
  end
  inherited JvFormStorage: TJvFormStorage
    Left = 728
    Top = 440
  end
  inherited QBrowse: TSQLQuery
    Left = 808
    Top = 648
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 16
    Top = 576
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 832
    Top = 456
  end
  inherited ComBuscadorBase: TComBuscador
    Data = QBuscador
    Campo = 'ID'
    Titulo = 'Diarios'
    Left = 400
    Top = 136
  end
  inherited QBrowse2: TFDQuery
    Left = 0
    Top = 448
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 176
    Top = 400
  end
  inherited ImageListDos: TImageList
    Left = 728
    Top = 16
    Bitmap = {
      494C01010B001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFD
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000769C5EFF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF769C5EFF769C5EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D3B09500F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000B8805400FFFEFE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0A78800F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00D29C7200FEFDFD00000000000000000000000000000000000000
      000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFA2C797FFA2C797FFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C99B7800F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00DAA27700FCFAF8000000000000000000000000000000
      000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFB1D4ABFF799F62FF799F62FFB1D4ABFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6947100F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00DDA47700FAF6F30000000000000000000000
      000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBADDB6FF82A76EFF769C5EFF769C5EFF82A76EFFBADDB6FFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C3906800F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00E3AA7F00F6EFEA00000000000000
      000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF8FB47EFF769C5EFF769C5EFF769C5EFF769C5EFF8FB47FFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C28D6500F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00E6AC8000F3E9E0000000
      000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFF769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C28B6400F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00EAB08500ECDE
      D20000000000000000000000000000000000769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFF769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7D1
      C300ECB38700F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00C48E
      650000000000000000000000000000000000769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EEDED400E9AF8400F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00C28C63000000
      000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBCDFB8FF95BA87FF7AA064FF7AA064FF96BA87FFBBDFB8FFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F1E8DF00E6AE8200F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00C28C6500000000000000
      000000000000000000000000000000000000769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF94B884FF83AB71FF9AC593FF99C593FF83AA71FF94B985FFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7EFEA00E4AA7D00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00C4906B0000000000000000000000
      000000000000000000000000000000000000769C5EFF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF99C593FF9EC999FF9EC999FF99C493FF769C5EFF769C
      5EFF769C5EFF769C5EFF769C5EFF769C5EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F5F100E0A67C00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00C4936E000000000000000000000000000000
      000000000000000000000000000000000000628050CDA4C899FFADD4A9FF9EC9
      99FF9EC999FF9EC999FF9EC999FF9EC999FF9EC999FF9EC999FF9EC999FF9EC9
      99FF9EC999FFADD4A9FFA4C89AFF628050CD0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCF9F900DAA37900F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00C99B7800000000000000000000000000000000000000
      00000000000000000000000000000000000000000000779C64F4BADEB7FFA0CA
      9BFF9EC999FF9EC999FF9EC999FF9EC999FF9EC999FF9EC999FF9EC999FF9EC9
      99FFA0CA9BFFBADEB7FF789D64F3000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFC00D7A07500F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00CEA3840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000627E50CAA2C697FFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFA1C697FF627E50CA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFEFE00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000D6B69C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000769C5EFF769C
      5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000766A5DC0918171EB000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005D794CC071955CF0769C5EFF71955CF05D794CC0000000000000
      0000000000000000000000000000000000000000000000000000000000009C8B
      78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B78FF00000000000000000000000000000000A1758BFFA1758BFFA175
      8BFFA1758BFFA1758BFFA1758BFFA1758BFFA1758BFFA1758BFFA1758BFFA175
      8BFFA1758BFFA1758BFFA1758BFF00000000918171EBAD9D8AFD948573EF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006686
      54D77EA26BF3A4C899FFB4D8AEFFBDDFBAFFB4D8AEFFA4C89AFF7DA26AF36585
      52D5000000000000000000000000000000000000000000000000000000009C8B
      78FFFFFFFFFF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FFFFFF
      FFFF9C8B78FF00000000000000000000000000000000A1758BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF2D5DCFFF2D5DCFFA1758BFF0000000000000000958573F2A79884FD907F
      6DE7000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000070945CF09EC1
      93FCBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFF9EC0
      91FB70945BF00000000000000000000000007C6A59DA8C7767F28C7866F19C8B
      78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B78FF8C7866F18C7767F27D6A59D900000000A1758BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFFF
      FFFFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000958473EFA292
      7FFD8D7D6BE10000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000678955DB9CC190FDBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF99BE8CFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFF9BBF90FC678754D900000000000000008F7966FFD4C1B0FFD4C1B0FF9C8B
      78FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3D6FFEDE3
      D6FF9C8B78FFD4C1B0FFD4C1B0FF8F7966FF00000000A1758BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000000000009082
      6FEA9F8F7DFD877768D90000000000000000897A69D89A8977FB9A8977FB887A
      69D700000000000000000000000000000000000000007DA16AF3BDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBCE0B9FF7DA169F300000000000000008F7966FFD4C1B0FFBBA795FF8F79
      66FF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FF8F79
      66FF8F7A66FFBBA896FFD4C1B0FF8F7966FF00000000A1758BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFFF
      FFFFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000000000000000
      00008C7D6BE19C8B78FF9E8C7AF9B09F8AF3E7D5BCFFFCEACEFFFCEACEFFE7D5
      BBFFAD9D89F2897B6AD900000000000000005C794AC1A5C99BFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFA4C89AFF5A774BBE000000008F7966FFD4C1B0FFD4C1B0FFD4C1
      B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1B0FFD4C1
      B0FFD4C1B0FFD4C1B0FFD4C1B0FF8F7966FF00000000A1758BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000000000000000
      0000000000009E8D7AFBCDBAA4FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFC9B7A2FC897B6ADA0000000072955BF1B6D9B1FFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFB5D9B0FF72955AEF000000008F7966FFD4C1B0FFD4C1B0FFCBAB
      93FFBA8157FFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFBA81
      57FFCBAC94FFD4C1B0FFD4C1B0FF8F7966FF00000000A1758BFFF2D5DCFFF2D5
      DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000000000000000
      000000000000AF9F89F6FFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFAE9D88F400000000749B5DFCBCDFB8FFBDE0BAFF99BE
      8CFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF99BE
      8CFFBDE0BAFFBBDEB8FF759A5CFB000000008F7966FFD4C1B0FFD4C1B0FFBA81
      57FFE3A97CFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFE2A9
      7CFFB98258FFD4C1B0FFD4C1B0FF8F7966FF00000000A1758BFFF2D5DCFFF2D5
      DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5
      DCFFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000000000000000
      00008A7C6BD9E7D5BBFFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFE6D5BBFF887969D672955BF1B6D9B1FFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFB5D9B0FF72955AEF000000008F7966FFD4C1B0FFD4C1B0FFB57A
      4EFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
      8BFFB57A4EFFB3E0E6FFD4C1B0FF8F7966FF00000000A1758BFFF2D5DCFFF2D5
      DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5DCFFF2D5
      DCFFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000000000000000
      00009A8977F9FBE9CDFFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFFAE8CCFF998976F85E794CC2A5C99BFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFA4C89AFF5B794CC0000000008E7865FED3C0AFFFD4C1B0FFB57A
      4EFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
      8BFFB57A4EFFD4C1B0FFD3C0AFFF8E7865FE00000000A1758BFFF2D5DCFFF2D5
      DCFFE9C0CBFFA48B7EFF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FFA791
      83FFF2D5DCFFF2D5DCFFA1758BFF000000000000000000000000000000000000
      00009A8977F9FBE9CDFFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFFAE8CCFF998976F8000000007EA16BF3BDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF7CA16AF300000000000000006C5D4EBE8F7865FE8F7966FFB57A
      4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A
      4EFFB57A4EFF8F7966FF8F7865FE6B5C4EBC00000000A1758BFFF2D5DCFFF2D5
      DCFFE6BAC6FF8F7966FFF2EBE1FFF2EBE1FFF2EBE1FF9C8B78FFF2EBE1FF8F79
      66FFF2D5DCFFEACCD4FFA1758BFF000000000000000000000000000000000000
      0000897C6CD9E7D5BBFFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFE6D5BBFF877969D600000000678955DB9EC393FDBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF99BE8CFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFF9EC192FC678754D900000000000000000000000000000000000000009C8B
      78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B78FF00000000000000000000000000000000A1758BFFF2D5DCFFF2D5
      DCFFE6BAC6FF8F7966FFF2EBE1FFF2EBE1FFF2EBE1FF9C8B78FFF2EBE1FF8F79
      66FFEBCDD5FFA57E8FF457404B86000000000000000000000000000000000000
      000000000000AF9E8AF5FFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFFFEDD1FFAE9D88F400000000000000000000000070945CF09EC1
      93FCBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFF9EC0
      91FB70945BF00000000000000000000000000000000000000000000000009C8B
      78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B78FF00000000000000000000000000000000A1758BFFF2D5DCFFF2D5
      DCFFE6BAC6FF8F7966FFF2EBE1FFF2EBE1FFF2EBE1FFF2EBE1FFF2EBE1FF8F79
      66FFA47C8FF60000000000000000000000000000000000000000000000000000
      0000000000008C7C6ADDCEBCA6FCFFEDD1FFFFEDD1FFFFEDD1FFFFEDD1FFFFED
      D1FFFFEDD1FFCDBBA6FC897B6ADA000000000000000000000000000000006686
      54D77EA26BF3A5CA9CFFB7DAB2FFB8DBB4FFB7DAB2FFA6C99CFF7DA26AF36585
      52D5000000000000000000000000000000000000000000000000000000009C8B
      78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9C8B78FF00000000000000000000000000000000A1758BFFA1758BFFA175
      8BFFA1758BFF977E73FF8F7966FF8F7966FF8F7966FF8F7966FF8F7966FF987D
      74FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000897B6ADAB1A08BF4E7D5BCFFF8E6CBFFF8E6CBFFE7D5
      BBFFB19F8AF4897B6AD900000000000000000000000000000000000000000000
      0000000000005D794CC071945CED73995DF671945CED5D794CC0000000000000
      0000000000000000000000000000000000000000000000000000000000009C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000897C6BD9988976F5988976F58A7A
      69D8000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFC496
      74FFC49674FFC49674FFC49674FFC49674FFC49674FFC49674FFC49674FFC496
      74FFC49674FFC49674FF00000000000000000000000000000000000000000000
      000000000000363698C04141BDF04343C7FF4141BDF0363698C0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000464B4BED414D4FD40000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFC49674FF00000000000000000000000000000000000000003B3B
      AAD74F4FC7F37575E6FF8686F1FF8F8FF7FF8686F1FF7474E6FF4F4FC7F33C3C
      A8D5000000000000000000000000000000000000000000000000000000002A2A
      6F89333382A10000000000000000000000000000000000000000000000003232
      84A22A2A6F8900000000000000000000000000000000414A4ED2555553FF66A0
      BDF74B8AA6E60000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFE3C29DFF000000000000000000000000000000004141BDF06E6E
      E1FC8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF6E6E
      E0FB4141BCF00000000000000000000000000000000000000000292967806C6C
      D5ED7575DEF12E2E7895000000000000000000000000000000002E2E78957474
      DFF26D6DD5EC292967800000000000000000000000000000000068A2C3F46EBC
      DFFF7CCAE2FF63AFC8FA00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFFFE8C2FF0000000000000000000000003C3CACDB6D6DE0FD8F8F
      F7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
      F7FF6B6BE0FC3C3CABD90000000000000000000000000000000030307E9A7979
      E1F58F8FF7FF7A7AE2F532327F9C00000000000000003333809D7A7AE2F58F8F
      F7FF7676E0F430307B98000000000000000000000000000000004E8BA7E580CD
      E5FFA3EEFFFFA1ECFEFF569BB1D9000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFDAB188FFFFE8C2FF0000000000000000000000004E4EC7F38F8FF7FF8F8F
      F7FFA8A8F9FFACACF9FF8F8FF7FF8F8FF7FF8F8FF7FFACACF9FFA8A8F9FF8F8F
      F7FF8E8EF7FF4D4DC7F300000000000000000000000000000000000000003232
      7F9C7979E3F78F8FF7FF7676DFF22E2E78952E2E78957676DFF28F8FF7FF7979
      E3F732327F9C00000000000000000000000000000000000000000000000066B1
      CCF9A2EEFFFFA3EEFFFFA1EBFDFF5598AFD70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFB57A4EFFDAB188FF0000000000000000353598C17676E7FF8F8FF7FF8F8F
      F7FFACACF9FFF6F6FEFFACACF9FF8F8FF7FFACACF9FFF6F6FEFFACACF9FF8F8F
      F7FF8F8FF7FF7474E6FF353597BE000000000000000000000000000000000000
      000031317B977777E1F48F8FF7FF7878E2F67B7BE3F68F8FF7FF7777E0F43030
      7A96000000000000000000000000000000000000000000000000000000000000
      00005CA2B7DBA2EEFFFFA3EEFFFFA1EBFDFF5598AFD700000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFB57A4EFFB57A4EFF61412A88000000004242BDF18888F3FF8F8FF7FF8F8F
      F7FF8F8FF7FFB1B1F9FFF6F6FEFFBCBCFAFFF7F7FEFFB1B1F9FF8F8FF7FF8F8F
      F7FF8F8FF7FF8787F2FF4141BDEF000000000000000000000000000000000000
      00000000000031317B977777E0F48F8FF7FF8F8FF7FF7777E0F430307A960000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005EA3B8DCA2EEFFFFA3EEFFFFA1EBFDFF5598AFD7000000000000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A
      4EFFB57A4EFFB57A4EFFB57A4EFF61412A884343C4FC8E8EF6FF8F8FF7FF8F8F
      F7FF8F8FF7FF8F8FF7FFC3C3FAFFFEFEFFFFC2C2FBFF8F8FF7FF8F8FF7FF8F8F
      F7FF8F8FF7FF8D8DF5FF4242C4FB000000000000000000000000000000000000
      000000000000323284A27979E1F58F8FF7FF8F8FF7FF7979E1F5333382A10000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005EA3B8DCA2EEFFFFA3EEFFFFA1EBFDFF5598AFD70000
      0000000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A
      4EFFB57A4EFFB57A4EFFB57A4EFF000000004242BDF18888F3FF8F8FF7FF8F8F
      F7FF8F8FF7FFA8A8F9FFF6F6FEFFC9C9FBFFF6F6FEFFA8A8F9FF8F8FF7FF8F8F
      F7FF8F8FF7FF8787F2FF4141BDEF000000000000000000000000000000000000
      0000333384A37A7AE4F78F8FF7FF7878E2F67B7BE3F68F8FF7FF7979E3F73333
      82A1000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005EA3B8DCA2EEFFFFA3EEFFFFA1EBFDFF839A
      9AED000000000000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFB57A4EFFB57A4EFF5A3D278000000000363699C27676E7FF8F8FF7FF8F8F
      F7FFACACF9FFF6F6FEFFACACF9FF8F8FF7FFACACF9FFF6F6FEFFACACF9FF8F8F
      F7FF8F8FF7FF7474E6FF363698C0000000000000000000000000000000003030
      7F9C7777E0F48F8FF7FF7A7AE5F83434819C353583A07C7CE7F98F8FF7FF7777
      E0F431317D9B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005DA3BADDA2EEFFFFA9C2C1FFD2C8
      BAFFA9A69BF90000000000000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFB57A4EFFDAB188FF0000000000000000000000004E4EC7F38F8FF7FF8F8F
      F7FFA8A8F9FFACACF9FF8F8FF7FF8F8FF7FF8F8FF7FFACACF9FFA8A8F9FF8F8F
      F7FF8F8FF7FF4E4EC6F30000000000000000000000000000000032327F9C7878
      E1F68F8FF7FF7A7AE2F530307B98000000000000000033337E997A7AE2F58F8F
      F7FF7777E2F632327E9A00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000869B9EEFDACEC1FFF5E7
      D9FFF4E6D7FFA69D97FD00000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFDCB58BFFFFE8C2FF0000000000000000000000003C3CACDB7070E2FD8F8F
      F7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
      F7FF6D6DE0FC3C3CABD9000000000000000000000000000000002F2F76917676
      DFF37D7DE7F83434829E000000000000000000000000000000003535829F7D7D
      E7F87676DFF32F2F769100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B3AFA4FBF5E7
      D8FFDACEC2FFA097BAFF4545A7CA000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFFFE8C2FF000000000000000000000000000000004141BDF06E6E
      E1FC8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF6E6E
      E0FB4141BCF00000000000000000000000000000000000000000000000000000
      000030307A960000000000000000000000000000000000000000000000003030
      7A96000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A69F
      9AFC9F96BFFF8F8FF7FF4F4FB6D6000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFE2BF9BFF00000000000000000000000000000000000000003B3B
      AAD74F4FC7F37676E8FF8989F4FF8989F4FF8989F4FF7676E8FF4F4FC7F33C3C
      A8D5000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004646AACB5252B7D600000000000000000000000000000000C49674FFFFE8
      C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8C2FFFFE8
      C2FFFFE8C2FFC49674FF00000000000000000000000000000000000000000000
      000000000000363698C04141BBED4242C1F64141BBED363698C0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C49674FFC496
      74FFC49674FFC49674FFC49674FFC49674FFC49674FFC49674FFC49674FFC496
      74FFC49674FFC49674FF0000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FFEFFFFF00000000FFCFF3FF00000000
      FF8FF1FF00000000FF0FF0FF00000000FE0FF07F00000000FC0FF03F00000000
      F80FF01F00000000F00FF00F00000000E00FF00F00000000F00FF01F00000000
      F80FF03F00000000FC0FF07F00000000FE0FF0FF00000000FF0FF1FF80010000
      FF8FF3FF80010000FFCFF7FFC0030000FFFFE007FFFF3FFFF83FE00780011FFF
      E00FE00780018FFFC00700008001C7FF800300008001E30F800300008001F003
      000100008001F801000100008001F801000100008001F000000100008001F000
      000100008001F000800300008001F0008003E0078001F801C007E0078007F801
      E00FE007800FFC03F83FE007FFFFFF0FFFFFFFFFFFFFC003F83FFFFF9FFFC003
      E00FE7E787FFC003C007C3C3C3FFC0038003C183C1FFC0038003E007E0FFC003
      0001F00FF07FC0010001F81FF83FC0000001F81FFC1FC0010001F00FFE0FC001
      0001E007FF07C0038003C183FF83C0038003C3C3FFC1C003C007F7EFFFE1C003
      E00FFFFFFFF3C003F83FFFFFFFFFC00300000000000000000000000000000000
      000000000000}
  end
  object DSPDiario: TDataSetProvider
    DataSet = QDiario
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 408
    Top = 408
  end
  object CDSDiario: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDiario'
    OnNewRecord = CDSDiarioNewRecord
    Left = 472
    Top = 408
    object CDSDiarioID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSDiarioID_SUBDET_PROD: TIntegerField
      FieldName = 'ID_SUBDET_PROD'
      Origin = 'ID_SUBDET_PROD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      OnSetText = CDSDiarioID_SUBDET_PRODSetText
    end
    object CDSDiarioNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSDiarioTURNO: TIntegerField
      FieldName = 'TURNO'
      Origin = 'TURNO'
    end
    object CDSDiarioTIPO_MATERIAL: TIntegerField
      FieldName = 'TIPO_MATERIAL'
      Origin = 'TIPO_MATERIAL'
    end
    object CDSDiarioESTACION: TIntegerField
      FieldName = 'ESTACION'
      Origin = 'ESTACION'
    end
    object CDSDiarioCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      OnSetText = CDSDiarioCANTIDADSetText
      DisplayFormat = ',0.00'
    end
    object CDSDiarioMUESTRACODIGO: TStringField
      FieldName = 'MUESTRACODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      Size = 8
    end
    object CDSDiarioMUESTRADETALLE: TStringField
      FieldName = 'MUESTRADETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 45
    end
    object CDSDiarioMUESTRACANTIDAD: TFloatField
      FieldName = 'MUESTRACANTIDAD'
      Origin = 'CANTIDAD'
      ProviderFlags = []
    end
    object CDSDiarioMUESTRASALDO: TFloatField
      FieldName = 'MUESTRASALDO'
      Origin = 'CANTIDAD_SALDO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
    end
    object CDSDiarioFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSDiarioOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      Size = 300
    end
    object CDSDiarioNRORTO: TStringField
      FieldName = 'NRORTO'
      Origin = 'NRORTO'
      Size = 13
    end
    object CDSDiarioID_AJUSTE_STOCK: TIntegerField
      FieldName = 'ID_AJUSTE_STOCK'
      Origin = 'ID_AJUSTE_STOCK'
      Required = True
    end
    object CDSDiarioMUESTRAID_AJUSTE: TIntegerField
      FieldName = 'MUESTRAID_AJUSTE'
      Origin = 'ID_RTO'
      ProviderFlags = []
    end
    object CDSDiarioMUESTRANROAJUSTE: TStringField
      FieldName = 'MUESTRANROAJUSTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object CDSDiarioMUESTRAID_PRO_CAB: TIntegerField
      FieldName = 'MUESTRAID_PRO_CAB'
      Origin = 'ID_OPCAB'
      ProviderFlags = []
    end
    object CDSDiarioMODO_TRAZABILIDAD: TStringField
      FieldName = 'MODO_TRAZABILIDAD'
      Origin = 'MODO_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSDiarioNRO_LOTE: TStringField
      FieldName = 'NRO_LOTE'
      Origin = 'NRO_LOTE'
      Size = 15
    end
    object CDSDiarioHORM_LTS: TFloatField
      FieldName = 'HORM_LTS'
      Origin = 'HORM_LTS'
      Required = True
      OnSetText = CDSDiarioHORM_LTSSetText
    end
    object CDSDiarioHORM_KG: TFloatField
      FieldName = 'HORM_KG'
      Origin = 'HORM_KG'
      Required = True
    end
    object CDSDiarioHORM_REAL_KG: TFloatField
      FieldName = 'HORM_REAL_KG'
      Origin = 'HORM_REAL_KG'
      Required = True
    end
    object CDSDiarioHORM_REAL_LTS: TFloatField
      FieldName = 'HORM_REAL_LTS'
      Origin = 'HORM_REAL_LTS'
      Required = True
    end
    object CDSDiarioPATS_CANT: TIntegerField
      FieldName = 'PATS_CANT'
      Origin = 'PATS_CANT'
    end
    object CDSDiarioACERO_PAS_KG: TFloatField
      FieldName = 'ACERO_PAS_KG'
      Origin = 'ACERO_PAS_KG'
      Required = True
    end
    object CDSDiarioAROS_KG: TFloatField
      FieldName = 'AROS_KG'
      Origin = 'AROS_KG'
      Required = True
    end
    object CDSDiarioTRENZAS_KG: TFloatField
      FieldName = 'TRENZAS_KG'
      Origin = 'TRENZAS_KG'
      Required = True
    end
    object CDSDiarioCORDONES_KG: TFloatField
      FieldName = 'CORDONES_KG'
      Origin = 'CORDONES_KG'
      Required = True
    end
    object CDSDiarioALAMBRE_KG: TFloatField
      FieldName = 'ALAMBRE_KG'
      Origin = 'ALAMBRE_KG'
      Required = True
    end
    object CDSDiarioPIEDRA_KG: TFloatField
      FieldName = 'PIEDRA_KG'
      Origin = 'PIEDRA_KG'
      Required = True
    end
    object CDSDiarioARENA_KG: TFloatField
      FieldName = 'ARENA_KG'
      Origin = 'ARENA_KG'
      Required = True
    end
    object CDSDiarioCEMENTO_KG: TFloatField
      FieldName = 'CEMENTO_KG'
      Origin = 'CEMENTO_KG'
      Required = True
    end
    object CDSDiarioPIEDRA_KG_REAL: TFloatField
      FieldName = 'PIEDRA_KG_REAL'
      Origin = 'PIEDRA_KG_REAL'
      Required = True
    end
    object CDSDiarioARENA_KG_REAL: TFloatField
      FieldName = 'ARENA_KG_REAL'
      Origin = 'ARENA_KG_REAL'
      Required = True
    end
    object CDSDiarioCEMENTO_KG_REAL: TFloatField
      FieldName = 'CEMENTO_KG_REAL'
      Origin = 'CEMENTO_KG_REAL'
      Required = True
    end
    object CDSDiarioDIF_HORM_LTS: TFloatField
      FieldName = 'DIF_HORM_LTS'
      Origin = 'DIF_HORM_LTS'
      Required = True
    end
    object CDSDiarioDIF_HORM_KG: TFloatField
      FieldName = 'DIF_HORM_KG'
      Origin = 'DIF_HORM_KG'
      Required = True
    end
    object CDSDiarioDIF_PIEDRA_KG: TFloatField
      FieldName = 'DIF_PIEDRA_KG'
      Origin = 'DIF_PIEDRA_KG'
      Required = True
    end
    object CDSDiarioDIF_ARENA_KG: TFloatField
      FieldName = 'DIF_ARENA_KG'
      Origin = 'DIF_ARENA_KG'
      Required = True
    end
    object CDSDiarioDIF_CEMENTO_KG: TFloatField
      FieldName = 'DIF_CEMENTO_KG'
      Origin = 'DIF_CEMENTO_KG'
      Required = True
    end
    object CDSDiarioRECHAZADO: TIntegerField
      FieldName = 'RECHAZADO'
      Origin = 'RECHAZADO'
      Required = True
    end
    object CDSDiarioTROQUEL: TStringField
      FieldName = 'TROQUEL'
      Origin = 'TROQUEL'
      Required = True
    end
    object CDSDiarioID_SECTOR: TIntegerField
      FieldName = 'ID_SECTOR'
      Required = True
    end
    object CDSDiarioID_ORDEN_PRODUCCION_CAB: TIntegerField
      FieldName = 'ID_ORDEN_PRODUCCION_CAB'
      Required = True
    end
    object CDSDiarioID_ORDEN_PRODUCCION_DET: TIntegerField
      FieldName = 'ID_ORDEN_PRODUCCION_DET'
      Required = True
      OnSetText = CDSDiarioID_ORDEN_PRODUCCION_DETSetText
    end
  end
  object ibgIdDiario: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'next_id_ordenproduccion_diario'
    SystemGenerators = False
    Left = 504
    Top = 576
  end
  object DSMaterial: TDataSource
    DataSet = QMaterial
    Left = 664
    Top = 368
  end
  object ComBuscadorDet: TComBuscador
    Data = QBuscaDetFD
    Campo = 'ID'
    Titulo = 'Detalles Produccion'
    rOk = False
    Left = 848
    Top = 368
  end
  object DSEstaciones: TDataSource
    DataSet = QEstaciones
    Left = 712
    Top = 728
  end
  object QTroqueles: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.*  from troqueles t where t.id_produ_diario = :id')
    Left = 336
    Top = 512
    ParamData = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QTroquelesID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTroquelesID_ORDENPRODUCCION: TIntegerField
      FieldName = 'ID_ORDENPRODUCCION'
    end
    object QTroquelesID_REMITO: TIntegerField
      FieldName = 'ID_REMITO'
    end
    object QTroquelesNRO_TROQUEL: TStringField
      FieldName = 'NRO_TROQUEL'
    end
    object QTroquelesID_PRODU_DIARIO: TIntegerField
      FieldName = 'ID_PRODU_DIARIO'
    end
    object QTroquelesFECHA_INGRESO: TSQLTimeStampField
      FieldName = 'FECHA_INGRESO'
    end
    object QTroquelesFECHA_EGRESO: TSQLTimeStampField
      FieldName = 'FECHA_EGRESO'
    end
    object QTroquelesCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 8
    end
  end
  object CDSTroqueles: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPTroqueles'
    BeforeInsert = CDSTroquelesBeforeInsert
    OnNewRecord = CDSTroquelesNewRecord
    Left = 480
    Top = 512
    object CDSTroquelesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSTroquelesID_ORDENPRODUCCION: TIntegerField
      FieldName = 'ID_ORDENPRODUCCION'
    end
    object CDSTroquelesID_REMITO: TIntegerField
      FieldName = 'ID_REMITO'
    end
    object CDSTroquelesNRO_TROQUEL: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nro Troquel'
      FieldName = 'NRO_TROQUEL'
      OnSetText = CDSTroquelesNRO_TROQUELSetText
    end
    object CDSTroquelesID_PRODU_DIARIO: TIntegerField
      FieldName = 'ID_PRODU_DIARIO'
    end
    object CDSTroquelesFECHA_INGRESO: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha Ingreso'
      FieldName = 'FECHA_INGRESO'
    end
    object CDSTroquelesFECHA_EGRESO: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha Salida'
      FieldName = 'FECHA_EGRESO'
    end
    object CDSTroquelesCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 8
    end
  end
  object DSPTroqueles: TDataSetProvider
    DataSet = QTroqueles
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 400
    Top = 520
  end
  object DSTroqueles: TDataSource
    DataSet = CDSTroqueles
    Left = 576
    Top = 576
  end
  object ibgTroquel: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'next_id_troqueles'
    SystemGenerators = False
    Left = 576
    Top = 504
  end
  object QEstaciones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select u.* from '
      'ORDENPRODUCC_ESTACION u')
    Left = 768
    Top = 720
    object QEstacionesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QEstacionesDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object QEstacionesSECTOR: TIntegerField
      FieldName = 'SECTOR'
      Origin = 'SECTOR'
      Required = True
    end
  end
  object QMaterial: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from ORDENPRODUCCION_TMATERIAL')
    Left = 584
    Top = 344
  end
  object QBuscador: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.*,sd.codigo as MuestraCodigo ,'
      '           sd.detalle as MuestraDetalle,'
      '           sd.cantidad as MuestraCantidad,'
      
        '           sd.cantidad_saldo as MuestraSaldo from ordenproduccio' +
        'n_diario d'
      'left join ordenproduccion_sub_det sd on sd.id=d.id_subdet_prod'
      'order by d.nro_lote Desc')
    Left = 680
    Top = 424
    object QBuscadorNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte O.pr.'
      DisplayWidth = 16
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      EditMask = 'a-####-########;0'
      Size = 13
    end
    object QBuscadorMUESTRACODIGO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cod.'
      DisplayWidth = 6
      FieldName = 'MUESTRACODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object QBuscadorMUESTRADETALLE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Detalle'
      DisplayWidth = 35
      FieldName = 'MUESTRADETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object QBuscadorTURNO: TIntegerField
      DisplayLabel = 'Turno'
      FieldName = 'TURNO'
      Origin = 'TURNO'
    end
    object QBuscadorTIPO_MATERIAL: TIntegerField
      FieldName = 'TIPO_MATERIAL'
      Origin = 'TIPO_MATERIAL'
    end
    object QBuscadorESTACION: TIntegerField
      FieldName = 'ESTACION'
      Origin = 'ESTACION'
      Visible = False
    end
    object QBuscadorCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.00'
    end
    object QBuscadorFECHA: TSQLTimeStampField
      DisplayWidth = 16
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Visible = False
    end
    object QBuscadorID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object QBuscadorID_SUBDET_PROD: TIntegerField
      FieldName = 'ID_SUBDET_PROD'
      Origin = 'ID_SUBDET_PROD'
      Visible = False
    end
  end
  object QBuscaLoteFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.id from ordenproduccion_diario d'
      'where d.nro_lote = :Nro')
    Left = 64
    Top = 536
    ParamData = <
      item
        Name = 'NRO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end>
    object QBuscaLoteFDID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object QSubDetallesFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.* from ordenproduccion_sub_det s '
      'where s.id=:id ')
    Left = 136
    Top = 720
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QSubDetallesFDNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object QSubDetallesFDID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QSubDetallesFDID_DET_OP: TIntegerField
      FieldName = 'ID_DET_OP'
      Origin = 'ID_DET_OP'
      Required = True
    end
    object QSubDetallesFDCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object QSubDetallesFDDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QSubDetallesFDCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QSubDetallesFDCANTIDAD_SALDO: TFloatField
      FieldName = 'CANTIDAD_SALDO'
      Origin = 'CANTIDAD_SALDO'
      Required = True
    end
    object QSubDetallesFDFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QSubDetallesFDTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QSubDetallesFDCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QSubDetallesFDESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object QSubDetallesFDFECHAINICO: TSQLTimeStampField
      FieldName = 'FECHAINICO'
      Origin = 'FECHAINICO'
    end
    object QSubDetallesFDFECHAFINAL: TSQLTimeStampField
      FieldName = 'FECHAFINAL'
      Origin = 'FECHAFINAL'
    end
    object QSubDetallesFDESTACION: TIntegerField
      FieldName = 'ESTACION'
      Origin = 'ESTACION'
      Required = True
    end
    object QSubDetallesFDKEY_ESTACION: TStringField
      FieldName = 'KEY_ESTACION'
      Origin = 'KEY_ESTACION'
      Required = True
      Size = 40
    end
  end
  object QBuscaDetFD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select det.id, cab.fecha_iniciada, det.codigo ,det.detalle,'
      
        '       cab.nrocpbte,cab.cliente,cl.nombre,det.id_opcab from orde' +
        'nproduccion_det det'
      'left join ordenproduccion_cab cab on cab.id=det.id_opcab'
      'left join clientes cl on cl.codigo=cab.cliente'
      '  where cab.estado='#39'P'#39' and cab.cliente<>'#39#39)
    Left = 808
    Top = 344
    object QBuscaDetFDNROCPBTE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nro.Cpbte'
      DisplayWidth = 14
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object QBuscaDetFDFECHA_INICIADA: TSQLTimeStampField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fecha'
      DisplayWidth = 11
      FieldName = 'FECHA_INICIADA'
      Origin = 'FECHA_INICIADA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QBuscaDetFDCODIGO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 9
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object QBuscaDetFDDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 35
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QBuscaDetFDNOMBRE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nombre'
      DisplayWidth = 30
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QBuscaDetFDCLIENTE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      ProviderFlags = []
      ReadOnly = True
      Visible = False
      Size = 6
    end
    object QBuscaDetFDID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
  end
  object QBuscaTroquel: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.id from troqueles t where t.nro_troquel = :nro')
    Left = 168
    Top = 536
    ParamData = <
      item
        Name = 'NRO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
        Value = Null
      end>
    object QBuscaTroquelID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object QDiario: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select d.*,sd.codigo as MuestraCodigo ,'
      '           sd.detalle as MuestraDetalle,'
      '           sd.cantidad as MuestraCantidad,'
      '           sd.cantidad_saldo as MuestraSaldo,'
      '           r.id_rto as MuestraId_Ajuste,'
      '           r.nrocpbte as MuestraNroAjuste,'
      
        '           od.id_opcab as MuestraId_Pro_cab  from ordenproduccio' +
        'n_diario d'
      'left join ordenproduccion_sub_det sd on sd.id=d.id_subdet_prod'
      'left join rtomercacab r on r.id_rto=d.id_ajuste_stock'
      'left join ordenproduccion_det od on od.id=sd.id_det_op'
      'where d.id=:id')
    Left = 336
    Top = 408
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QDiarioID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDiarioID_SUBDET_PROD: TIntegerField
      FieldName = 'ID_SUBDET_PROD'
      Origin = 'ID_SUBDET_PROD'
    end
    object QDiarioFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QDiarioNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QDiarioTURNO: TIntegerField
      FieldName = 'TURNO'
      Origin = 'TURNO'
    end
    object QDiarioTIPO_MATERIAL: TIntegerField
      FieldName = 'TIPO_MATERIAL'
      Origin = 'TIPO_MATERIAL'
    end
    object QDiarioESTACION: TIntegerField
      FieldName = 'ESTACION'
      Origin = 'ESTACION'
    end
    object QDiarioCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QDiarioOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      Size = 300
    end
    object QDiarioNRORTO: TStringField
      FieldName = 'NRORTO'
      Origin = 'NRORTO'
      Size = 13
    end
    object QDiarioMUESTRACODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
    object QDiarioMUESTRADETALLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object QDiarioMUESTRACANTIDAD: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACANTIDAD'
      Origin = 'CANTIDAD'
      ProviderFlags = []
      ReadOnly = True
    end
    object QDiarioMUESTRASALDO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASALDO'
      Origin = 'CANTIDAD_SALDO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QDiarioID_AJUSTE_STOCK: TIntegerField
      FieldName = 'ID_AJUSTE_STOCK'
      Origin = 'ID_AJUSTE_STOCK'
      Required = True
    end
    object QDiarioMUESTRAID_AJUSTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAID_AJUSTE'
      Origin = 'ID_RTO'
      ProviderFlags = []
    end
    object QDiarioMUESTRANROAJUSTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANROAJUSTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object QDiarioMUESTRAID_PRO_CAB: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAID_PRO_CAB'
      Origin = 'ID_OPCAB'
      ProviderFlags = []
    end
    object QDiarioMODO_TRAZABILIDAD: TStringField
      FieldName = 'MODO_TRAZABILIDAD'
      Origin = 'MODO_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QDiarioNRO_LOTE: TStringField
      FieldName = 'NRO_LOTE'
      Origin = 'NRO_LOTE'
      Size = 15
    end
    object QDiarioHORM_LTS: TFloatField
      FieldName = 'HORM_LTS'
      Origin = 'HORM_LTS'
      Required = True
    end
    object QDiarioHORM_KG: TFloatField
      FieldName = 'HORM_KG'
      Origin = 'HORM_KG'
      Required = True
    end
    object QDiarioHORM_REAL_KG: TFloatField
      FieldName = 'HORM_REAL_KG'
      Origin = 'HORM_REAL_KG'
      Required = True
    end
    object QDiarioHORM_REAL_LTS: TFloatField
      FieldName = 'HORM_REAL_LTS'
      Origin = 'HORM_REAL_LTS'
      Required = True
    end
    object QDiarioPATS_CANT: TIntegerField
      FieldName = 'PATS_CANT'
      Origin = 'PATS_CANT'
    end
    object QDiarioACERO_PAS_KG: TFloatField
      FieldName = 'ACERO_PAS_KG'
      Origin = 'ACERO_PAS_KG'
      Required = True
    end
    object QDiarioAROS_KG: TFloatField
      FieldName = 'AROS_KG'
      Origin = 'AROS_KG'
      Required = True
    end
    object QDiarioTRENZAS_KG: TFloatField
      FieldName = 'TRENZAS_KG'
      Origin = 'TRENZAS_KG'
      Required = True
    end
    object QDiarioCORDONES_KG: TFloatField
      FieldName = 'CORDONES_KG'
      Origin = 'CORDONES_KG'
      Required = True
    end
    object QDiarioALAMBRE_KG: TFloatField
      FieldName = 'ALAMBRE_KG'
      Origin = 'ALAMBRE_KG'
      Required = True
    end
    object QDiarioPIEDRA_KG: TFloatField
      FieldName = 'PIEDRA_KG'
      Origin = 'PIEDRA_KG'
      Required = True
    end
    object QDiarioARENA_KG: TFloatField
      FieldName = 'ARENA_KG'
      Origin = 'ARENA_KG'
      Required = True
    end
    object QDiarioCEMENTO_KG: TFloatField
      FieldName = 'CEMENTO_KG'
      Origin = 'CEMENTO_KG'
      Required = True
    end
    object QDiarioPIEDRA_KG_REAL: TFloatField
      FieldName = 'PIEDRA_KG_REAL'
      Origin = 'PIEDRA_KG_REAL'
      Required = True
    end
    object QDiarioARENA_KG_REAL: TFloatField
      FieldName = 'ARENA_KG_REAL'
      Origin = 'ARENA_KG_REAL'
      Required = True
    end
    object QDiarioCEMENTO_KG_REAL: TFloatField
      FieldName = 'CEMENTO_KG_REAL'
      Origin = 'CEMENTO_KG_REAL'
      Required = True
    end
    object QDiarioDIF_HORM_LTS: TFloatField
      FieldName = 'DIF_HORM_LTS'
      Origin = 'DIF_HORM_LTS'
      Required = True
    end
    object QDiarioDIF_HORM_KG: TFloatField
      FieldName = 'DIF_HORM_KG'
      Origin = 'DIF_HORM_KG'
      Required = True
    end
    object QDiarioDIF_PIEDRA_KG: TFloatField
      FieldName = 'DIF_PIEDRA_KG'
      Origin = 'DIF_PIEDRA_KG'
      Required = True
    end
    object QDiarioDIF_ARENA_KG: TFloatField
      FieldName = 'DIF_ARENA_KG'
      Origin = 'DIF_ARENA_KG'
      Required = True
    end
    object QDiarioDIF_CEMENTO_KG: TFloatField
      FieldName = 'DIF_CEMENTO_KG'
      Origin = 'DIF_CEMENTO_KG'
      Required = True
    end
    object QDiarioRECHAZADO: TIntegerField
      FieldName = 'RECHAZADO'
      Origin = 'RECHAZADO'
      Required = True
    end
    object QDiarioTROQUEL: TStringField
      FieldName = 'TROQUEL'
      Origin = 'TROQUEL'
      Required = True
    end
    object QDiarioID_SECTOR: TIntegerField
      FieldName = 'ID_SECTOR'
      Origin = 'ID_SECTOR'
      Required = True
    end
    object QDiarioID_ORDEN_PRODUCCION_CAB: TIntegerField
      FieldName = 'ID_ORDEN_PRODUCCION_CAB'
      Origin = 'ID_ORDEN_PRODUCCION_CAB'
      Required = True
    end
    object QDiarioID_ORDEN_PRODUCCION_DET: TIntegerField
      FieldName = 'ID_ORDEN_PRODUCCION_DET'
      Origin = 'ID_ORDEN_PRODUCCION_DET'
      Required = True
    end
  end
  object spAltaStock: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'ALTASTOCK_DESDE_PARTE_DIARIO'
    Left = 256
    Top = 536
    ParamData = <
      item
        Position = 1
        Name = 'ID_PARTE_DIARIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'CANTIDAD'
        DataType = ftFloat
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object MainMenu1: TMainMenu
    Left = 448
    Top = 120
    object Modos: TMenuItem
      Caption = 'Modo Trazabilidad'
      object PorTroqueles: TMenuItem
        Caption = 'Por Troqueles'
        OnClick = PorTroquelesClick
      end
      object PorLotes: TMenuItem
        Caption = 'Por Lotes'
        OnClick = PorLotesClick
      end
    end
  end
  object QSector: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from ORDENPRODUCCION_SECTOR')
    Left = 760
    Top = 276
  end
  object DSSector: TDataSource
    DataSet = QSector
    Left = 824
    Top = 276
  end
  object QDetalle: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.* from ordenproduccion_det s '
      'where s.id=:id ')
    Left = 440
    Top = 712
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QDetalleID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDetalleID_OPCAB: TIntegerField
      FieldName = 'ID_OPCAB'
      Origin = 'ID_OPCAB'
      Required = True
    end
    object QDetalleCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object QDetalleDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QDetalleUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object QDetalleCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QDetalleDEPOSITO_DESTINO: TIntegerField
      FieldName = 'DEPOSITO_DESTINO'
      Origin = 'DEPOSITO_DESTINO'
      Required = True
    end
    object QDetalleSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QDetalleFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QDetalleTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QDetalleCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QDetalleNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object QDetalleAFECTA_STOCK: TStringField
      FieldName = 'AFECTA_STOCK'
      Origin = 'AFECTA_STOCK'
      Required = True
      Size = 1
    end
    object QDetalleESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object QDetalleCOSTO: TFloatField
      FieldName = 'COSTO'
      Origin = 'COSTO'
    end
    object QDetalleEN_PLANIFICACION: TStringField
      FieldName = 'EN_PLANIFICACION'
      Origin = 'EN_PLANIFICACION'
      FixedChar = True
      Size = 1
    end
    object QDetalleFECHA_ENTREGA: TSQLTimeStampField
      FieldName = 'FECHA_ENTREGA'
      Origin = 'FECHA_ENTREGA'
    end
    object QDetalleESPECIFICACION: TStringField
      FieldName = 'ESPECIFICACION'
      Origin = 'ESPECIFICACION'
      Size = 45
    end
    object QDetallePARTICION: TStringField
      FieldName = 'PARTICION'
      Origin = 'PARTICION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QDetalleID_PRESU_CAB: TIntegerField
      FieldName = 'ID_PRESU_CAB'
      Origin = 'ID_PRESU_CAB'
      Required = True
    end
    object QDetalleID_PRESU_DET: TIntegerField
      FieldName = 'ID_PRESU_DET'
      Origin = 'ID_PRESU_DET'
      Required = True
    end
    object QDetalleFECHA_INIC_PRODUCC: TSQLTimeStampField
      FieldName = 'FECHA_INIC_PRODUCC'
      Origin = 'FECHA_INIC_PRODUCC'
    end
    object QDetalleITEM_DETALLE: TStringField
      FieldName = 'ITEM_DETALLE'
      Origin = 'ITEM_DETALLE'
      Size = 50
    end
    object QDetalleCANT_ENTREGADA: TFloatField
      FieldName = 'CANT_ENTREGADA'
      Origin = 'CANT_ENTREGADA'
      Required = True
    end
  end
end

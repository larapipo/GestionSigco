object FormMovimientosCarnes: TFormMovimientosCarnes
  Left = 349
  Top = 202
  BorderIcons = [biSystemMenu]
  Caption = 'Detalles de Movimientos'
  ClientHeight = 383
  ClientWidth = 537
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 537
    Height = 169
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 15
      Top = 13
      Width = 28
      Height = 13
      Caption = 'Tropa'
    end
    object Bevel1: TBevel
      Left = 4
      Top = 78
      Width = 130
      Height = 37
      Shape = bsFrame
      Style = bsRaised
    end
    object Bevel2: TBevel
      Left = 135
      Top = 78
      Width = 130
      Height = 37
      Shape = bsFrame
      Style = bsRaised
    end
    object Bevel3: TBevel
      Left = 266
      Top = 78
      Width = 130
      Height = 37
      Shape = bsFrame
      Style = bsRaised
    end
    object Bevel4: TBevel
      Left = 397
      Top = 78
      Width = 130
      Height = 37
      Shape = bsFrame
      Style = bsRaised
    end
    object Label2: TLabel
      Left = 48
      Top = 59
      Width = 47
      Height = 13
      Caption = 'Media 1/2'
    end
    object Label3: TLabel
      Left = 176
      Top = 59
      Width = 47
      Height = 13
      Caption = 'Media 1/2'
    end
    object Label4: TLabel
      Left = 312
      Top = 59
      Width = 47
      Height = 13
      Caption = 'Media 1/2'
    end
    object Label5: TLabel
      Left = 439
      Top = 59
      Width = 47
      Height = 13
      Caption = 'Media 1/2'
    end
    object Label7: TLabel
      Left = 111
      Top = 13
      Width = 58
      Height = 13
      Caption = 'Clasificacion'
    end
    object DBText1: TDBText
      Left = 484
      Top = 0
      Width = 50
      Height = 17
      DataField = 'ID'
      DataSource = DSMov
    end
    object DBText2: TDBText
      Left = 484
      Top = 11
      Width = 50
      Height = 17
      DataField = 'ID_CAB'
      DataSource = DSMov
    end
    object DBText3: TDBText
      Left = 484
      Top = 23
      Width = 50
      Height = 17
      DataField = 'ID_DET'
      DataSource = DSMov
    end
    object Label8: TLabel
      Left = 439
      Top = 0
      Width = 10
      Height = 13
      Caption = 'Id'
    end
    object Label9: TLabel
      Left = 439
      Top = 11
      Width = 32
      Height = 13
      Caption = 'Id Cab'
    end
    object Label10: TLabel
      Left = 439
      Top = 23
      Width = 30
      Height = 13
      Caption = 'Id Det'
    end
    object edTropa: TDBEdit
      Left = 15
      Top = 32
      Width = 82
      Height = 21
      DataField = 'NRO_TROPA'
      DataSource = DSMov
      TabOrder = 0
    end
    object DBComboBox1: TDBComboBox
      Left = 111
      Top = 32
      Width = 49
      Height = 21
      DataField = 'CLASIFICACION'
      DataSource = DSMov
      Items.Strings = (
        'NT'
        'NV'
        'TH'
        'TM'
        'VQ'
        'TO'
        'VC'
        'SC')
      TabOrder = 1
    end
    object edMedia1: TDBEdit
      Left = 18
      Top = 88
      Width = 50
      Height = 21
      DataField = 'MEDIA_1'
      DataSource = DSMov
      TabOrder = 2
    end
    object edMedia2: TDBEdit
      Left = 74
      Top = 88
      Width = 50
      Height = 21
      DataField = 'MEDIA_2'
      DataSource = DSMov
      TabOrder = 3
    end
    object edMedia4: TDBEdit
      Left = 204
      Top = 88
      Width = 50
      Height = 21
      DataField = 'MEDIA_4'
      DataSource = DSMov
      TabOrder = 5
    end
    object edMedia3: TDBEdit
      Left = 148
      Top = 88
      Width = 50
      Height = 21
      DataField = 'MEDIA_3'
      DataSource = DSMov
      TabOrder = 4
    end
    object edMedia6: TDBEdit
      Left = 334
      Top = 88
      Width = 50
      Height = 21
      DataField = 'MEDIA_6'
      DataSource = DSMov
      TabOrder = 7
    end
    object edMedia5: TDBEdit
      Left = 278
      Top = 88
      Width = 50
      Height = 21
      DataField = 'MEDIA_5'
      DataSource = DSMov
      TabOrder = 6
    end
    object edMedia7: TDBEdit
      Left = 408
      Top = 88
      Width = 50
      Height = 21
      DataField = 'MEDIA_7'
      DataSource = DSMov
      TabOrder = 8
    end
    object edMedia8: TDBEdit
      Left = 464
      Top = 88
      Width = 50
      Height = 21
      DataField = 'MEDIA_8'
      DataSource = DSMov
      TabOrder = 9
    end
    object Panel3: TPanel
      Left = 337
      Top = 123
      Width = 185
      Height = 41
      Enabled = False
      TabOrder = 10
      object Label6: TLabel
        Left = 18
        Top = 15
        Width = 63
        Height = 13
        Caption = 'Total de Kilos'
      end
      object edKilos: TDBEdit
        Left = 95
        Top = 12
        Width = 82
        Height = 21
        DataField = 'T_KILOS'
        DataSource = DSMov
        TabOrder = 0
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 169
    Width = 537
    Height = 48
    Align = alTop
    TabOrder = 1
    object JvGradient1: TJvGradient
      Left = 1
      Top = 1
      Width = 535
      Height = 46
      Style = grVertical
      StartColor = clWhite
      EndColor = clGradientActiveCaption
      ExplicitLeft = 2
    end
    object DBStatusLabel1: TJvDBStatusLabel
      Left = 8
      Top = 17
      Width = 104
      Height = 15
      DataSetName = ' '
      DataSource = DatosVentas.DSMov_Carnes
      Captions.Strings = (
        'Archivos Cerrados'
        'Browse'
        'Edicion'
        'Agregando')
      GlyphAlign = glGlyphRight
      ShadowSize = 2
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ShadowColor = clInfoBk
      Transparent = True
    end
    object ntOk: TBitBtn
      Left = 439
      Top = 11
      Width = 78
      Height = 27
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
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
      OnClick = ntOkClick
    end
    object btCancelar: TBitBtn
      Left = 349
      Top = 11
      Width = 78
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = btCancelarClick
    end
  end
  object DSMov: TDataSource
    DataSet = DatosVentas.CDSMov_Carnes
    Left = 376
    Top = 280
  end
end

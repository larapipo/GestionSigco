object FormVistaGrillas: TFormVistaGrillas
  Left = 329
  Top = 116
  Caption = 'Vistas '
  ClientHeight = 539
  ClientWidth = 861
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pnBase: TPanel
    Left = 0
    Top = 0
    Width = 861
    Height = 345
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      861
      345)
    object spConfirma: TSpeedButton
      Left = 826
      Top = 23
      Width = 23
      Height = 22
      Anchors = [akTop, akRight]
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF1AA41C1AA41CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF22B72B2DCE3D25BE2F21
        B529FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF20B42731D5482DD44123CD3525BD2E22B62AFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1EB42431D44A30D74A4ADE636DE48125
        CE3624BF2F21B529FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1CB41E
        33D44D35DA5356E06D51E1679BF1B079E78D22CE3524BD2E1AA51EFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF92DD9230D14A39DD5D5FE57838C54011B41322BC27A6
        F5B86CE38121CF3421B5291FAE26FFFFFFFFFFFFFFFFFFFFFFFF30C74141E169
        73E89145CA4E0D9D0BFFFFFF11A3102DC032AFF7C05BDF6F22CF3625BE30169A
        18FFFFFFFFFFFFFFFFFF2BC13580EB9E5BD36B0C9F0AFFFFFFFFFFFFFFFFFF0E
        A70D45C94EB3F8C546DA5C24D03820AD25159814FFFFFFFFFFFFFFFFFF79CA78
        79CA78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0CA10B53CE60B3F7C741DA5626D0
        391CA921159A14FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF0DA70C74DC82BFF9D144DC5A24CB3619A41C92DD92FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF17B71F68DB79B8F8
        CB4ADF5F22C63318A11BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF1ABA2254D4649DEEAD4FE1671FB52BFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF16B8
        1E50D55F7EE6901CB627FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3BCF4C92DD92FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = spConfirmaClick
      ExplicitLeft = 834
    end
    object Label1: TLabel
      Left = 17
      Top = 4
      Width = 61
      Height = 14
      Caption = 'Descripci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edDetalle: TEdit
      Left = 17
      Top = 24
      Width = 803
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyDown = edDetalleKeyDown
    end
    object dbgVistas: TJvDBGrid
      Left = 16
      Top = 51
      Width = 833
      Height = 254
      Align = alCustom
      DataSource = DSLstVistas
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      OnCheckIfBooleanField = dbgVistasCheckIfBooleanField
      Columns = <
        item
          Expanded = False
          FieldName = 'DESCRIPCION'
          Title.Alignment = taCenter
          Width = 798
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEFECTO'
          Title.Alignment = taCenter
          Visible = False
        end>
    end
    object btCerrar: TBitBtn
      Left = 745
      Top = 311
      Width = 90
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Cerrar'
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btCerrarClick
    end
    object btBorrar: TBitBtn
      Left = 16
      Top = 311
      Width = 75
      Height = 25
      Caption = 'Borrar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFDFDFF0
        9594CBC6C6E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF2322BE7F7EBAFFFFFFECECF41410C1110EFF0B09DDA5A5C3FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF6665B1110CFC7D7CAFFFFFFFB7B6DB110FDF
        0E0CFC100EFF110FB6F4F4F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2E20D0C
        DC0D0BD6D6D6E6FFFFFFC7C7E02524D70F0EFB0E0EEF0F0FFA7271BBFFFFFFFF
        FFFFFFFFFFFFFFFFF7F7FB1B19BF1313FF201EA6FFFFFFFFFFFFFFFFFF3C3BB3
        2627FF090AEE1214FA0F10DBDDDDEEFFFFFFFFFFFFFFFFFF4F4EC51416FF1112
        E59F9FCEFFFFFFFFFFFFFFFFFFE0E0F0272BC6252CFE0D0EEE161CFE3232CCFF
        FFFFFFFFFF6969D6181DF9191EFE2121C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        ABAAE1393FE02531FA121CF61B25F69492E18988E31D26F71E2BFF151BE2C3C2
        E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF726FD84C57F62839F81B2DF71F
        29EE2131F62236F91F2FF26B68DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF615FDC5261F5293CF6253AF8263AF72638F63C3ADEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8B8BEC2939F12F45F823
        38F6253EF81F28EAE3E1FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C1C0FA353FF0314CF92B46F8253FF64E69F9536EF92341F64A4FF0F3F3FEFFFF
        FFFFFFFFFFFFFFFFFFFFF9F9FF5D60F4314CF63656F82F4AF6304FF6516EF93D
        3FF2555CF46B8AFA385EF82833F3D5D3FCFFFFFFFFFFFFFFFFFF5A5FF53B61F8
        3A5AF73150F73D5FF7637DFA4042F6E9E8FDCAC8FB3F40F5778EFA6389FA2D45
        F59696FAFFFFFFFFFFFF4755F84F76F83E61F85679F86279F95955F7F7F6FFFF
        FFFFFFFFFFF0EFFF726DF7525AF87F9CFA6B89FA5661F7D4D3FD6462F6697BF9
        6C82F95055F68984F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDAFD6561
        F65455F76B7EF84A4FF7B9B7FB5353F65C5FF76763F6F5F5FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E3FE9E9BF96566F66D6CF7}
      TabOrder = 3
      OnClick = btBorrarClick
    end
  end
  object DSVistas: TDataSource
    DataSet = CDSVistas
    Left = 728
    Top = 152
  end
  object DSPVistas: TDataSetProvider
    DataSet = QVistas
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 584
    Top = 152
  end
  object CDSVistas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPVistas'
    Left = 664
    Top = 152
    object CDSVistasID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSVistasVISTA: TBlobField
      FieldName = 'VISTA'
      Origin = 'VISTA'
    end
    object CDSVistasDESCRIPCION: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 150
    end
    object CDSVistasDEFECTO: TStringField
      DisplayLabel = 'Def.'
      FieldName = 'DEFECTO'
      Origin = 'DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSVistasORIGEN: TStringField
      FieldName = 'ORIGEN'
      Origin = 'ORIGEN'
      Required = True
    end
  end
  object DSPLstVistas: TDataSetProvider
    DataSet = QLstVistas
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 320
    Top = 376
  end
  object DSLstVistas: TDataSource
    DataSet = CDSLstVistas
    Left = 464
    Top = 376
  end
  object CDSLstVistas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
      end>
    ProviderName = 'DSPLstVistas'
    Left = 384
    Top = 376
    object IntegerField2: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object BlobField2: TBlobField
      FieldName = 'VISTA'
      Origin = 'VISTA'
    end
    object StringField4: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 150
    end
    object StringField5: TStringField
      DisplayLabel = 'Def.'
      FieldName = 'DEFECTO'
      Origin = 'DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField6: TStringField
      FieldName = 'ORIGEN'
      Origin = 'ORIGEN'
      Required = True
    end
  end
  object QLstVistas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select v.* from vista_grillas v where v.origen containing :orige' +
        'n'
      'order by descripcion')
    Left = 240
    Top = 376
    ParamData = <
      item
        Position = 1
        Name = 'origen'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QVistas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select v.* from vista_grillas v')
    Left = 520
    Top = 152
  end
  object QUltimo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select max(v.id) from vista_grillas v ')
    Left = 680
    Top = 256
  end
end

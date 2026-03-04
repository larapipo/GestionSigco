object FormPreciosPorCantidades: TFormPreciosPorCantidades
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Precios x Cantidades'
  ClientHeight = 246
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object pnPreciosPorCant: TPanel
    Left = 0
    Top = 0
    Width = 622
    Height = 246
    Align = alClient
    BorderStyle = bsSingle
    Caption = 'pnPreciosPorCant'
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 552
    DesignSize = (
      618
      242)
    object dbgPrecioCantidad: TDBGrid
      Left = 1
      Top = 1
      Width = 616
      Height = 179
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = DatosStock.DSListaArtSubDet
      DrawingStyle = gdsGradient
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnColEnter = dbgPrecioCantidadColEnter
      OnKeyPress = dbgPrecioCantidadKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'CANTIDAD'
          Title.Alignment = taCenter
          Title.Caption = 'Cant.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -8
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RECARGO'
          Title.Alignment = taCenter
          Title.Caption = 'Rec.%'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -8
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 55
          Visible = True
        end
        item
          Color = clMoneyGreen
          Expanded = False
          FieldName = 'COSTO_TOTAL'
          ReadOnly = True
          Title.Alignment = taCenter
          Width = 72
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'PRECIO_EXENTO'
          Title.Alignment = taCenter
          Title.Caption = 'P.Exento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -8
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 85
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'PRECIO_GRAVADO'
          Title.Alignment = taCenter
          Title.Caption = 'P.Gravado'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -8
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 75
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'IVA_IMPORTE'
          Title.Alignment = taCenter
          Title.Caption = 'Iva'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -8
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECIO'
          Title.Alignment = taCenter
          Title.Caption = 'Precio'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -8
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_LISTA_SECUNDARIA'
          Title.Alignment = taCenter
          Title.Color = clYellow
          Width = 100
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 20
      Top = 189
      Width = 145
      Height = 24
      DataSource = DatosStock.DSListaArtSubDet
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Anchors = [akLeft, akBottom]
      TabOrder = 1
    end
    object btCerrar: TBitBtn
      Left = 448
      Top = 186
      Width = 81
      Height = 27
      Anchors = [akLeft, akBottom]
      Caption = 'Cerrar'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000002A460000558D000078C7000091F0000091F00000
        78C70000558D00002A4600000000000000000000000000000000000000000000
        0000000013200000558C01079EFC041BAFFF0529BBFF0732C2FF0732C2FF0529
        BAFF041BB0FF01089FFC0000558C000013200000000000000000000000000000
        1320000062A30318B1FF0733C5FF0733C2FF0732C2FF0732C2FF0732C2FF0732
        C2FF0733C3FF0733C2FF0319AEFF000062A30000132000000000000000000000
        558C0318B4FF0636D8FF0431CDFF0027C4FF032EC1FF0732C2FF0732C2FF0430
        C1FF0027BFFF042FC1FF0735C4FF0419AEFF0000558C0000000000002A460107
        A1FC0534E3FF0331DDFF123DD8FF6480E0FF1840CBFF002CC1FF022DC0FF0F38
        C4FF6580D9FF1B43C7FF052FC1FF0733C3FF01089FFC00002A460000558D021B
        C3FF0436F1FF002AE4FF5070E9FFFFFFFFFFB7C4F1FF0D36CAFF042DC3FFA2B2
        E8FFFFFFFFFF6984DAFF0026BEFF0733C3FF041BB0FF0000558D000078C7022A
        E5FF0335F8FF0232EEFF0A35E8FF8CA2F2FFFFFFFFFFB4C2F1FFA9B8EDFFFFFF
        FFFFA7B7E9FF133AC4FF052FC1FF0732C2FF0529BBFF000078C7000091F01643
        F8FF093AFCFF0435F8FF0131F0FF002BE8FF91A5F4FFFFFFFFFFFFFFFFFFABBA
        EFFF062FC5FF022DC0FF0732C2FF0732C2FF0733C2FF000091F0000091F03D62
        F8FF1C49FCFF0335FBFF0031F9FF0531F2FFA4B5F7FFFFFFFFFFFFFFFFFFB9C6
        F2FF0D36D0FF002CC6FF0732C2FF0732C2FF0733C2FF000091F0000078C74761
        E6FF486CFDFF0133FBFF113CFBFFA1B4FEFFFFFFFFFFA4B6F8FF92A7F5FFFFFF
        FFFFB6C4F2FF1A41D3FF042FC8FF0732C4FF0529BAFF000078C70000558D293B
        CBFF8FA6FFFF1F46FBFF4C6FFCFFFFFFFFFFA7B8FEFF0733F6FF002AEDFF8CA2
        F6FFFFFFFFFF627FE7FF0028D0FF0734CCFF041BB1FF0000558D00002A46070D
        A5FC92A7FAFF8BA2FEFF214DFBFF4D71FCFF0E3DFBFF0030FBFF0031F7FF0636
        F1FF4C6EF1FF103CE3FF0432DBFF0633D4FF01079FFC00002A46000000000000
        558C2434C7FFB8C7FFFF9CAFFDFF3A5CFCFF0A3AFBFF0335FBFF0335FBFF0133
        F9FF052FF2FF0635EBFF0537E9FF0318B6FF0000558C00000000000000000000
        1320000062A32435C7FFA1B2FAFFBDCAFFFF8EA5FEFF6483FDFF5073FCFF4A6E
        FDFF3961FDFF1341F5FF0218BBFF000062A30000132000000000000000000000
        0000000013200000558C080DA6FC3141CDFF687BE8FF8399F9FF728BF8FF415C
        E6FF1329CAFF0108A3FC0000558C000013200000000000000000000000000000
        0000000000000000000000002A460000558D000078C7000091F0000091F00000
        78C70000558D00002A4600000000000000000000000000000000}
      TabOrder = 2
      OnClick = btCerrarClick
    end
  end
  object JvFormStorage: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    Options = [fpState, fpSize, fpLocation, fpActiveControl]
    PreventResize = True
    StoredValues = <>
    Left = 436
    Top = 130
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    AutoFlush = True
    SubStorages = <>
    Left = 372
    Top = 82
  end
end

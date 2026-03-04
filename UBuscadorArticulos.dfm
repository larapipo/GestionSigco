object FormBuscadorArticulos: TFormBuscadorArticulos
  Left = 284
  Top = 101
  BorderIcons = [biSystemMenu]
  Caption = 'Buscador Art'#237'culos'
  ClientHeight = 716
  ClientWidth = 897
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  Menu = MainMenu
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 897
    Height = 577
    Align = alTop
    BevelOuter = bvNone
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      897
      577)
    object Label8: TLabel
      Left = 3
      Top = 137
      Width = 97
      Height = 13
      Caption = 'Detalle Adicional'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 108
      Top = 137
      Width = 550
      Height = 17
      DataField = 'DETALLE_STK_ADICIONAL'
      DataSource = DSStock
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 3
      Top = 311
      Width = 105
      Height = 13
      Caption = 'Codigo Alternativo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbtCodigo_reemplazo: TDBText
      Left = 114
      Top = 311
      Width = 109
      Height = 17
      DataField = 'REEMPLAZO_STK'
      DataSource = DSStock
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 259
      Top = 311
      Width = 75
      Height = 13
      Caption = 'Presentacion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbtREEMPLAZO_STK: TDBText
      Left = 340
      Top = 311
      Width = 59
      Height = 17
      DataField = 'PRESENTACION_CANTIDAD'
      DataSource = DSStock
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbtREEMPLAZO_STK1: TDBText
      Left = 405
      Top = 311
      Width = 47
      Height = 17
      DataField = 'PRESENTACION_UNIDAD'
      DataSource = DSStock
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object imgFoto: TImage
      Left = 2
      Top = 330
      Width = 218
      Height = 149
      Center = True
      Proportional = True
      Transparent = True
      OnDblClick = imgFotoDblClick
    end
    object DBText6: TDBText
      Left = 796
      Top = 131
      Width = 95
      Height = 17
      Alignment = taRightJustify
      DataField = 'CODIGO_ART_VARIABLE'
      DataSource = DSStock
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edCalculadora: TJvCalcEdit
      Left = 664
      Top = 128
      Width = 121
      Height = 21
      ButtonFlat = True
      DisplayFormat = ',0.00'
      TabOrder = 5
      DecimalPlacesAlwaysShown = False
    end
    object pnlCabecera: TPanel
      Left = 0
      Top = 0
      Width = 897
      Height = 126
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 3
        Width = 99
        Height = 16
        Caption = 'Dato a Buscar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clAqua
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 815
        Top = 5
        Width = 70
        Height = 13
        Caption = 'Lista de Precio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 563
        Top = 72
        Width = 65
        Height = 13
        Caption = 'Ult.Act.Precio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object btnMuestraFiltro: TSpeedButton
        Left = 234
        Top = 2
        Width = 39
        Height = 20
        Action = Filtros
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object btnOcultarFiltro: TSpeedButton
        Left = 279
        Top = 2
        Width = 56
        Height = 20
        Action = limpiarfiltros
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 682
        Top = 72
        Width = 52
        Height = 13
        Caption = 'Ult.Compra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 534
        Top = 84
        Width = 116
        Height = 17
        Alignment = taRightJustify
        DataField = 'FUAP'
        DataSource = DSStock
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clAqua
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 658
        Top = 84
        Width = 99
        Height = 17
        Alignment = taRightJustify
        DataField = 'FECHA_ULTIMA_COMPRA'
        DataSource = DSStock
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 542
        Top = 104
        Width = 47
        Height = 13
        Caption = 'Dscto %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clAqua
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 656
        Top = 104
        Width = 37
        Height = 13
        Caption = 'Precio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clAqua
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbModoBusqueda: TLabel
        Left = 113
        Top = 5
        Width = 104
        Height = 13
        Caption = '(Modo Comienza Con)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 809
        Top = 108
        Width = 47
        Height = 13
        Caption = 'Trazable'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsItalic]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 604
        Top = 49
        Width = 75
        Height = 13
        Caption = 'Presentaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 677
        Top = 49
        Width = 57
        Height = 17
        Alignment = taRightJustify
        DataField = 'PRESENTACION_CANTIDAD'
        DataSource = DSStock
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 740
        Top = 49
        Width = 32
        Height = 17
        DataField = 'PRESENTACION_UNIDAD'
        DataSource = DSStock
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbPreciosProveedor: TLabel
        Left = 611
        Top = 5
        Width = 195
        Height = 13
        Caption = 'Precios desde Lista del Proveedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clAqua
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label16: TLabel
        Left = 810
        Top = 91
        Width = 64
        Height = 13
        Caption = 'Publicar Web'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object pnDatos: TPanel
        Left = 8
        Top = 48
        Width = 531
        Height = 76
        BevelOuter = bvNone
        Color = clMenuHighlight
        Enabled = False
        ParentBackground = False
        TabOrder = 3
        object Label7: TLabel
          Left = 6
          Top = 6
          Width = 30
          Height = 13
          Caption = 'Marca'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 6
          Top = 29
          Width = 29
          Height = 13
          Caption = 'Rubro'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 6
          Top = 52
          Width = 51
          Height = 13
          Caption = 'Sub Rubro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object imgFiltraMarca: TImage
          Left = 392
          Top = 5
          Width = 19
          Height = 18
          Hint = 'Filtrado'
          Center = True
          ParentShowHint = False
          Picture.Data = {
            07544269746D617036030000424D360300000000000036000000280000001000
            000010000000010018000000000000030000120B0000120B0000000000000000
            0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FF1B84F91B84F91B84F91B84F91B84F9FF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FF1B84F93DA0FD4BACFF4BACFF4BACFF3DA0FD
            1B84F9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1B84
            F953B0FF7CC4FF91CDFF7CC4FF53B0FF1B84F9FF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FF1B84F97CC4FFC4E5FFE0F2FFC4E5FF7CC4FF
            1B84F9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1B84
            F991CDFFE0F2FFFFFFFFE0F2FF91CDFF1B84F9FF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FF1B84F95FB1FDC4E5FFE0F2FFC4E5FF5FB1FD
            1B84F9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FF1B84F91B84F91B84F91B84F91B84F9FF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FF}
          ShowHint = True
          Transparent = True
          Visible = False
        end
        object imgFiltraRubro: TImage
          Left = 392
          Top = 26
          Width = 19
          Height = 18
          Hint = 'Filtrado'
          Center = True
          ParentShowHint = False
          Picture.Data = {
            07544269746D617036030000424D360300000000000036000000280000001000
            000010000000010018000000000000030000120B0000120B0000000000000000
            0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FF1B84F91B84F91B84F91B84F91B84F9FF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FF1B84F93DA0FD4BACFF4BACFF4BACFF3DA0FD
            1B84F9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1B84
            F953B0FF7CC4FF91CDFF7CC4FF53B0FF1B84F9FF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FF1B84F97CC4FFC4E5FFE0F2FFC4E5FF7CC4FF
            1B84F9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1B84
            F991CDFFE0F2FFFFFFFFE0F2FF91CDFF1B84F9FF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FF1B84F95FB1FDC4E5FFE0F2FFC4E5FF5FB1FD
            1B84F9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FF1B84F91B84F91B84F91B84F91B84F9FF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FF}
          ShowHint = True
          Transparent = True
          Visible = False
        end
        object imgFiltraSubRub: TImage
          Left = 504
          Top = 49
          Width = 19
          Height = 18
          Hint = 'Filtrado'
          Center = True
          ParentShowHint = False
          Picture.Data = {
            07544269746D617036030000424D360300000000000036000000280000001000
            000010000000010018000000000000030000120B0000120B0000000000000000
            0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FF1B84F91B84F91B84F91B84F91B84F9FF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FF1B84F93DA0FD4BACFF4BACFF4BACFF3DA0FD
            1B84F9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1B84
            F953B0FF7CC4FF91CDFF7CC4FF53B0FF1B84F9FF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FF1B84F97CC4FFC4E5FFE0F2FFC4E5FF7CC4FF
            1B84F9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1B84
            F991CDFFE0F2FFFFFFFFE0F2FF91CDFF1B84F9FF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FF1B84F95FB1FDC4E5FFE0F2FFC4E5FF5FB1FD
            1B84F9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FF1B84F91B84F91B84F91B84F91B84F9FF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FF}
          ShowHint = True
          Transparent = True
          Visible = False
        end
        object DBEdit3: TDBEdit
          Left = 63
          Top = 3
          Width = 329
          Height = 21
          Color = clInfoBk
          DataField = 'DESCRIPCION_MARCA'
          DataSource = DSStock
          TabOrder = 0
        end
        object DBEdit1: TDBEdit
          Left = 63
          Top = 25
          Width = 329
          Height = 21
          Color = clInfoBk
          DataField = 'DETALLE_RUBRO'
          DataSource = DSStock
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 63
          Top = 47
          Width = 442
          Height = 21
          Color = clInfoBk
          DataField = 'DETALLE_SUBRUBRO'
          DataSource = DSStock
          TabOrder = 2
        end
      end
      object edDato: TEdit
        Left = 8
        Top = 23
        Width = 353
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        OnClick = edDatoClick
        OnEnter = edDatoEnter
        OnKeyDown = edDatoKeyDown
        OnKeyPress = edDatoKeyPress
      end
      object cbCampos: TComboBox
        Left = 367
        Top = 23
        Width = 161
        Height = 21
        Style = csDropDownList
        TabOrder = 1
        Visible = False
        OnChange = cbCamposChange
      end
      object dbcListasPrecios: TJvDBLookupCombo
        Left = 656
        Top = 23
        Width = 234
        Height = 23
        DisplayEmpty = 'Sin Lista Seleccionada'
        EmptyValue = '-1'
        LookupField = 'ID'
        LookupDisplay = 'NOMBRE'
        LookupSource = DSListaPrecioCab
        TabOrder = 2
        OnClick = BuscarExecute
      end
      object edDscto: TJvCalcEdit
        Left = 594
        Top = 102
        Width = 48
        Height = 21
        DisplayFormat = ',0.00'
        ShowButton = False
        TabOrder = 4
        DecimalPlacesAlwaysShown = False
      end
      object edPrecio: TJvCalcEdit
        Left = 699
        Top = 102
        Width = 76
        Height = 21
        DisplayFormat = ',0.00'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ShowButton = False
        TabOrder = 5
        DisabledTextColor = clBlue
        DecimalPlacesAlwaysShown = False
      end
      object pnProducc: TPanel
        Left = 808
        Top = 68
        Width = 82
        Height = 20
        Hint = 'Es Un Articulo de Produccion....'
        BevelOuter = bvNone
        Caption = 'De Producci'#243'n'
        Color = clYellow
        ParentBackground = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
    end
    object dbgExitencias: TDBGrid
      Left = 229
      Top = 313
      Width = 667
      Height = 192
      Hint = 'Hacer Doble Clik para ver los pendientes'
      Anchors = [akLeft, akTop, akBottom]
      Color = clWhite
      DataSource = DSExistencia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = dbgExitenciasDrawColumnCell
      OnDblClick = VerPendientesExecute
      Columns = <
        item
          Alignment = taCenter
          Color = clWindow
          Expanded = False
          FieldName = 'DEPOSITO_STK'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 31
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'DEPOSITO_NOMBRE'
          Title.Alignment = taCenter
          Title.Caption = 'Dep'#243'sito'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'FISICO'
          Title.Alignment = taCenter
          Title.Caption = 'Real'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 69
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'COMPROMETIDO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 62
          Visible = True
        end
        item
          Color = 16776176
          Expanded = False
          FieldName = 'EN_TRANSITO'
          Title.Caption = 'En Transit'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 74
          Visible = True
        end
        item
          Color = clMoneyGreen
          Expanded = False
          FieldName = 'SALDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Existencia'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ACOPIO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clSkyBlue
          Expanded = False
          FieldName = 'SEC'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clPurple
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 46
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clSkyBlue
          Expanded = False
          FieldName = 'UBIC'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clPurple
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end>
    end
    object pn1: TPanel
      Left = 0
      Top = 550
      Width = 897
      Height = 27
      Align = alBottom
      TabOrder = 4
      DesignSize = (
        897
        27)
      object dbtLinkURL: TDBText
        Left = 6
        Top = 5
        Width = 773
        Height = 18
        Cursor = crHandPoint
        Hint = 'Hacer Doble Clik para editar'
        Anchors = [akLeft, akBottom]
        DataField = 'URL'
        DataSource = DSStock
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = dbtLinkURLClick
        ExplicitTop = 4
      end
    end
    object DBNavigator1: TDBNavigator
      Left = 19
      Top = 485
      Width = 162
      Height = 18
      DataSource = DSStockFotos
      VisibleButtons = [nbPrior, nbNext]
      TabOrder = 6
    end
    object dbgResultado: TDBGrid
      Left = 5
      Top = 152
      Width = 891
      Height = 156
      DataSource = DSStock
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = dbgResultadoCellClick
      OnDrawColumnCell = dbgResultadoDrawColumnCell
      OnDblClick = AceptarExecute
      OnKeyDown = dbgResultadoKeyDown
      OnMouseMove = dbgResultadoMouseMove
      OnTitleClick = dbgResultadoTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO_STK'
          Title.Alignment = taCenter
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE_STK'
          Title.Alignment = taCenter
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 332
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRIPCION_MARCA'
          Title.Alignment = taCenter
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SIGNO'
          Title.Alignment = taCenter
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRAPRECIO'
          Title.Alignment = taCenter
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 82
          Visible = True
        end
        item
          Color = clMoneyGreen
          Expanded = False
          FieldName = 'MUESTRAPRECIOIVA'
          Title.Alignment = taCenter
          Title.Caption = 'Precio Final'
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GTIA_MESES'
          Title.Alignment = taCenter
          Title.Color = clSilver
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 30
          Visible = True
        end
        item
          Alignment = taCenter
          Color = clSkyBlue
          Expanded = False
          FieldName = 'PLU'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PERCIBE_IVA'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 22
          Visible = True
        end>
    end
    object pnFiltros: TJvPanel
      Left = 180
      Top = 193
      Width = 513
      Height = 191
      Movable = True
      FlatBorder = True
      FlatBorderColor = clYellow
      FullRepaint = False
      BorderWidth = 2
      BorderStyle = bsSingle
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 3
      OnDblClick = pnFiltrosDblClick
      object lbl1: TLabel
        Left = 7
        Top = 4
        Width = 30
        Height = 13
        Caption = 'Marca'
      end
      object lbl2: TLabel
        Left = 7
        Top = 84
        Width = 48
        Height = 13
        Caption = 'SubRubro'
      end
      object lbl3: TLabel
        Left = 7
        Top = 44
        Width = 34
        Height = 13
        Caption = 'Rubros'
      end
      object dbcMarca: TJvDBLookupCombo
        Left = 7
        Top = 21
        Width = 272
        Height = 23
        DisplayEmpty = 'Todas Las Marcas'
        EmptyValue = '****'
        EmptyItemColor = clBtnShadow
        LookupField = 'MARCA_STK'
        LookupDisplay = 'DESCRIPCION_MARCA'
        LookupSource = DSMarca
        TabOrder = 0
        OnClick = dbcMarcaClick
      end
      object dbcRubros: TJvDBLookupCombo
        Left = 6
        Top = 59
        Width = 450
        Height = 23
        DisplayEmpty = 'Todos los Rubros'
        EmptyValue = '***'
        EmptyItemColor = clBtnShadow
        LookupField = 'CODIGO_RUBRO'
        LookupDisplay = 'DETALLE_RUBRO'
        LookupSource = DSRubro
        TabOrder = 1
        OnClick = dbcRubrosClick
        OnEnter = dbcRubrosEnter
      end
      object dbcSubRubros: TJvDBLookupCombo
        Left = 6
        Top = 98
        Width = 450
        Height = 23
        DisplayEmpty = 'Todos los SubRubros'
        EmptyValue = '*****'
        EmptyItemColor = clBtnShadow
        LookupField = 'CODIGO_SUBRUBRO'
        LookupDisplay = 'DETALLE_SUBRUBRO'
        LookupSource = DSSubRubro
        TabOrder = 2
        OnClick = dbcSubRubrosClick
        OnEnter = dbcSubRubrosEnter
      end
      object btMuestraFiltro1: TBitBtn
        Left = 312
        Top = 141
        Width = 72
        Height = 25
        Action = limpiarfiltros
        Caption = 'Limpiar'
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
        NumGlyphs = 2
        TabOrder = 3
      end
      object btMuestraFiltro: TBitBtn
        Left = 390
        Top = 141
        Width = 75
        Height = 25
        Action = Filtros
        Caption = '&Cerrar'
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
          F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
          000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
          338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
          45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
          3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
          F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
          000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
          338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
          4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
          8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
          333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
          0000}
        NumGlyphs = 2
        TabOrder = 4
      end
    end
    object pnIngrediente: TPanel
      Left = 808
      Top = 47
      Width = 82
      Height = 20
      Hint = 'Es componente de un Articulo de Produccion'
      BevelOuter = bvNone
      Caption = 'Integra Producc'
      Color = clAqua
      ParentBackground = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
    end
    object Panel1: TPanel
      Left = 0
      Top = 509
      Width = 897
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 8
      DesignSize = (
        897
        41)
      object Label4: TLabel
        Left = 6
        Top = 15
        Width = 102
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'Registro Encontrados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ExplicitTop = 16
      end
      object DBStatusLabel1: TJvDBStatusLabel
        Left = 114
        Top = 15
        Width = 102
        Height = 13
        DataSource = DSStock
        Style = lsRecordNo
        CalcRecCount = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Anchors = [akLeft, akBottom]
        ParentFont = False
        ShadowPos = spLeftTop
        Transparent = True
        ExplicitTop = 16
      end
      object btCancelar: TBitBtn
        Left = 583
        Top = 8
        Width = 75
        Height = 25
        Action = Cancelar
        Anchors = [akLeft, akBottom]
        Cancel = True
        Caption = '&Cancelar'
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
      end
      object btAceptar: TBitBtn
        Left = 693
        Top = 8
        Width = 75
        Height = 25
        Action = Aceptar
        Anchors = [akLeft, akBottom]
        Caption = '&Aceptar'
        Glyph.Data = {
          F2010000424DF201000000000000760000002800000024000000130000000100
          0400000000007C01000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
          3333333333388F3333333333000033334224333333333333338338F333333333
          0000333422224333333333333833338F33333333000033422222243333333333
          83333338F3333333000034222A22224333333338F33F33338F33333300003222
          A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
          38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
          2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
          0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
          333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
          33333A2224A2233333333338F338F83300003333333333A2224A333333333333
          8F338F33000033333333333A222433333333333338F338F30000333333333333
          A224333333333333338F38F300003333333333333A223333333333333338F8F3
          000033333333333333A3333333333333333383330000}
        ModalResult = 1
        NumGlyphs = 2
        TabOrder = 2
      end
      object btNuevoArt: TBitBtn
        Left = 808
        Top = 8
        Width = 77
        Height = 25
        Action = NuevoArt
        Anchors = [akLeft, akBottom]
        Caption = 'Nuevo'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          000000000000000000000000000000000000000000000000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        ModalResult = 1
        TabOrder = 3
      end
      object chMoneda: TAdvOfficeCheckBox
        Left = 382
        Top = 2
        Width = 173
        Height = 17
        Anchors = [akLeft, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnClick = chMonedaClick
        Alignment = taRightJustify
        Caption = 'Ver Precio en Moneda de Origen'
        ReturnIsTab = False
        Version = '1.8.4.2'
      end
      object chExistencia: TAdvOfficeCheckBox
        Left = 382
        Top = 21
        Width = 173
        Height = 17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        TabStop = True
        OnClick = chExistenciaClick
        Alignment = taRightJustify
        Caption = 'Ver Solo Con Existencia Fisica'
        ReturnIsTab = False
        Version = '1.8.4.2'
      end
    end
  end
  object DSStock: TDataSource
    AutoEdit = False
    DataSet = CDSStock
    Left = 440
    Top = 217
  end
  object ActionList1: TActionList
    Left = 440
    Top = 104
    object Aceptar: TAction
      Caption = '&Aceptar'
      OnExecute = AceptarExecute
    end
    object Cancelar: TAction
      Caption = '&Cancelar'
      OnExecute = CancelarExecute
    end
    object Buscar: TAction
      Caption = 'Buscar'
      OnExecute = BuscarExecute
    end
    object VerPendientes: TAction
      Caption = 'VerPendientes'
      OnExecute = VerPendientesExecute
    end
    object limpiarfiltros: TAction
      Caption = 'Limpiar'
      OnExecute = limpiarfiltrosExecute
    end
    object Filtros: TAction
      Caption = 'Filtros'
      OnExecute = FiltrosExecute
    end
    object NuevoArt: TAction
      Caption = 'Nuevo'
      OnExecute = NuevoArtExecute
    end
    object FiltroTipoArticulo: TAction
      Caption = 'FiltroTipoArticulo'
      OnExecute = FiltroTipoArticuloExecute
    end
    object BuscarLotes: TAction
      Caption = 'Ver Lotes'
      OnExecute = BuscarLotesExecute
    end
  end
  object MainMenu: TMainMenu
    Left = 256
    Top = 72
    object Opciones1: TMenuItem
      Caption = '&Opciones'
      RadioItem = True
      object BExacta: TMenuItem
        Caption = 'Busqueda Exacta'
        Visible = False
        OnClick = BExactaClick
      end
      object BComienzaCon: TMenuItem
        Caption = 'Comienza Con'
        OnClick = BComienzaConClick
      end
      object BIncluye: TMenuItem
        Caption = 'Incluye '
        Checked = True
        OnClick = BIncluyeClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object LeftCero: TMenuItem
        Caption = 'Justificar Codigo'
        OnClick = LeftCeroClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object OcultarPrecioSinIva: TMenuItem
        Caption = 'Ver/Ocultar Precio Sin Iva'
        OnClick = OcultarPrecioSinIvaClick
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object MostrarCodigoAlternativo1: TMenuItem
        Caption = 'Mostrar Codigo Alternativo'
        OnClick = MostrarCodigoAlternativo1Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object BusquedaPorListadeProveedor1: TMenuItem
        Caption = 'Busqueda Por Lista de Proveedor'
        OnClick = BusquedaPorListadeProveedor1Click
      end
    end
  end
  object DSListaPrecioCab: TDataSource
    DataSet = CDSListaPrecioCab
    Left = 48
    Top = 184
  end
  object JvBalloonHint1: TJvBalloonHint
    UseBalloonAsApplicationHint = True
    Left = 712
    Top = 384
  end
  object DSPStock: TDataSetProvider
    DataSet = QStock
    Options = [poAllowCommandText]
    UpdateMode = upWhereChanged
    Left = 302
    Top = 219
  end
  object DSMarca: TDataSource
    DataSet = CDSMarca
    Left = 336
    Top = 400
  end
  object DSSubRubro: TDataSource
    DataSet = CDSSubRubro
    Left = 616
    Top = 448
  end
  object DSRubro: TDataSource
    DataSet = CDSRubro
    Left = 256
    Top = 592
  end
  object CDSStock: TClientDataSet
    Aggregates = <>
    Filter = 'Existencia>0'
    PacketRecords = 100
    Params = <
      item
        DataType = ftInteger
        Name = 'clase'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'clase'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'clase2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'clase2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'lista'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'lista'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'rubro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'rubro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'subrubro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'subrubro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'marca'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'marca'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Dato'
        ParamType = ptInput
      end>
    ProviderName = 'DSPStock'
    AfterScroll = CDSStockAfterScroll
    Left = 372
    Top = 218
    object CDSStockCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnGetText = CDSStockCODIGO_STKGetText
      Size = 8
    end
    object CDSStockREEMPLAZO_STK: TStringField
      DisplayLabel = 'Cod.Alternativo'
      FieldName = 'REEMPLAZO_STK'
      Origin = 'REEMPLAZO_STK'
      Required = True
      Visible = False
    end
    object CDSStockDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSStockPLU: TStringField
      FieldName = 'PLU'
      Origin = 'PLU'
      Size = 5
    end
    object CDSStockPLU_2: TStringField
      FieldName = 'PLU_2'
      Origin = 'PLU_2'
      Size = 5
    end
    object CDSStockMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Origin = 'MARCA_STK'
      Size = 4
    end
    object CDSStockDETALLE_STK_ADICIONAL: TStringField
      FieldName = 'DETALLE_STK_ADICIONAL'
      Origin = 'DETALLE_STK_ADICIONAL'
      Size = 200
    end
    object CDSStockRUBRO_STK: TStringField
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      Required = True
      Size = 3
    end
    object CDSStockSUBRUBRO_STK: TStringField
      FieldName = 'SUBRUBRO_STK'
      Origin = 'SUBRUBRO_STK'
      Required = True
      Size = 5
    end
    object CDSStockUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Visible = False
      Size = 3
    end
    object CDSStockCLASE_ARTICULO: TIntegerField
      FieldName = 'CLASE_ARTICULO'
      Origin = 'CLASE_ARTICULO'
      ProviderFlags = []
      Visible = False
    end
    object CDSStockDESCRIPCION_MARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'DESCRIPCION_MARCA'
      Origin = 'DESCRIPCION_MARCA'
      ProviderFlags = []
      Size = 25
    end
    object CDSStockDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      ProviderFlags = []
      Size = 35
    end
    object CDSStockDETALLE_SUBRUBRO: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      ProviderFlags = []
      Size = 45
    end
    object CDSStockMONEDA: TIntegerField
      DisplayLabel = 'Moneda'
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object CDSStockSIGNO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Signo'
      FieldName = 'SIGNO'
      Origin = 'SIGNO'
      ProviderFlags = []
      OnGetText = CDSStockSIGNOGetText
      Size = 5
    end
    object CDSStockFIJACION_PRECIO_TOTAL: TFloatField
      FieldName = 'FIJACION_PRECIO_TOTAL'
      Origin = 'FIJACION_PRECIO_TOTAL'
      Required = True
    end
    object CDSStockPRESENTACION_UNIDAD: TStringField
      DisplayLabel = 'Present.'
      FieldName = 'PRESENTACION_UNIDAD'
      Origin = 'PRESENTACION_UNIDAD'
      Size = 3
    end
    object CDSStockURL: TStringField
      FieldName = 'URL'
      Origin = 'URL'
      Visible = False
      Size = 250
    end
    object CDSStockLISTAPRECIO: TIntegerField
      DisplayLabel = 'Lista Precio'
      FieldName = 'LISTAPRECIO'
      Origin = 'ID_CAB'
      ProviderFlags = []
      Visible = False
    end
    object CDSStockMUESTRAPRECIO: TFloatField
      DisplayLabel = 'Precio'
      FieldName = 'MUESTRAPRECIO'
      Origin = 'MUESTRAPRECIO'
      ProviderFlags = []
      OnGetText = CDSStockMUESTRAPRECIOGetText
      DisplayFormat = ',0.000'
      EditFormat = ',0.000'
    end
    object CDSStockGTIA_MESES: TIntegerField
      DisplayLabel = 'Gtia.'
      FieldName = 'GTIA_MESES'
      Origin = 'GTIA_MESES'
      Required = True
      DisplayFormat = '0;0;-'
    end
    object CDSStockGARANTIAOFICIAL: TStringField
      FieldName = 'GARANTIAOFICIAL'
      Origin = 'GARANTIAOFICIAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockPOSICION: TStringField
      DisplayLabel = 'Ubicacion'
      FieldName = 'POSICION'
      Origin = 'POSICION'
      Size = 10
    end
    object CDSStockCONTROL_TRAZABILIDAD: TStringField
      FieldName = 'CONTROL_TRAZABILIDAD'
      Origin = 'CONTROL_TRAZABILIDAD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSStockPRESENTACION_CANTIDAD: TFloatField
      DisplayLabel = 'Pre.Cant'
      FieldName = 'PRESENTACION_CANTIDAD'
      Origin = 'PRESENTACION_CANTIDAD'
      Required = True
      DisplayFormat = ',0.000'
    end
    object CDSStockEXISTENCIA: TFloatField
      DisplayLabel = 'Existencia'
      FieldName = 'EXISTENCIA'
      Origin = 'EXISTENCIA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.000'
    end
    object CDSStockMUESTRAPRECIOIVA: TFloatField
      DisplayLabel = 'Precio c/Iva'
      FieldName = 'MUESTRAPRECIOIVA'
      Origin = 'PRECIO'
      ProviderFlags = []
      ReadOnly = True
      OnGetText = CDSStockMUESTRAPRECIOIVAGetText
      DisplayFormat = ',0.000'
      EditFormat = ',0.000'
    end
    object CDSStockDEPRODUCCION: TStringField
      FieldName = 'DEPRODUCCION'
      Origin = 'DEPRODUCCION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockFUAP: TSQLTimeStampField
      FieldName = 'FUAP'
      Origin = 'FUAP'
    end
    object CDSStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField
      FieldName = 'FECHA_ULTIMA_COMPRA'
      Origin = 'FECHA_ULTIMA_COMPRA'
    end
    object CDSStockFECHA_ALTA: TSQLTimeStampField
      FieldName = 'FECHA_ALTA'
      Origin = 'FECHA_ALTA'
    end
    object CDSStockENRECETA: TIntegerField
      FieldName = 'ENRECETA'
      Origin = 'ENRECETA'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSStockIDLISTAPROVE: TIntegerField
      FieldName = 'IDLISTAPROVE'
      Origin = 'IDLISTAPROVE'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSStockPUBLICAR_WEB: TStringField
      FieldName = 'PUBLICAR_WEB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockARTICULO_VARIABLE: TStringField
      FieldName = 'ARTICULO_VARIABLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockCODIGO_ART_VARIABLE: TStringField
      FieldName = 'CODIGO_ART_VARIABLE'
      Required = True
      Size = 8
    end
    object CDSStockPERCIBE_IVA: TStringField
      Alignment = taCenter
      DisplayLabel = 'Per'
      FieldName = 'PERCIBE_IVA'
      Required = True
      OnGetText = CDSStockPERCIBE_IVAGetText
      FixedChar = True
      Size = 1
    end
  end
  object CDSListaPrecioCab: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPListaPrecioCab'
    Left = 48
    Top = 248
    object CDSListaPrecioCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSListaPrecioCabNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
  end
  object DSPListaPrecioCab: TDataSetProvider
    DataSet = QListaPrecioCab
    Left = 56
    Top = 304
  end
  object CDSSubRubro: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'rubro'
        ParamType = ptInput
      end>
    ProviderName = 'DSPSubRubro'
    Left = 545
    Top = 421
    object CDSSubRubroCODIGO_SUBRUBRO: TStringField
      FieldName = 'CODIGO_SUBRUBRO'
      Origin = 'CODIGO_SUBRUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 5
    end
    object CDSSubRubroDETALLE_SUBRUBRO: TStringField
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      Size = 40
    end
  end
  object CDSRubro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRubro'
    Left = 201
    Top = 589
    object CDSRubroCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 3
    end
    object CDSRubroDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
    end
  end
  object CDSMarca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMarca'
    Left = 273
    Top = 397
    object CDSMarcaMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Origin = 'MARCA_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 4
    end
    object CDSMarcaDESCRIPCION_MARCA: TStringField
      FieldName = 'DESCRIPCION_MARCA'
      Origin = 'DESCRIPCION_MARCA'
      Size = 25
    end
  end
  object DSPSubRubro: TDataSetProvider
    DataSet = QSubRubro
    Options = []
    Left = 472
    Top = 416
  end
  object DSPRubro: TDataSetProvider
    DataSet = QRubro
    Options = []
    Left = 144
    Top = 584
  end
  object DSPMarca: TDataSetProvider
    DataSet = QMarca
    Options = []
    Left = 208
    Top = 400
  end
  object CDSStockFotos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPStockFotos'
    AfterScroll = CDSStockFotosAfterScroll
    Left = 200
    Top = 640
    object CDSStockFotosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSStockFotosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CDSStockFotosFOTO: TStringField
      FieldName = 'FOTO'
      Origin = 'FOTO'
      Size = 100
    end
    object CDSStockFotosPOR_DEFECTO: TStringField
      FieldName = 'POR_DEFECTO'
      Origin = 'POR_DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPStockFotos: TDataSetProvider
    DataSet = QStockFotos
    Options = []
    Left = 136
    Top = 640
  end
  object DSStockFotos: TDataSource
    DataSet = CDSStockFotos
    Left = 264
    Top = 640
  end
  object CDSLPreciosUsuarios: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftFloat
        Name = 'usuario'
        ParamType = ptInput
      end>
    ProviderName = 'DSPLPreciosUsuarios'
    Left = 200
    Top = 328
    object CDSLPreciosUsuariosID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object CDSLPreciosUsuariosID_LISTA: TIntegerField
      FieldName = 'ID_LISTA'
      Origin = 'ID_LISTA'
    end
    object CDSLPreciosUsuariosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 50
    end
    object CDSLPreciosUsuariosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInKey]
    end
    object CDSLPreciosUsuariosEXCLUSIVO_EFECTIVO: TStringField
      FieldName = 'EXCLUSIVO_EFECTIVO'
      Origin = 'EXCLUSIVO_EFECTIVO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object CDSLPreciosUsuariosF_PAGO: TIntegerField
      FieldName = 'F_PAGO'
      Origin = 'F_PAGO'
      ProviderFlags = []
    end
  end
  object DSPLPreciosUsuarios: TDataSetProvider
    DataSet = QLPreciosUsuarios
    Options = []
    Left = 304
    Top = 328
  end
  object JvFormStorage1: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    PreventResize = True
    StoredValues = <>
    Left = 696
    Top = 264
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    SubStorages = <>
    Left = 760
    Top = 264
  end
  object CDSExistencia: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO_STK'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'DETALLE_STK'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'FISICO'
        DataType = ftFloat
      end
      item
        Name = 'COMPROMETIDO'
        DataType = ftFloat
      end
      item
        Name = 'SALDO'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'DEPOSITO_STK'
        DataType = ftInteger
      end
      item
        Name = 'EN_TRANSITO'
        DataType = ftFloat
      end
      item
        Name = 'ACOPIO'
        DataType = ftFloat
      end
      item
        Name = 'DEPOSITO_NOMBRE'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'SEC'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'UBIC'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'FULTAJUSTE'
        DataType = ftTimeStamp
      end
      item
        Name = 'PRIMERO'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'CDSExistenciaIndex1'
        Fields = 'PRIMERO;FISICO'
        Options = [ixDescending]
      end>
    Params = <
      item
        DataType = ftString
        Name = 'unidad'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'fisico'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'fisico'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'usuario'
        ParamType = ptInput
      end>
    ProviderName = 'DSPExistencia'
    StoreDefs = True
    AfterOpen = CDSExistenciaAfterOpen
    Left = 504
    Top = 560
    object CDSExistenciaCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      Size = 8
    end
    object CDSExistenciaDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSExistenciaDEPOSITO_STK: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'DEPOSITO_STK'
      Origin = 'DEPOSITO_STK'
    end
    object CDSExistenciaDEPOSITO_NOMBRE: TStringField
      DisplayLabel = 'Deposito'
      FieldName = 'DEPOSITO_NOMBRE'
      Origin = 'DEPOSITO_NOMBRE'
      Size = 25
    end
    object CDSExistenciaSEC: TStringField
      DisplayLabel = 'Sec'
      FieldName = 'SEC'
      Origin = 'SEC'
      Size = 2
    end
    object CDSExistenciaUBIC: TStringField
      DisplayLabel = 'Ubic.'
      FieldName = 'UBIC'
      Origin = 'UBIC'
      Size = 3
    end
    object CDSExistenciaFULTAJUSTE: TSQLTimeStampField
      FieldName = 'FULTAJUSTE'
      Origin = 'FULTAJUSTE'
    end
    object CDSExistenciaFISICO: TFloatField
      DisplayLabel = 'Fisico'
      FieldName = 'FISICO'
      Origin = 'FISICO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSExistenciaCOMPROMETIDO: TFloatField
      DisplayLabel = 'Compr.'
      FieldName = 'COMPROMETIDO'
      Origin = 'COMPROMETIDO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSExistenciaSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = 'SALDO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSExistenciaEN_TRANSITO: TFloatField
      DisplayLabel = 'Trans.'
      FieldName = 'EN_TRANSITO'
      Origin = 'EN_TRANSITO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSExistenciaACOPIO: TFloatField
      DisplayLabel = 'Acopio'
      FieldName = 'ACOPIO'
      Origin = 'ACOPIO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSExistenciaPRIMERO: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'PRIMERO'
    end
  end
  object DSExistencia: TDataSource
    DataSet = CDSExistencia
    Left = 580
    Top = 561
  end
  object DSPExistencia: TDataSetProvider
    DataSet = DMMain_FD.QExistencia
    Options = [poAllowCommandText]
    Left = 420
    Top = 560
  end
  object QStock: TFDQuery
    ObjectView = False
    Connection = DMMain_FD.fdcGestion
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMapRules, fvStrsTrim, fvStrsTrim2Len]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtBCD
        TargetDataType = dtDouble
      end
      item
        SourceDataType = dtFmtBCD
        TargetDataType = dtDouble
      end
      item
        SourceDataType = dtInt64
        TargetDataType = dtInt32
      end>
    FormatOptions.StrsTrim = False
    FormatOptions.StrsTrim2Len = True
    SQL.Strings = (
      
        'select s.codigo_stk,s.reemplazo_stk,s.plu ,s.plu_2,s.detalle_stk' +
        ',s.marca_stk,s.detalle_stk_adicional,'
      
        's.rubro_stk,s.subrubro_stk,s.fijacion_precio_total,s.unidad,s.cl' +
        'ase_articulo,s.fuap,'
      
        'm.descripcion_marca,r.detalle_rubro,sr.detalle_subrubro,s.moneda' +
        ',mon.cotizacion,mon.signo,'
      
        's.presentacion_unidad,s.presentacion_cantidad,s.url,d.id_cab as ' +
        'listaPrecio,'
      
        's.fecha_ultima_compra,s.fecha_alta,s.gtia_meses,s.garantiaoficia' +
        'l,s.control_trazabilidad,'
      
        '( d.precio_gravado + d.precio_exento ) as MuestraPrecio,s.articu' +
        'lo_variable,s.CODIGO_ART_VARIABLE,'
      
        '( d.precio ) as MuestraPrecioIva,s.posicion,s.deproduccion,s.pub' +
        'licar_web,s.percibe_iva,'
      
        '(select sum(dpk.fisico) from depositostk dpk where (dpk.codigo_s' +
        'tk = s.codigo_stk) ) as Existencia,'
      
        '(select cast(sum(pd.id) as Integer) from stock_produccion_det pd' +
        ' where pd.codigo_stk=s.codigo_stk) as EnReceta,-1 as IdListaProv' +
        'e '
      'from stock s'
      'left join marcas m on m.marca_stk=s.marca_stk'
      'left join rubros r on r.codigo_rubro=s.rubro_stk'
      'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk'
      
        'left join listaprecioespecialArt d on d.codigoarticulo=s.codigo_' +
        'stk'
      'left join monedas mon on mon.id=s.moneda'
      'where s.codigo_stk = :Dato'
      
        '      and (( s.clase_Articulo = :clase or :clase = -1 ) or ( s.c' +
        'lase_Articulo = :clase2 or :clase2 = -1 ))'
      '      and (s.rubro_stk= :rubro or :rubro = '#39'***'#39' )'
      '      and (s.subrubro_stk= :subrubro or :subrubro = '#39'*****'#39' )'
      '      and (s.marca_stk= :marca or :marca = '#39'****'#39' )')
    Left = 229
    Top = 220
    ParamData = <
      item
        Position = 1
        Name = 'clase'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'clase'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'clase2'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'clase2'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'lista'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'lista'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'rubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'rubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 9
        Name = 'subrubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 10
        Name = 'subrubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 11
        Name = 'marca'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 12
        Name = 'marca'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 13
        Name = 'Dato'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QRubro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select codigo_rubro,detalle_rubro from rubros '
      'order by detalle_rubro')
    Left = 80
    Top = 584
  end
  object QSubRubro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select codigo_subrubro,detalle_subRubro from subrubros '
      'where codigo_rubro = :rubro')
    Left = 392
    Top = 432
    ParamData = <
      item
        Position = 1
        Name = 'rubro'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QLPreciosUsuarios: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select l.id_usuario,l.id_lista,lp.nombre,'
      
        '       lp.id,lp.EXCLUSIVO_EFECTIVO,lp.f_pago from listaprecios_u' +
        'suario l'
      'left join listaprecioespecialcab lp on lp.id=l.id_lista'
      'where l.id_usuario= :usuario')
    Left = 392
    Top = 328
    ParamData = <
      item
        Position = 1
        Name = 'usuario'
        DataType = ftFloat
        ParamType = ptInput
      end>
  end
  object QMarca: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select marca_stk,descripcion_marca from marcas order by descripc' +
        'ion_marca')
    Left = 152
    Top = 400
  end
  object QListaPrecioCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from listaprecioespecialcab')
    Left = 56
    Top = 360
  end
  object QListaPrecioPorDefecto: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select id,f_pago from  listaprecioespecialcab where pordefecto='#39 +
        'S'#39)
    Left = 48
    Top = 432
    object QListaPrecioPorDefectoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QListaPrecioPorDefectoF_PAGO: TIntegerField
      FieldName = 'F_PAGO'
      Origin = 'F_PAGO'
    end
  end
  object QPimeraListaPrecio: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select Min(id) from  listaprecioespecialcab')
    Left = 96
    Top = 416
    object QPimeraListaPrecioMIN: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MIN'
      Origin = 'MIN'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QMoneda_: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select m.* from monedas m ')
    Left = 576
    Top = 632
  end
  object QHayExcepcionesUsuario: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDate
      end>
    SQL.Strings = (
      
        'select count(*) from usuario_lista_eceptuar u where u.id_usuario' +
        '=:id')
    Left = 408
    Top = 648
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object QStockFotos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select sf.* from stock_fotos sf where sf.codigo=:codigo')
    Left = 72
    Top = 640
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QStockFotosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QStockFotosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QStockFotosFOTO: TStringField
      FieldName = 'FOTO'
      Origin = 'FOTO'
      Size = 100
    end
    object QStockFotosPOR_DEFECTO: TStringField
      FieldName = 'POR_DEFECTO'
      Origin = 'POR_DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object CDSMonedas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMonedas'
    Left = 712
    Top = 632
    object CDSMonedasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSMonedasMONEDA: TStringField
      FieldName = 'MONEDA'
      Size = 15
    end
    object CDSMonedasCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object CDSMonedasSIGNO: TStringField
      FieldName = 'SIGNO'
      Size = 5
    end
    object CDSMonedasORDEN: TSmallintField
      FieldName = 'ORDEN'
      Required = True
    end
    object CDSMonedasCOTIZACION_COMPRA: TFloatField
      FieldName = 'COTIZACION_COMPRA'
    end
  end
  object DSPMonedas: TDataSetProvider
    DataSet = QMoneda_
    Options = []
    Left = 648
    Top = 632
  end
  object PopupMenu1: TPopupMenu
    Left = 816
    Top = 208
    object FiltrarPublicadosenWeb1: TMenuItem
      Caption = 'Filtrar Publicados en Web'
      OnClick = FiltrarPublicadosenWeb1Click
    end
    object FiltrarLosArticulosTrazables1: TMenuItem
      Caption = 'Filtrar Los Articulos Trazables'
      OnClick = FiltrarLosArticulosTrazables1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object BuscarLotes1: TMenuItem
      Action = BuscarLotes
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object FiltrarInactivos: TMenuItem
      Caption = 'Filtrar Inactivos'
      OnClick = FiltrarInactivosClick
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object FiltradeProduccion1: TMenuItem
      Caption = 'Filtra de Produccion'
      OnClick = FiltradeProduccion1Click
    end
  end
end

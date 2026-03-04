inherited FormRegistroDiarioOP: TFormRegistroDiarioOP
  Caption = 'Registro Diario Produccion'
  ClientHeight = 797
  ClientWidth = 1110
  StyleElements = [seFont, seClient, seBorder]
  OnResize = FormResize
  ExplicitWidth = 1128
  ExplicitHeight = 838
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1110
    Height = 740
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1110
    ExplicitHeight = 740
    object pcMovimientos: TPageControl
      Left = 0
      Top = 0
      Width = 1110
      Height = 740
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Modo Detalle'
        object Label1: TLabel
          Left = 7
          Top = 18
          Width = 9
          Height = 13
          Caption = 'Id'
          FocusControl = edId
        end
        object Label2: TLabel
          Left = 7
          Top = 64
          Width = 107
          Height = 13
          Caption = 'Tipo/Modelo Producto'
        end
        object Label4: TLabel
          Left = 158
          Top = 64
          Width = 30
          Height = 13
          Caption = 'Fecha'
          FocusControl = dbeFecha
        end
        object Label8: TLabel
          Left = 158
          Top = 110
          Width = 116
          Height = 13
          Caption = 'N.Orden Produccion (PI)'
          FocusControl = edNroCpbte
        end
        object Label12: TLabel
          Left = 533
          Top = 156
          Width = 71
          Height = 13
          Caption = 'Nro.de Troquel'
          FocusControl = dbeNroTroquel
        end
        object Label13: TLabel
          Left = 286
          Top = 110
          Width = 97
          Height = 13
          Caption = 'Detalle/Designacion'
          FocusControl = edDetalleArticulo
        end
        object Label14: TLabel
          Left = 533
          Top = 111
          Width = 83
          Height = 13
          Caption = 'Cantidad Pedidas'
          FocusControl = dbeCantidadPedida
        end
        object Label15: TLabel
          Left = 285
          Top = 156
          Width = 92
          Height = 13
          Caption = 'Cantidad Fabricada'
          FocusControl = dbeCantidadFabricada
        end
        object Label16: TLabel
          Left = 679
          Top = 108
          Width = 78
          Height = 13
          Caption = 'Cant.Pendientes'
          FocusControl = dbeCanPedientes
        end
        object Label17: TLabel
          Left = 110
          Top = 210
          Width = 62
          Height = 13
          Caption = 'Hormigon Lts'
          FocusControl = dbeHormigoLts
        end
        object Label18: TLabel
          Left = 261
          Top = 213
          Width = 64
          Height = 13
          Caption = 'Hormigon Kg.'
          FocusControl = dbeHormigonKg
        end
        object Label19: TLabel
          Left = 110
          Top = 256
          Width = 86
          Height = 13
          Caption = 'Hormigon Kg Real'
          FocusControl = dneHormigonKgReal
        end
        object Label20: TLabel
          Left = 261
          Top = 253
          Width = 82
          Height = 13
          Caption = 'Hormigon Lt.Real'
          FocusControl = dbeHormLtsReal
        end
        object Label21: TLabel
          Left = 261
          Top = 309
          Width = 77
          Height = 13
          Caption = 'Puestas a Tierra'
          FocusControl = dbePuestaTierra
        end
        object Label22: TLabel
          Left = 114
          Top = 352
          Width = 52
          Height = 13
          Caption = 'Acero Pas.'
          FocusControl = dbeAceroPas
        end
        object Label23: TLabel
          Left = 113
          Top = 309
          Width = 40
          Height = 13
          Caption = 'Aros Kg.'
          FocusControl = dbeArosKg
        end
        object Label24: TLabel
          Left = 261
          Top = 352
          Width = 61
          Height = 13
          Caption = 'Trenzado Kg'
          FocusControl = dbeTrenzaKg
        end
        object Label25: TLabel
          Left = 424
          Top = 309
          Width = 67
          Height = 13
          Caption = 'Cordondes Kg'
          FocusControl = dbeCordones
        end
        object Label26: TLabel
          Left = 576
          Top = 306
          Width = 54
          Height = 13
          Caption = 'Alambre Kg'
          FocusControl = dneAlambreKg
        end
        object Label27: TLabel
          Left = 424
          Top = 213
          Width = 51
          Height = 13
          Caption = 'Piedras Kg'
          FocusControl = dbePiedraKg
        end
        object Label28: TLabel
          Left = 576
          Top = 216
          Width = 44
          Height = 13
          Caption = 'Arena Kg'
          FocusControl = dbeArenaKg
        end
        object Label29: TLabel
          Left = 719
          Top = 210
          Width = 58
          Height = 13
          Caption = 'Cemento Kg'
          FocusControl = dbeCementoKg
        end
        object Label30: TLabel
          Left = 424
          Top = 256
          Width = 76
          Height = 13
          Caption = 'Piedars Kg Real'
          FocusControl = debPiedraKgReal
        end
        object Label31: TLabel
          Left = 576
          Top = 256
          Width = 69
          Height = 13
          Caption = 'Arena Kg Real'
          FocusControl = dbeArenaKgReal
        end
        object Label32: TLabel
          Left = 719
          Top = 253
          Width = 83
          Height = 13
          Caption = 'Cemento Kg Real'
          FocusControl = dbeCementoKgReal
        end
        object Label33: TLabel
          Left = 5
          Top = 477
          Width = 93
          Height = 13
          Caption = 'Diferencia Horm.Lts'
          FocusControl = dbeDifHormigonLts
        end
        object Label34: TLabel
          Left = 165
          Top = 477
          Width = 115
          Height = 13
          Caption = 'Diferencia Hormigon Kg.'
          FocusControl = dbeDifHormigonKg
        end
        object Label35: TLabel
          Left = 312
          Top = 474
          Width = 71
          Height = 13
          Caption = 'Dif.Piedera Kg.'
          FocusControl = dbeDifPiedraKg
        end
        object Label36: TLabel
          Left = 453
          Top = 474
          Width = 60
          Height = 13
          Caption = 'Dif.Arena Kg'
          FocusControl = dbeDifArenaKg
        end
        object Label37: TLabel
          Left = 592
          Top = 474
          Width = 77
          Height = 13
          Caption = 'Dif.Cemento Kg.'
          FocusControl = dbeDifCementoKg
        end
        object Label38: TLabel
          Left = 2
          Top = 400
          Width = 71
          Height = 13
          Caption = 'Observaciones'
          FocusControl = debObs
        end
        object Label7: TLabel
          Left = 289
          Top = 66
          Width = 32
          Height = 13
          Caption = 'Cliente'
        end
        object Label5: TLabel
          Left = 679
          Top = 66
          Width = 28
          Height = 13
          Caption = 'Turno'
        end
        object Label6: TLabel
          Left = 7
          Top = 110
          Width = 93
          Height = 13
          Caption = 'Nro.Orden Prod.(PI)'
          FocusControl = edNroCpbte
        end
        object DBText1: TDBText
          Left = 215
          Top = 155
          Width = 65
          Height = 17
          DataField = 'ID_OPROD_CAB'
          DataSource = DSRegDiario
        end
        object DBText2: TDBText
          Left = 214
          Top = 156
          Width = 65
          Height = 17
          DataField = 'ID_OPROD_DET'
          DataSource = DSRegDiario
        end
        object Label3: TLabel
          Left = 139
          Top = 154
          Width = 49
          Height = 13
          Caption = 'Id Cab OP'
        end
        object Label9: TLabel
          Left = 139
          Top = 169
          Width = 47
          Height = 13
          Caption = 'Id Det OP'
        end
        object Label10: TLabel
          Left = 679
          Top = 156
          Width = 37
          Height = 13
          Caption = 'Material'
        end
        object DBText4: TDBText
          Left = 448
          Top = 110
          Width = 65
          Height = 17
          DataField = 'CODIGO'
          DataSource = DSRegDiario
        end
        object dbeDifHormigonLts: TDBEdit
          Left = 5
          Top = 493
          Width = 121
          Height = 24
          Color = clInfoBk
          DataField = 'DIF_HORM_LTS'
          DataSource = DSRegDiario
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object dbeDifHormigonKg: TDBEdit
          Left = 165
          Top = 493
          Width = 121
          Height = 24
          Color = clInfoBk
          DataField = 'DIF_HORM_KG'
          DataSource = DSRegDiario
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object dbeDifPiedraKg: TDBEdit
          Left = 312
          Top = 493
          Width = 121
          Height = 24
          Color = clInfoBk
          DataField = 'DIF_PIEDRA_KG'
          DataSource = DSRegDiario
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object dbeDifArenaKg: TDBEdit
          Left = 453
          Top = 493
          Width = 121
          Height = 24
          Color = clInfoBk
          DataField = 'DIF_ARENA_KG'
          DataSource = DSRegDiario
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object dbeDifCementoKg: TDBEdit
          Left = 592
          Top = 493
          Width = 121
          Height = 24
          Color = clInfoBk
          DataField = 'DIF_CEMENTO_KG'
          DataSource = DSRegDiario
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object edId: TDBEdit
          Left = 7
          Top = 37
          Width = 121
          Height = 21
          Color = clInfoBk
          DataField = 'ID'
          DataSource = DSRegDiario
          Enabled = False
          TabOrder = 5
        end
        object dbePuestaTierra: TDBEdit
          Left = 261
          Top = 325
          Width = 121
          Height = 21
          DataField = 'PATS_CANT'
          DataSource = DSRegDiario
          TabOrder = 6
        end
        object dbeCantidadPedida: TDBEdit
          Left = 533
          Top = 128
          Width = 121
          Height = 21
          Color = clInfoBk
          DataField = 'CANT_PEDIDA'
          DataSource = DSRegDiario
          Enabled = False
          TabOrder = 7
        end
        object dbeCantidadFabricada: TDBEdit
          Left = 285
          Top = 175
          Width = 121
          Height = 21
          Color = clInfoBk
          DataField = 'CANT_FABRIC'
          DataSource = DSRegDiario
          Enabled = False
          TabOrder = 8
        end
        object dbeCanPedientes: TDBEdit
          Left = 679
          Top = 127
          Width = 147
          Height = 21
          Color = clInfoBk
          DataField = 'CANT_PEND'
          DataSource = DSRegDiario
          Enabled = False
          TabOrder = 9
        end
        object dbeHormigoLts: TDBEdit
          Left = 110
          Top = 229
          Width = 121
          Height = 24
          DataField = 'HORM_LTS'
          DataSource = DSRegDiario
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object dbeHormigonKg: TDBEdit
          Left = 261
          Top = 229
          Width = 121
          Height = 24
          Color = clInfoBk
          DataField = 'HORM_KG'
          DataSource = DSRegDiario
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
        object dneHormigonKgReal: TDBEdit
          Left = 110
          Top = 272
          Width = 121
          Height = 24
          DataField = 'HORM_REAL_KG'
          DataSource = DSRegDiario
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
        end
        object dbeHormLtsReal: TDBEdit
          Left = 261
          Top = 272
          Width = 121
          Height = 24
          Color = clInfoBk
          DataField = 'HORM_REAL_LTS'
          DataSource = DSRegDiario
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
        end
        object dbeAceroPas: TDBEdit
          Left = 114
          Top = 368
          Width = 121
          Height = 21
          DataField = 'ACERO_PAS_KG'
          DataSource = DSRegDiario
          TabOrder = 14
        end
        object dbeArosKg: TDBEdit
          Left = 113
          Top = 325
          Width = 121
          Height = 21
          DataField = 'AROS_KG'
          DataSource = DSRegDiario
          TabOrder = 15
        end
        object dbeTrenzaKg: TDBEdit
          Left = 261
          Top = 368
          Width = 121
          Height = 21
          DataField = 'TRENZAS_KG'
          DataSource = DSRegDiario
          TabOrder = 16
        end
        object dbeCordones: TDBEdit
          Left = 424
          Top = 325
          Width = 121
          Height = 21
          DataField = 'CORDONES_KG'
          DataSource = DSRegDiario
          TabOrder = 17
        end
        object dneAlambreKg: TDBEdit
          Left = 576
          Top = 325
          Width = 121
          Height = 21
          DataField = 'ALAMBRE_KG'
          DataSource = DSRegDiario
          TabOrder = 18
        end
        object dbePiedraKg: TDBEdit
          Left = 424
          Top = 229
          Width = 121
          Height = 24
          Color = clInfoBk
          DataField = 'PIEDRA_KG'
          DataSource = DSRegDiario
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 19
        end
        object dbeArenaKg: TDBEdit
          Left = 576
          Top = 229
          Width = 121
          Height = 24
          Color = clInfoBk
          DataField = 'ARENA_KG'
          DataSource = DSRegDiario
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 20
        end
        object dbeCementoKg: TDBEdit
          Left = 719
          Top = 229
          Width = 121
          Height = 24
          Color = clInfoBk
          DataField = 'CEMENTO_KG'
          DataSource = DSRegDiario
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 21
        end
        object debPiedraKgReal: TDBEdit
          Left = 424
          Top = 272
          Width = 121
          Height = 24
          Color = clInfoBk
          DataField = 'PIEDRA_KG_REAL'
          DataSource = DSRegDiario
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 22
        end
        object dbeArenaKgReal: TDBEdit
          Left = 576
          Top = 272
          Width = 121
          Height = 24
          Color = clInfoBk
          DataField = 'ARENA_KG_REAL'
          DataSource = DSRegDiario
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 23
        end
        object dbeCementoKgReal: TDBEdit
          Left = 719
          Top = 272
          Width = 121
          Height = 24
          Color = clInfoBk
          DataField = 'CEMENTO_KG_REAL'
          DataSource = DSRegDiario
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 24
        end
        object debObs: TDBEdit
          Left = 0
          Top = 419
          Width = 863
          Height = 49
          AutoSize = False
          DataField = 'OBSERVACIONES'
          DataSource = DSRegDiario
          TabOrder = 25
        end
        object dbeFecha: TJvDBDateEdit
          Left = 158
          Top = 83
          Width = 121
          Height = 21
          DataField = 'FECHA'
          DataSource = DSRegDiario
          ShowNullDate = False
          TabOrder = 26
        end
        object cbModelos: TJvDBLookupCombo
          Left = 7
          Top = 83
          Width = 145
          Height = 21
          DataField = 'ID_MODELO'
          DataSource = DSRegDiario
          LookupField = 'ID'
          LookupDisplay = 'MODELO'
          TabOrder = 27
        end
        object cbTruno: TJvDBComboBox
          Left = 679
          Top = 83
          Width = 145
          Height = 21
          DataField = 'TURNO'
          DataSource = DSRegDiario
          Items.Strings = (
            'Ma'#241'ana'
            'Tarde '
            'Noche')
          TabOrder = 28
          Values.Strings = (
            'M'
            'T'
            'N')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -12
          ListSettings.OutfilteredValueFont.Name = 'Segoe UI'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object edNombreCliente: TDBEdit
          Left = 365
          Top = 83
          Width = 281
          Height = 21
          Color = clInfoBk
          DataField = 'NOMBRE_CLIENTE'
          DataSource = DSRegDiario
          Enabled = False
          TabOrder = 29
          StyleElements = [seBorder]
        end
        object ceCliente: TJvDBComboEdit
          Left = 286
          Top = 83
          Width = 73
          Height = 21
          StyleElements = [seBorder]
          ClickKey = 16397
          Color = clInfoBk
          DataField = 'CLIENTE'
          DataSource = DSRegDiario
          Enabled = False
          Glyph.Data = {
            4E000000424D4E000000000000003E000000280000000A000000040000000100
            010000000000100000000000000000000000020000000200000000000000FFFF
            FF00FFC000003300000033000000FFC00000}
          ButtonWidth = 16
          TabOrder = 30
          OnButtonClick = BuscarClienteExecute
          DisabledColor = clInfoBk
        end
        object edNroCpbte: TDBEdit
          Left = 158
          Top = 128
          Width = 122
          Height = 21
          Color = clInfoBk
          DataField = 'NRO_CPBTE_OP'
          DataSource = DSRegDiario
          Enabled = False
          TabOrder = 31
        end
        object dbeNroTroquel: TDBEdit
          Left = 533
          Top = 175
          Width = 121
          Height = 21
          DataField = 'TROQUEL'
          DataSource = DSRegDiario
          TabOrder = 32
        end
        object edDetalleArticulo: TDBEdit
          Left = 285
          Top = 127
          Width = 242
          Height = 21
          DataField = 'DESIGNACION_CIMA_BASE'
          DataSource = DSRegDiario
          TabOrder = 33
        end
        object edBuscar: TDBAdvSearchEdit
          Left = 9
          Top = 127
          Width = 143
          Height = 22
          Align = alCustom
          Appearance.CategoryControlFont = False
          Appearance.CategoryFont.Charset = DEFAULT_CHARSET
          Appearance.CategoryFont.Color = clWindowText
          Appearance.CategoryFont.Height = -11
          Appearance.CategoryFont.Name = 'Tahoma'
          Appearance.CategoryFont.Style = []
          Appearance.DescriptionFont.Charset = DEFAULT_CHARSET
          Appearance.DescriptionFont.Color = clWindowText
          Appearance.DescriptionFont.Height = -11
          Appearance.DescriptionFont.Name = 'Tahoma'
          Appearance.DescriptionFont.Style = []
          Appearance.DescriptionControlFont = False
          Appearance.SelectionColor = 15914434
          Appearance.SelectionTextColor = 3881787
          Appearance.FilterCountFont.Charset = DEFAULT_CHARSET
          Appearance.FilterCountFont.Color = clWindowText
          Appearance.FilterCountFont.Height = -11
          Appearance.FilterCountFont.Name = 'Tahoma'
          Appearance.FilterCountFont.Style = []
          Appearance.FilterCountFormat = '(%d)'
          Appearance.ItemCategoryFont.Charset = DEFAULT_CHARSET
          Appearance.ItemCategoryFont.Color = clOrange
          Appearance.ItemCategoryFont.Height = -11
          Appearance.ItemCategoryFont.Name = 'Tahoma'
          Appearance.ItemCategoryFont.Style = []
          Appearance.ItemCategoryFormat = 'in %s'
          BorderColor = 10724259
          Categories = <
            item
              Caption = 'codigo_proveedor'
              ID = 0
              Tag = 0
            end
            item
              Caption = 'detalle'
              ID = 1
              Tag = 0
            end>
          CategoryButton.Appearance.BorderColor = 11382963
          CategoryButton.Appearance.BorderColorHot = 11565130
          CategoryButton.Appearance.BorderColorCheckedHot = 11565130
          CategoryButton.Appearance.BorderColorDown = 11565130
          CategoryButton.Appearance.BorderColorChecked = 13744549
          CategoryButton.Appearance.BorderColorDisabled = 13948116
          CategoryButton.Appearance.Color = clWhite
          CategoryButton.Appearance.ColorTo = clWhite
          CategoryButton.Appearance.ColorChecked = 13744549
          CategoryButton.Appearance.ColorCheckedTo = 13744549
          CategoryButton.Appearance.ColorDisabled = clWhite
          CategoryButton.Appearance.ColorDisabledTo = clNone
          CategoryButton.Appearance.ColorDown = 11565130
          CategoryButton.Appearance.ColorDownTo = 11565130
          CategoryButton.Appearance.ColorHot = 16444643
          CategoryButton.Appearance.ColorHotTo = 16444643
          CategoryButton.Appearance.ColorMirror = clWhite
          CategoryButton.Appearance.ColorMirrorTo = clWhite
          CategoryButton.Appearance.ColorMirrorHot = 16444643
          CategoryButton.Appearance.ColorMirrorHotTo = 16444643
          CategoryButton.Appearance.ColorMirrorDown = 11565130
          CategoryButton.Appearance.ColorMirrorDownTo = 11565130
          CategoryButton.Appearance.ColorMirrorChecked = 13744549
          CategoryButton.Appearance.ColorMirrorCheckedTo = 13744549
          CategoryButton.Appearance.ColorMirrorDisabled = clWhite
          CategoryButton.Appearance.ColorMirrorDisabledTo = clNone
          CategoryButton.Appearance.GradientHot = ggVertical
          CategoryButton.Appearance.GradientMirrorHot = ggVertical
          CategoryButton.Appearance.GradientDown = ggVertical
          CategoryButton.Appearance.GradientMirrorDown = ggVertical
          CategoryButton.Appearance.GradientChecked = ggVertical
          CategoryButton.Appearance.TextColorChecked = 3750459
          CategoryButton.Appearance.TextColorDown = 2303013
          CategoryButton.Appearance.TextColorHot = 2303013
          CategoryButton.Appearance.TextColorDisabled = 13948116
          CategoryButton.Visible = False
          Columns = <
            item
              Alignment = gtaCenter
              ControlFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Trimming = True
              Width = 100
              DataField = 'NROCPBTE'
            end
            item
              ControlFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Width = 240
              DataField = 'NOMBRE'
            end
            item
              Alignment = gtaCenter
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              Width = 90
              DataField = 'CODIGO'
            end
            item
              ControlFont = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Trimming = True
              Width = 200
              DataField = 'DETALLE'
            end
            item
              Alignment = gtaTrailing
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              Width = 70
              DataField = 'ID_OPCAB'
            end
            item
              Alignment = gtaTrailing
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              Width = 70
              DataField = 'ID'
            end>
          DropDownHeader.Color = clWhite
          DropDownHeader.ColorTo = clNone
          DropDownHeader.Font.Charset = DEFAULT_CHARSET
          DropDownHeader.Font.Color = 6184542
          DropDownHeader.Font.Height = -11
          DropDownHeader.Font.Name = 'Tahoma'
          DropDownHeader.Font.Style = []
          DropDownHeader.GradientDirection = gdHorizontal
          DropDownHeader.Visible = True
          DropDownHeader.BorderColor = 11250603
          DropDownHeader.BorderWidth = 0
          DropDownHeader.Buttons = <
            item
              Caption = 'Nro.Cpbte'
              Width = 90
            end
            item
              Caption = 'Nombre'
              Width = 250
            end
            item
              Caption = 'Codigo'
              Width = 90
            end
            item
              Caption = 'Detalle'
              Width = 260
            end
            item
              Caption = 'Id Cab'
              Width = 60
            end
            item
              Caption = 'Id Item'
              Width = 50
            end>
          DropDownHeader.ButtonAlignment = baLeft
          DropDownHeight = 250
          DropDownFooter.Color = clWhite
          DropDownFooter.ColorTo = clNone
          DropDownFooter.Font.Charset = DEFAULT_CHARSET
          DropDownFooter.Font.Color = 6184542
          DropDownFooter.Font.Height = -11
          DropDownFooter.Font.Name = 'Tahoma'
          DropDownFooter.Font.Style = []
          DropDownFooter.Visible = True
          DropDownFooter.BorderColor = 11250603
          DropDownFooter.BorderWidth = 0
          DropDownFooter.Buttons = <>
          DropDownShadow = True
          DropDownWidth = 820
          EmptyText = 'Buscar...'
          FilterCondition.AllColumns = True
          FilterCondition.AutoSelect = True
          FocusBorder = True
          FocusFontColor = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4474440
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Images = ImageList1
          ItemHeight = 20
          Items = <>
          ParentFont = False
          SearchButton.Appearance.BorderColor = 11382963
          SearchButton.Appearance.BorderColorHot = 11565130
          SearchButton.Appearance.BorderColorCheckedHot = 11565130
          SearchButton.Appearance.BorderColorDown = 11565130
          SearchButton.Appearance.BorderColorChecked = 13744549
          SearchButton.Appearance.BorderColorDisabled = 13948116
          SearchButton.Appearance.Color = clWhite
          SearchButton.Appearance.ColorTo = clWhite
          SearchButton.Appearance.ColorChecked = 13744549
          SearchButton.Appearance.ColorCheckedTo = 13744549
          SearchButton.Appearance.ColorDisabled = clWhite
          SearchButton.Appearance.ColorDisabledTo = clNone
          SearchButton.Appearance.ColorDown = 11565130
          SearchButton.Appearance.ColorDownTo = 11565130
          SearchButton.Appearance.ColorHot = 16444643
          SearchButton.Appearance.ColorHotTo = 16444643
          SearchButton.Appearance.ColorMirror = clWhite
          SearchButton.Appearance.ColorMirrorTo = clWhite
          SearchButton.Appearance.ColorMirrorHot = 16444643
          SearchButton.Appearance.ColorMirrorHotTo = 16444643
          SearchButton.Appearance.ColorMirrorDown = 11565130
          SearchButton.Appearance.ColorMirrorDownTo = 11565130
          SearchButton.Appearance.ColorMirrorChecked = 13744549
          SearchButton.Appearance.ColorMirrorCheckedTo = 13744549
          SearchButton.Appearance.ColorMirrorDisabled = clWhite
          SearchButton.Appearance.ColorMirrorDisabledTo = clNone
          SearchButton.Appearance.GradientHot = ggVertical
          SearchButton.Appearance.GradientMirrorHot = ggVertical
          SearchButton.Appearance.GradientDown = ggVertical
          SearchButton.Appearance.GradientMirrorDown = ggVertical
          SearchButton.Appearance.GradientChecked = ggVertical
          SearchButton.Appearance.TextColorChecked = 3750459
          SearchButton.Appearance.TextColorDown = 2303013
          SearchButton.Appearance.TextColorHot = 2303013
          SearchButton.Appearance.TextColorDisabled = 13948116
          SearchButton.Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000000473424954080808087C08648800000009704859730000006F000000
            6F01F1A2DC430000001974455874536F667477617265007777772E696E6B7363
            6170652E6F72679BEE3C1A0000016D49444154388D95D3B14B965114C7F1CF11
            5D8A686968688972081C1AA286B6969722848A28177169CD25E81F6888727228
            706F121A2A9728288896886A0C52170585061B6A49390ECF79C3F7F179030F5C
            1EB8F7FEBEF7777EF73E9199FA15113DDCC0584D25D6319799BF74D448090F45
            C43C26F001BF6B7D051FB11011978602F010AF71015BB88F77788B1E3E612A22
            C6DB80A80D1325BED3B71A1167AB9D2358C506AE67E6AD3660A16C6F65E68B7D
            2744DCC4715CC4372C66E68FBD2D8CE13CDE74F598998B582A172B38D795C1E1
            CCFCD305A83A8A4DECE0441B90588E8893C3D499F905676AFF6A1BB08ECF981D
            06888853D8D604FEBE0D98C30CD622623622A243FC18CF3192993F07D633533D
            92294D90D7CAE666D9DE2EF15DCD55BECCCC5703803A691C0FF05593F64E39EC
            D5F72FBE63128F3273A91FD0C0C069DCC63DCD433A56F393D5FF289EE07266EE
            07FC6FE02A9EEE81F40E0428C895128FE2D9BF0C0E52F5DB4F637917745AC8C6
            20EEC9A20000000049454E44AE426082}
          SearchButton.Visible = False
          TabOrder = 34
          Text = ''
          Version = '1.1.6.0'
          OnEnter = edBuscarEnter
          DropDownColor = clBlack
        end
        object dbcMaterial: TJvDBLookupCombo
          Left = 679
          Top = 175
          Width = 145
          Height = 21
          DataField = 'TIPO_MATERIA'
          DataSource = DSRegDiario
          EmptyValue = '--'
          LookupField = 'ID'
          LookupDisplay = 'DETALLE'
          LookupSource = DSMaterial
          TabOrder = 35
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Registro General'
        ImageIndex = 1
        object pnCab: TPanel
          Left = 0
          Top = 0
          Width = 1102
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label11: TLabel
            Left = 223
            Top = 3
            Width = 248
            Height = 25
            Caption = 'Registro de Partes diarios'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -20
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edFechaReg: TJvDBDateEdit
            Left = 848
            Top = 8
            Width = 137
            Height = 21
            DataField = 'FECHA'
            DataSource = DSBase
            ShowNullDate = False
            TabOrder = 0
          end
          object DBEdit1: TDBEdit
            Left = 15
            Top = 8
            Width = 121
            Height = 21
            DataField = 'ID'
            DataSource = DSBase
            Enabled = False
            TabOrder = 1
          end
        end
        object pnPie: TPanel
          Left = 0
          Top = 649
          Width = 1102
          Height = 63
          Align = alBottom
          BevelOuter = bvNone
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 1
          object Label44: TLabel
            Left = 12
            Top = 6
            Width = 61
            Height = 16
            Caption = 'Nro.Cpbte'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label45: TLabel
            Left = 183
            Top = 6
            Width = 38
            Height = 16
            Caption = 'Fecha'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label46: TLabel
            Left = 310
            Top = 6
            Width = 43
            Height = 16
            Caption = 'Detalle'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label47: TLabel
            Left = 513
            Top = 6
            Width = 41
            Height = 16
            Caption = 'Cliente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label48: TLabel
            Left = 729
            Top = 6
            Width = 79
            Height = 16
            Caption = 'Lts.Hormigon'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label49: TLabel
            Left = 856
            Top = 6
            Width = 47
            Height = 16
            Caption = 'Troquel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object edFecha: TJvDBDateEdit
            Left = 183
            Top = 25
            Width = 121
            Height = 24
            TabStop = False
            DataField = 'FECHA'
            DataSource = DSRegDiario
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ShowNullDate = False
            TabOrder = 1
          end
          object dbBuscadorPI: TDBAdvSearchEdit
            Left = 6
            Top = 25
            Width = 171
            Height = 24
            Appearance.CategoryFont.Charset = DEFAULT_CHARSET
            Appearance.CategoryFont.Color = clWindowText
            Appearance.CategoryFont.Height = -12
            Appearance.CategoryFont.Name = 'Segoe UI'
            Appearance.CategoryFont.Style = []
            Appearance.DescriptionFont.Charset = DEFAULT_CHARSET
            Appearance.DescriptionFont.Color = clWindowText
            Appearance.DescriptionFont.Height = -12
            Appearance.DescriptionFont.Name = 'Segoe UI'
            Appearance.DescriptionFont.Style = []
            Appearance.SelectionColor = 15914434
            Appearance.SelectionTextColor = 3881787
            Appearance.FilterCountFont.Charset = DEFAULT_CHARSET
            Appearance.FilterCountFont.Color = clWindowText
            Appearance.FilterCountFont.Height = -12
            Appearance.FilterCountFont.Name = 'Segoe UI'
            Appearance.FilterCountFont.Style = []
            Appearance.FilterCountFormat = '(%d)'
            Appearance.ItemCategoryFont.Charset = DEFAULT_CHARSET
            Appearance.ItemCategoryFont.Color = clOrange
            Appearance.ItemCategoryFont.Height = -12
            Appearance.ItemCategoryFont.Name = 'Segoe UI'
            Appearance.ItemCategoryFont.Style = []
            Appearance.ItemCategoryFormat = 'in %s'
            BorderColor = 10724259
            Categories = <>
            CategoryButton.Appearance.BorderColor = 11382963
            CategoryButton.Appearance.BorderColorHot = 11565130
            CategoryButton.Appearance.BorderColorCheckedHot = 11565130
            CategoryButton.Appearance.BorderColorDown = 11565130
            CategoryButton.Appearance.BorderColorChecked = 13744549
            CategoryButton.Appearance.BorderColorDisabled = 13948116
            CategoryButton.Appearance.Color = clWhite
            CategoryButton.Appearance.ColorTo = clWhite
            CategoryButton.Appearance.ColorChecked = 13744549
            CategoryButton.Appearance.ColorCheckedTo = 13744549
            CategoryButton.Appearance.ColorDisabled = clWhite
            CategoryButton.Appearance.ColorDisabledTo = clNone
            CategoryButton.Appearance.ColorDown = 11565130
            CategoryButton.Appearance.ColorDownTo = 11565130
            CategoryButton.Appearance.ColorHot = 16444643
            CategoryButton.Appearance.ColorHotTo = 16444643
            CategoryButton.Appearance.ColorMirror = clWhite
            CategoryButton.Appearance.ColorMirrorTo = clWhite
            CategoryButton.Appearance.ColorMirrorHot = 16444643
            CategoryButton.Appearance.ColorMirrorHotTo = 16444643
            CategoryButton.Appearance.ColorMirrorDown = 11565130
            CategoryButton.Appearance.ColorMirrorDownTo = 11565130
            CategoryButton.Appearance.ColorMirrorChecked = 13744549
            CategoryButton.Appearance.ColorMirrorCheckedTo = 13744549
            CategoryButton.Appearance.ColorMirrorDisabled = clWhite
            CategoryButton.Appearance.ColorMirrorDisabledTo = clNone
            CategoryButton.Appearance.GradientHot = ggVertical
            CategoryButton.Appearance.GradientMirrorHot = ggVertical
            CategoryButton.Appearance.GradientDown = ggVertical
            CategoryButton.Appearance.GradientMirrorDown = ggVertical
            CategoryButton.Appearance.GradientChecked = ggVertical
            CategoryButton.Appearance.TextColorChecked = 3750459
            CategoryButton.Appearance.TextColorDown = 2303013
            CategoryButton.Appearance.TextColorHot = 2303013
            CategoryButton.Appearance.TextColorDisabled = 13948116
            CategoryButton.Visible = False
            Columns = <
              item
                Alignment = gtaCenter
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                Width = 110
                DataField = 'NROCPBTE'
              end
              item
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                Width = 250
                DataField = 'DETALLE'
              end
              item
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                Width = 250
                DataField = 'NOMBRE'
              end
              item
                Alignment = gtaCenter
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                Width = 30
                DataField = 'ESTACION'
              end
              item
                Alignment = gtaTrailing
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                Trimming = True
                Width = 90
                DataField = 'CANTIDAD'
              end
              item
                Alignment = gtaTrailing
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                Trimming = True
                Width = 90
                DataField = 'CANTIDAD_SALDO'
              end
              item
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                Visible = False
                Width = 20
                DataField = 'ID'
              end>
            DropDownHeader.Color = clWhite
            DropDownHeader.ColorTo = clNone
            DropDownHeader.Font.Charset = DEFAULT_CHARSET
            DropDownHeader.Font.Color = 6184542
            DropDownHeader.Font.Height = -11
            DropDownHeader.Font.Name = 'Segoe UI'
            DropDownHeader.Font.Style = []
            DropDownHeader.Visible = True
            DropDownHeader.BorderColor = 11250603
            DropDownHeader.BorderWidth = 0
            DropDownHeader.Buttons = <
              item
                Caption = 'Nro Cpbte.'
                Width = 90
              end
              item
                Caption = 'Detalle'
                Width = 250
              end
              item
                Caption = 'Nombre'
                Width = 250
              end
              item
                Caption = 'Sector'
                ImageIndex = 60
                Width = 50
              end
              item
                Caption = 'Can.Pedido'
                Width = 100
              end
              item
                Caption = 'Pendiente'
                Width = 100
              end>
            DropDownHeader.ButtonAlignment = baLeft
            DropDownHeight = 600
            DropDownFooter.Color = clWhite
            DropDownFooter.ColorTo = clNone
            DropDownFooter.Font.Charset = DEFAULT_CHARSET
            DropDownFooter.Font.Color = 6184542
            DropDownFooter.Font.Height = -11
            DropDownFooter.Font.Name = 'Segoe UI'
            DropDownFooter.Font.Style = []
            DropDownFooter.Visible = True
            DropDownFooter.BorderColor = 11250603
            DropDownFooter.BorderWidth = 0
            DropDownFooter.Buttons = <>
            DropDownShadow = True
            DropDownWidth = 890
            EmptyText = 'Buscar ...'
            FilterCondition.AutoSelect = True
            FocusFontColor = clBlack
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 20
            Items = <>
            ParentFont = False
            SearchButton.Appearance.BorderColor = 11382963
            SearchButton.Appearance.BorderColorHot = 11565130
            SearchButton.Appearance.BorderColorCheckedHot = 11565130
            SearchButton.Appearance.BorderColorDown = 11565130
            SearchButton.Appearance.BorderColorChecked = 13744549
            SearchButton.Appearance.BorderColorDisabled = 13948116
            SearchButton.Appearance.Color = clWhite
            SearchButton.Appearance.ColorTo = clWhite
            SearchButton.Appearance.ColorChecked = 13744549
            SearchButton.Appearance.ColorCheckedTo = 13744549
            SearchButton.Appearance.ColorDisabled = clWhite
            SearchButton.Appearance.ColorDisabledTo = clNone
            SearchButton.Appearance.ColorDown = 11565130
            SearchButton.Appearance.ColorDownTo = 11565130
            SearchButton.Appearance.ColorHot = 16444643
            SearchButton.Appearance.ColorHotTo = 16444643
            SearchButton.Appearance.ColorMirror = clWhite
            SearchButton.Appearance.ColorMirrorTo = clWhite
            SearchButton.Appearance.ColorMirrorHot = 16444643
            SearchButton.Appearance.ColorMirrorHotTo = 16444643
            SearchButton.Appearance.ColorMirrorDown = 11565130
            SearchButton.Appearance.ColorMirrorDownTo = 11565130
            SearchButton.Appearance.ColorMirrorChecked = 13744549
            SearchButton.Appearance.ColorMirrorCheckedTo = 13744549
            SearchButton.Appearance.ColorMirrorDisabled = clWhite
            SearchButton.Appearance.ColorMirrorDisabledTo = clNone
            SearchButton.Appearance.GradientHot = ggVertical
            SearchButton.Appearance.GradientMirrorHot = ggVertical
            SearchButton.Appearance.GradientDown = ggVertical
            SearchButton.Appearance.GradientMirrorDown = ggVertical
            SearchButton.Appearance.GradientChecked = ggVertical
            SearchButton.Appearance.TextColorChecked = 3750459
            SearchButton.Appearance.TextColorDown = 2303013
            SearchButton.Appearance.TextColorHot = 2303013
            SearchButton.Appearance.TextColorDisabled = 13948116
            SearchButton.Visible = False
            TabOrder = 0
            Text = ''
            Version = '1.1.6.0'
            OnSelect = dbBuscadorPiSelect
            OnKeyPress = dbBuscadorPIKeyPress
            DropDownColor = clBlack
            DataField = 'NRO_CPBTE_OP'
            DataSource = DSRegDiario
            ListSource = DSSearch
          end
          object edDetalle: TDBEdit
            Left = 310
            Top = 25
            Width = 197
            Height = 24
            TabStop = False
            Color = clInfoBk
            DataField = 'DESIGNACION_CIMA_BASE'
            DataSource = DSRegDiario
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object edCliente: TDBEdit
            Left = 513
            Top = 25
            Width = 210
            Height = 24
            TabStop = False
            Color = clInfoBk
            DataField = 'NOMBRE_CLIENTE'
            DataSource = DSRegDiario
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object edHormigon: TDBEdit
            Left = 729
            Top = 25
            Width = 121
            Height = 24
            DataField = 'HORM_REAL_LTS'
            DataSource = DSRegDiario
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object edTroquel: TDBEdit
            Left = 856
            Top = 25
            Width = 121
            Height = 24
            DataField = 'TROQUEL'
            DataSource = DSRegDiario
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object btOk: TBitBtn
            Left = 983
            Top = 24
            Width = 31
            Height = 25
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000C0E0A1500000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000031362652909F70F32D32234C000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000003136265293A373F997A776FF93A373F92B3022490000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000003136265293A373F997A776FF97A776FF97A776FF93A273F82B2F
              2148000000000000000000000000000000000000000000000000000000000000
              00003136265393A373F997A776FF91A071F54951397B93A273F897A776FF93A2
              73F82B2F21480000000000000000000000000000000000000000000000000506
              0409839166DD97A776FF91A071F5262A1E40000000002B2F214893A273F897A7
              76FF93A273F82B30224900000000000000000000000000000000000000000000
              000015171023808D64D8262A1E400000000000000000000000002B2F214893A2
              73F897A776FF93A273F82B302249000000000000000000000000000000000000
              0000000000000202010300000000000000000000000000000000000000002B2F
              214893A273F897A776FF93A273F82B3022490000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00002B2F214893A273F897A776FF93A273F82B30224900000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000002B2F214893A273F897A776FF76825CC701010001000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000002B2F214875825CC60B0C081200000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000010100010000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            TabOrder = 6
            OnClick = btOkClick
          end
        end
        object pnCtral: TPanel
          Left = 0
          Top = 41
          Width = 1102
          Height = 608
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          DesignSize = (
            1102
            608)
          object dbgRegistros: TDBGrid
            Left = 0
            Top = 0
            Width = 1102
            Height = 516
            Align = alTop
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataSource = DSRegDiario
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = dbgRegistrosDblClick
            OnKeyPress = dbgRegistrosKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'FECHA'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 101
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NRO_CPBTE_OP'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 111
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESIGNACION_CIMA_BASE'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOMBRE_CLIENTE'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'HORM_REAL_LTS'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 110
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TROQUEL'
                Title.Alignment = taCenter
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 135
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_PARTE_DIARIO'
                Title.Alignment = taCenter
                Title.Color = clSkyBlue
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 74
                Visible = True
              end>
          end
          object GroupBox1: TGroupBox
            Left = 1
            Top = 520
            Width = 802
            Height = 77
            Anchors = [akLeft, akBottom]
            Caption = 'Valores de Referencia'
            TabOrder = 1
            object Label39: TLabel
              Left = 23
              Top = 19
              Width = 62
              Height = 13
              Caption = 'Hormigon Lts'
              FocusControl = DBEdit2
            end
            object Label40: TLabel
              Left = 174
              Top = 19
              Width = 64
              Height = 13
              Caption = 'Hormigon Kg.'
              FocusControl = DBEdit3
            end
            object Label41: TLabel
              Left = 337
              Top = 19
              Width = 51
              Height = 13
              Caption = 'Piedras Kg'
              FocusControl = DBEdit4
            end
            object Label42: TLabel
              Left = 489
              Top = 19
              Width = 44
              Height = 13
              Caption = 'Arena Kg'
              FocusControl = DBEdit5
            end
            object Label43: TLabel
              Left = 632
              Top = 19
              Width = 58
              Height = 13
              Caption = 'Cemento Kg'
              FocusControl = DBEdit6
            end
            object DBEdit2: TDBEdit
              Left = 23
              Top = 38
              Width = 121
              Height = 24
              Color = clInfoBk
              DataField = 'HORM_LTS'
              DataSource = DSRegDiario
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit3: TDBEdit
              Left = 174
              Top = 38
              Width = 121
              Height = 24
              Color = clInfoBk
              DataField = 'HORM_KG'
              DataSource = DSRegDiario
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit4: TDBEdit
              Left = 337
              Top = 38
              Width = 121
              Height = 24
              Color = clInfoBk
              DataField = 'PIEDRA_KG'
              DataSource = DSRegDiario
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit5: TDBEdit
              Left = 489
              Top = 38
              Width = 121
              Height = 24
              Color = clInfoBk
              DataField = 'ARENA_KG'
              DataSource = DSRegDiario
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
            end
            object DBEdit6: TDBEdit
              Left = 632
              Top = 38
              Width = 121
              Height = 24
              Color = clInfoBk
              DataField = 'CEMENTO_KG'
              DataSource = DSRegDiario
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
            end
          end
        end
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 740
    Width = 1110
    Height = 34
    Align = alBottom
    ExplicitTop = 740
    ExplicitWidth = 1110
    ExplicitHeight = 34
    inherited btConfirma: TBitBtn
      DoubleBuffered = True
    end
    inherited btNuevo: TBitBtn
      DoubleBuffered = True
    end
    inherited btCancelar: TBitBtn
      DoubleBuffered = True
    end
    inherited btModificar: TBitBtn
      DoubleBuffered = True
    end
    inherited btBuscar: TBitBtn
      DoubleBuffered = True
    end
    inherited btBorrar: TBitBtn
      DoubleBuffered = True
    end
    inherited btSalir: TBitBtn
      DoubleBuffered = True
    end
    object ToolButton1: TToolButton
      Left = 557
      Top = 0
      Width = 36
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object spAgregarStock: TSpeedButton
      Left = 593
      Top = 0
      Width = 27
      Height = 29
      Action = AltaStock
    end
  end
  inherited Panel1: TPanel
    Top = 774
    Width = 1110
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 774
    ExplicitWidth = 1110
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 1021
      ExplicitWidth = 1021
    end
  end
  inherited ActionList1: TActionList
    Left = 416
    Top = 160
    object BuscarCliente: TAction
      Caption = 'BuscarCliente'
      OnExecute = BuscarClienteExecute
    end
    object BuscarCpbte: TAction
      Caption = 'BuscarCpbte'
      OnExecute = BuscarCpbteExecute
    end
    object BuscadorDetalles: TAction
    end
    object AltaStock: TAction
      ImageIndex = 11
    end
  end
  inherited DSBase: TDataSource
    DataSet = CDSRegCab
    Left = 888
    Top = 328
  end
  inherited ImageList1: TImageList
    Left = 512
    Top = 8
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
    Left = 824
    Top = 56
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 32
    Top = 408
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 672
    Top = 32
  end
  inherited ComBuscadorBase: TComBuscador
    Data = QBuscadoReigstroDiario
    Campo = 'ID'
    Titulo = 'Busador de Partes Diarios'
    Left = 312
    Top = 528
  end
  inherited QBrowse2: TFDQuery
    Left = 64
    Top = 504
  end
  inherited QUltimoCodigo2: TFDQuery
    SQL.Strings = (
      'select max(id) from postes_parte_diario_cab')
    Left = 32
    Top = 232
  end
  inherited ImageListDos: TImageList
    Left = 528
    Top = 336
    Bitmap = {
      494C01010C001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
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
      000000000000000000000000000000000000000000000000000000000000FDFD
      FC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000658550DB759A
      5DFD648550DA000000000000000000000000769C5EFF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF769C5EFF769C5EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D3B09500F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000B8805400FFFEFE0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FF9C8B
      78FF9C8B78FF9C8B78FFA59482FFD7CFBDFF8CA874FF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF5D7A49C800000000769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFF0000000000000000000000000000
      00000000000000000000000000000000000000000000D0A78800F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00D29C7200FEFDFD00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CDADFF769C5EFF769C5EFFA0BB90FF82A5
      6DFF769C5EFF769C5EFF769C5EFF00000000769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFA2C797FFA2C797FFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFF0000000000000000000000000000
      000000000000000000000000000000000000C99B7800F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00DAA27700FCFAF8000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF88A973FF769C5EFFA7BF97FFF7FAF6FFE7EE
      E3FF81A46BFF769C5EFF769C5EFF658550DB769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFB1D4ABFF799F62FF799F62FFB1D4ABFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFF0000000000000000000000000000
      0000000000000000000000000000C6947100F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00DDA47700FAF6F30000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF799E62FF769C5EFFBACDAEFF8EAD7AFFBBCE
      AFFFE6EDE1FF80A36AFF769C5EFF72975BF8769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBADDB6FF82A76EFF769C5EFF769C5EFF82A76EFFBADDB6FFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFF0000000000000000000000000000
      00000000000000000000C3906800F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00E3AA7F00F6EFEA00000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF88A973FF769C5EFF769C5EFF769C5EFF769C
      5EFFBBCEAFFFE4ECDFFF7EA267FF658550DB769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF8FB47EFF769C5EFF769C5EFF769C5EFF769C5EFF8FB47FFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFF0000000000000000000000000000
      000000000000C28D6500F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00E6AC8000F3E9E0000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CDADFF769C5EFF769C5EFF769C5EFF769C
      5EFF769C5EFFA2BB91FF789D60FF00000000769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFF769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFF0000000000000000000000000000
      0000C28B6400F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00EAB08500ECDE
      D2000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FBF8FF93B180FF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF5D7A49C800000000769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFF769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFF000000000000000000000000E7D1
      C300ECB38700F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00C48E
      65000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBF9FFBBCEAFFF89AA75FF7FA3
      69FF8AAA75FFAAB892FF0000000000000000769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFF0000000000000000000000000000
      0000EEDED400E9AF8400F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00F0B78B00C28C63000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC1B5A3FF0000000000000000769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFBCDFB8FF95BA87FF7AA064FF7AA064FF96BA87FFBBDFB8FFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFF0000000000000000000000000000
      000000000000F1E8DF00E6AE8200F0B78B00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00F0B78B00C28C6500000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF9C8B78FF0000000000000000769C5EFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFF94B884FF83AB71FF9AC593FF99C593FF83AA71FF94B985FFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFF769C5EFF0000000000000000000000000000
      00000000000000000000F7EFEA00E4AA7D00F0B78B00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00F0B78B00C4906B0000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FF9C8B78FF9C8B
      78FF9C8B78FF9C8B78FF0000000000000000769C5EFF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF99C593FF9EC999FF9EC999FF99C493FF769C5EFF769C
      5EFF769C5EFF769C5EFF769C5EFF769C5EFF0000000000000000000000000000
      0000000000000000000000000000F9F5F100E0A67C00F0B78B00F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00F0B78B00C4936E000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFFFFFFFFFF9F8
      F7FFAB9D8DFE7C7162C70000000000000000628050CDA4C899FFADD4A9FF9EC9
      99FF9EC999FF9EC999FF9EC999FF9EC999FF9EC999FF9EC999FF9EC999FF9EC9
      99FF9EC999FFADD4A9FFA4C89AFF628050CD0000000000000000000000000000
      000000000000000000000000000000000000FCF9F900DAA37900F0B78B00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00F0B78B00C99B7800000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFF9F8F7FFAD9E
      8FFF837668D10000000000000000000000001E261840779C64F4BADEB7FFA0CA
      9BFF9EC999FF9EC999FF9EC999FF9EC999FF9EC999FF9EC999FF9EC999FF9EC9
      99FFA0CA9BFFBADEB7FF789D64F31E2618400000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFC00D7A07500F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000CE966F00CEA3840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C8B78FFAC9D8EFF7F73
      65C80000000000000000000000000000000000000000627E50CAA2C697FFBDE0
      BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0BAFFBDE0
      BAFFBDE0BAFFA1C697FF627E50CA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFEFE00F0E4
      DC00000000000000000000000000000000000000000000000000000000000000
      0000D6B69C000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C8B78FF9C8B
      78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF9C8B78FF7E7263CA0000
      000000000000000000000000000000000000000000001C24163C769C5EFF769C
      5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C5EFF769C
      5EFF769C5EFF769C5EFF1B24153B000000000000000000000000000000000000
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
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFEFFFFFFFC70000FFCFF3FFC0010000
      FF8FF1FFC0010000FF0FF0FFC0000000FE0FF07FC0000000FC0FF03FC0000000
      F80FF01FC0010000F00FF00FC0010000E00FF00FC0030000F00FF01FC0030000
      F80FF03FC0030000FC0FF07FC0030000FE0FF0FFC0030000FF0FF1FFC0078001
      FF8FF3FFC00F8001FFCFF7FFC01FC003FFFFE007FFFF3FFFF83FE00780011FFF
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
  object QRegDiario: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select p.* from postes_parte_diario p'
      'where p.id_parte=:id')
    Left = 608
    Top = 440
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRegDiarioID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRegDiarioID_PARTE: TIntegerField
      FieldName = 'ID_PARTE'
      Origin = 'ID_PARTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRegDiarioID_MODELO: TIntegerField
      FieldName = 'ID_MODELO'
      Origin = 'ID_MODELO'
      Required = True
    end
    object QRegDiarioFECHA: TDateField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QRegDiarioCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Required = True
      Size = 6
    end
    object QRegDiarioNOMBRE_CLIENTE: TStringField
      FieldName = 'NOMBRE_CLIENTE'
      Origin = 'NOMBRE_CLIENTE'
      Size = 45
    end
    object QRegDiarioTURNO: TStringField
      FieldName = 'TURNO'
      Origin = 'TURNO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRegDiarioID_OPROD_CAB: TIntegerField
      FieldName = 'ID_OPROD_CAB'
      Origin = 'ID_OPROD_CAB'
      Required = True
    end
    object QRegDiarioID_OPROD_DET: TIntegerField
      FieldName = 'ID_OPROD_DET'
      Origin = 'ID_OPROD_DET'
      Required = True
    end
    object QRegDiarioID_SUB_DET: TIntegerField
      FieldName = 'ID_SUB_DET'
      Origin = 'ID_SUB_DET'
      Required = True
    end
    object QRegDiarioNRO_CPBTE_OP: TStringField
      FieldName = 'NRO_CPBTE_OP'
      Origin = 'NRO_CPBTE_OP'
      Size = 13
    end
    object QRegDiarioTIPO_MATERIA: TIntegerField
      FieldName = 'TIPO_MATERIA'
      Origin = 'TIPO_MATERIA'
      Required = True
    end
    object QRegDiarioORDEN_LLENADO: TIntegerField
      FieldName = 'ORDEN_LLENADO'
      Origin = 'ORDEN_LLENADO'
    end
    object QRegDiarioMOLDE: TStringField
      FieldName = 'MOLDE'
      Origin = 'MOLDE'
      Size = 15
    end
    object QRegDiarioCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object QRegDiarioDESIGNACION_CIMA_BASE: TStringField
      FieldName = 'DESIGNACION_CIMA_BASE'
      Origin = 'DESIGNACION_CIMA_BASE'
      Size = 40
    end
    object QRegDiarioTROQUEL: TStringField
      FieldName = 'TROQUEL'
      Origin = 'TROQUEL'
    end
    object QRegDiarioSTOCK_ANT: TFloatField
      FieldName = 'STOCK_ANT'
      Origin = 'STOCK_ANT'
      Required = True
    end
    object QRegDiarioCANT_PEDIDA: TFloatField
      FieldName = 'CANT_PEDIDA'
      Origin = 'CANT_PEDIDA'
      Required = True
    end
    object QRegDiarioCANT_FABRIC: TFloatField
      FieldName = 'CANT_FABRIC'
      Origin = 'CANT_FABRIC'
      Required = True
    end
    object QRegDiarioCANT_PEND: TFloatField
      FieldName = 'CANT_PEND'
      Origin = 'CANT_PEND'
      Required = True
    end
    object QRegDiarioHORM_LTS: TFloatField
      FieldName = 'HORM_LTS'
      Origin = 'HORM_LTS'
      Required = True
    end
    object QRegDiarioHORM_KG: TFloatField
      FieldName = 'HORM_KG'
      Origin = 'HORM_KG'
      Required = True
    end
    object QRegDiarioHORM_REAL_KG: TFloatField
      FieldName = 'HORM_REAL_KG'
      Origin = 'HORM_REAL_KG'
      Required = True
    end
    object QRegDiarioHORM_REAL_LTS: TFloatField
      FieldName = 'HORM_REAL_LTS'
      Origin = 'HORM_REAL_LTS'
      Required = True
    end
    object QRegDiarioPATS_CANT: TIntegerField
      FieldName = 'PATS_CANT'
      Origin = 'PATS_CANT'
    end
    object QRegDiarioACERO_PAS_KG: TFloatField
      FieldName = 'ACERO_PAS_KG'
      Origin = 'ACERO_PAS_KG'
      Required = True
    end
    object QRegDiarioAROS_KG: TFloatField
      FieldName = 'AROS_KG'
      Origin = 'AROS_KG'
      Required = True
    end
    object QRegDiarioTRENZAS_KG: TFloatField
      FieldName = 'TRENZAS_KG'
      Origin = 'TRENZAS_KG'
      Required = True
    end
    object QRegDiarioCORDONES_KG: TFloatField
      FieldName = 'CORDONES_KG'
      Origin = 'CORDONES_KG'
      Required = True
    end
    object QRegDiarioALAMBRE_KG: TFloatField
      FieldName = 'ALAMBRE_KG'
      Origin = 'ALAMBRE_KG'
      Required = True
    end
    object QRegDiarioPIEDRA_KG: TFloatField
      FieldName = 'PIEDRA_KG'
      Origin = 'PIEDRA_KG'
      Required = True
    end
    object QRegDiarioARENA_KG: TFloatField
      FieldName = 'ARENA_KG'
      Origin = 'ARENA_KG'
      Required = True
    end
    object QRegDiarioCEMENTO_KG: TFloatField
      FieldName = 'CEMENTO_KG'
      Origin = 'CEMENTO_KG'
      Required = True
    end
    object QRegDiarioPIEDRA_KG_REAL: TFloatField
      FieldName = 'PIEDRA_KG_REAL'
      Origin = 'PIEDRA_KG_REAL'
      Required = True
    end
    object QRegDiarioARENA_KG_REAL: TFloatField
      FieldName = 'ARENA_KG_REAL'
      Origin = 'ARENA_KG_REAL'
      Required = True
    end
    object QRegDiarioCEMENTO_KG_REAL: TFloatField
      FieldName = 'CEMENTO_KG_REAL'
      Origin = 'CEMENTO_KG_REAL'
      Required = True
    end
    object QRegDiarioDIF_HORM_LTS: TFloatField
      FieldName = 'DIF_HORM_LTS'
      Origin = 'DIF_HORM_LTS'
      Required = True
    end
    object QRegDiarioDIF_HORM_KG: TFloatField
      FieldName = 'DIF_HORM_KG'
      Origin = 'DIF_HORM_KG'
      Required = True
    end
    object QRegDiarioDIF_PIEDRA_KG: TFloatField
      FieldName = 'DIF_PIEDRA_KG'
      Origin = 'DIF_PIEDRA_KG'
      Required = True
    end
    object QRegDiarioDIF_ARENA_KG: TFloatField
      FieldName = 'DIF_ARENA_KG'
      Origin = 'DIF_ARENA_KG'
      Required = True
    end
    object QRegDiarioDIF_CEMENTO_KG: TFloatField
      FieldName = 'DIF_CEMENTO_KG'
      Origin = 'DIF_CEMENTO_KG'
      Required = True
    end
    object QRegDiarioOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      Size = 255
    end
    object QRegDiarioRECHAZADO: TIntegerField
      FieldName = 'RECHAZADO'
      Origin = 'RECHAZADO'
    end
    object QRegDiarioACEPTADO: TIntegerField
      FieldName = 'ACEPTADO'
      Origin = 'ACEPTADO'
    end
    object QRegDiarioID_PARTE_DIARIO: TIntegerField
      DisplayLabel = 'P.Diartio'
      FieldName = 'ID_PARTE_DIARIO'
      Origin = 'ID_PARTE_DIARIO'
      Required = True
    end
  end
  object CDSRegDiario: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPRegDiario'
    OnNewRecord = CDSRegDiarioNewRecord
    Left = 688
    Top = 432
    object CDSRegDiarioID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRegDiarioID_PARTE: TIntegerField
      FieldName = 'ID_PARTE'
      Origin = 'ID_PARTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRegDiarioID_MODELO: TIntegerField
      FieldName = 'ID_MODELO'
      Origin = 'ID_MODELO'
      Required = True
    end
    object CDSRegDiarioFECHA: TDateField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSRegDiarioCLIENTE: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Required = True
      OnSetText = CDSRegDiarioCLIENTESetText
      Size = 6
    end
    object CDSRegDiarioTURNO: TStringField
      FieldName = 'TURNO'
      Origin = 'TURNO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSRegDiarioNRO_CPBTE_OP: TStringField
      DisplayLabel = 'Nro.PI'
      FieldName = 'NRO_CPBTE_OP'
      Origin = 'NRO_CPBTE_OP'
      Size = 13
    end
    object CDSRegDiarioORDEN_LLENADO: TIntegerField
      FieldName = 'ORDEN_LLENADO'
      Origin = 'ORDEN_LLENADO'
    end
    object CDSRegDiarioMOLDE: TStringField
      FieldName = 'MOLDE'
      Origin = 'MOLDE'
      Size = 15
    end
    object CDSRegDiarioTROQUEL: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'Nro de Troquel'
      FieldName = 'TROQUEL'
      Origin = 'TROQUEL'
      OnSetText = CDSRegDiarioTROQUELSetText
    end
    object CDSRegDiarioDESIGNACION_CIMA_BASE: TStringField
      DisplayLabel = 'Designacion / Detalle'
      FieldName = 'DESIGNACION_CIMA_BASE'
      Origin = 'DESIGNACION_CIMA_BASE'
      Size = 40
    end
    object CDSRegDiarioSTOCK_ANT: TFloatField
      FieldName = 'STOCK_ANT'
      Origin = 'STOCK_ANT'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSRegDiarioCANT_PEDIDA: TFloatField
      FieldName = 'CANT_PEDIDA'
      Origin = 'CANT_PEDIDA'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSRegDiarioCANT_FABRIC: TFloatField
      FieldName = 'CANT_FABRIC'
      Origin = 'CANT_FABRIC'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSRegDiarioCANT_PEND: TFloatField
      FieldName = 'CANT_PEND'
      Origin = 'CANT_PEND'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSRegDiarioHORM_LTS: TFloatField
      FieldName = 'HORM_LTS'
      Origin = 'HORM_LTS'
      Required = True
      OnSetText = CDSRegDiarioHORM_LTSSetText
      DisplayFormat = ',0.00'
    end
    object CDSRegDiarioHORM_KG: TFloatField
      FieldName = 'HORM_KG'
      Origin = 'HORM_KG'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSRegDiarioHORM_REAL_KG: TFloatField
      FieldName = 'HORM_REAL_KG'
      Origin = 'HORM_REAL_KG'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSRegDiarioHORM_REAL_LTS: TFloatField
      DisplayLabel = 'Hormigon Litros'
      FieldName = 'HORM_REAL_LTS'
      Origin = 'HORM_REAL_LTS'
      Required = True
      OnSetText = CDSRegDiarioHORM_REAL_LTSSetText
      DisplayFormat = ',0.00'
    end
    object CDSRegDiarioPATS_CANT: TIntegerField
      FieldName = 'PATS_CANT'
      Origin = 'PATS_CANT'
      DisplayFormat = '0,00'
    end
    object CDSRegDiarioACERO_PAS_KG: TFloatField
      FieldName = 'ACERO_PAS_KG'
      Origin = 'ACERO_PAS_KG'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSRegDiarioAROS_KG: TFloatField
      FieldName = 'AROS_KG'
      Origin = 'AROS_KG'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSRegDiarioTRENZAS_KG: TFloatField
      FieldName = 'TRENZAS_KG'
      Origin = 'TRENZAS_KG'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSRegDiarioCORDONES_KG: TFloatField
      FieldName = 'CORDONES_KG'
      Origin = 'CORDONES_KG'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSRegDiarioALAMBRE_KG: TFloatField
      FieldName = 'ALAMBRE_KG'
      Origin = 'ALAMBRE_KG'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSRegDiarioPIEDRA_KG: TFloatField
      FieldName = 'PIEDRA_KG'
      Origin = 'PIEDRA_KG'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSRegDiarioARENA_KG: TFloatField
      FieldName = 'ARENA_KG'
      Origin = 'ARENA_KG'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSRegDiarioCEMENTO_KG: TFloatField
      FieldName = 'CEMENTO_KG'
      Origin = 'CEMENTO_KG'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSRegDiarioPIEDRA_KG_REAL: TFloatField
      FieldName = 'PIEDRA_KG_REAL'
      Origin = 'PIEDRA_KG_REAL'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSRegDiarioARENA_KG_REAL: TFloatField
      FieldName = 'ARENA_KG_REAL'
      Origin = 'ARENA_KG_REAL'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSRegDiarioCEMENTO_KG_REAL: TFloatField
      FieldName = 'CEMENTO_KG_REAL'
      Origin = 'CEMENTO_KG_REAL'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSRegDiarioDIF_HORM_LTS: TFloatField
      FieldName = 'DIF_HORM_LTS'
      Origin = 'DIF_HORM_LTS'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSRegDiarioDIF_HORM_KG: TFloatField
      FieldName = 'DIF_HORM_KG'
      Origin = 'DIF_HORM_KG'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSRegDiarioDIF_PIEDRA_KG: TFloatField
      FieldName = 'DIF_PIEDRA_KG'
      Origin = 'DIF_PIEDRA_KG'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSRegDiarioDIF_ARENA_KG: TFloatField
      FieldName = 'DIF_ARENA_KG'
      Origin = 'DIF_ARENA_KG'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSRegDiarioDIF_CEMENTO_KG: TFloatField
      FieldName = 'DIF_CEMENTO_KG'
      Origin = 'DIF_CEMENTO_KG'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSRegDiarioOBSERVACIONES: TStringField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      Size = 255
    end
    object CDSRegDiarioRECHAZADO: TIntegerField
      FieldName = 'RECHAZADO'
      Origin = 'RECHAZADO'
    end
    object CDSRegDiarioACEPTADO: TIntegerField
      FieldName = 'ACEPTADO'
      Origin = 'ACEPTADO'
    end
    object CDSRegDiarioNOMBRE_CLIENTE: TStringField
      DisplayLabel = 'Cliente Nombre'
      FieldName = 'NOMBRE_CLIENTE'
      Origin = 'NOMBRE_CLIENTE'
      Size = 45
    end
    object CDSRegDiarioID_OPROD_DET: TIntegerField
      FieldName = 'ID_OPROD_DET'
      Origin = 'ID_OPROD_DET'
      Required = True
      OnSetText = CDSRegDiarioID_OPROD_DETSetText
    end
    object CDSRegDiarioID_OPROD_CAB: TIntegerField
      FieldName = 'ID_OPROD_CAB'
      Origin = 'ID_OPROD_CAB'
      Required = True
    end
    object CDSRegDiarioTIPO_MATERIA: TIntegerField
      FieldName = 'TIPO_MATERIA'
      Origin = 'TIPO_MATERIA'
      Required = True
    end
    object CDSRegDiarioCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object CDSRegDiarioID_SUB_DET: TIntegerField
      FieldName = 'ID_SUB_DET'
      Origin = 'ID_SUB_DET'
      Required = True
      OnSetText = CDSRegDiarioID_SUB_DETSetText
    end
    object CDSRegDiarioID_PARTE_DIARIO: TIntegerField
      DisplayLabel = 'Parte Diario'
      FieldName = 'ID_PARTE_DIARIO'
      Origin = 'ID_PARTE_DIARIO'
      Required = True
    end
  end
  object DSPRegDiario: TDataSetProvider
    DataSet = QRegDiario
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 768
    Top = 432
  end
  object QClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT C.*,cc.nombre as MuestraCoorporativo FROM Clientes C'
      'left join clientes cc on cc.codigo=c.codigo_coorporativo'
      'where (c.codigo=:codigo)')
    Left = 944
    Top = 320
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
    object QClientesNOMBRE_COMPLETO: TStringField
      FieldName = 'NOMBRE_COMPLETO'
      Origin = 'NOMBRE_COMPLETO'
      Size = 100
    end
    object QClientesRAZON_SOCIAL: TStringField
      FieldName = 'RAZON_SOCIAL'
      Origin = 'RAZON_SOCIAL'
      Size = 35
    end
    object QClientesDIRECCION_PARTICULAR: TStringField
      FieldName = 'DIRECCION_PARTICULAR'
      Origin = 'DIRECCION_PARTICULAR'
      Size = 35
    end
    object QClientesDIRECCION_COMERCIAL: TStringField
      FieldName = 'DIRECCION_COMERCIAL'
      Origin = 'DIRECCION_COMERCIAL'
      Size = 35
    end
    object QClientesTELEFONO_PARTICULAR: TStringField
      FieldName = 'TELEFONO_PARTICULAR'
      Origin = 'TELEFONO_PARTICULAR'
      Size = 10
    end
    object QClientesTELEFONO_COMERCIAL_1: TStringField
      FieldName = 'TELEFONO_COMERCIAL_1'
      Origin = 'TELEFONO_COMERCIAL_1'
      Size = 10
    end
    object QClientesTELEFONO_COMERCIAL_2: TStringField
      FieldName = 'TELEFONO_COMERCIAL_2'
      Origin = 'TELEFONO_COMERCIAL_2'
      Size = 10
    end
    object QClientesTELEFONO_CELULAR: TStringField
      FieldName = 'TELEFONO_CELULAR'
      Origin = 'TELEFONO_CELULAR'
      Size = 11
    end
    object QClientesID_COD_POSTAL: TIntegerField
      FieldName = 'ID_COD_POSTAL'
      Origin = 'ID_COD_POSTAL'
    end
    object QClientesCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Origin = 'CPOSTAL'
      Size = 8
    end
    object QClientesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
      Size = 15
    end
    object QClientesCONDICION_IVA: TIntegerField
      FieldName = 'CONDICION_IVA'
      Origin = 'CONDICION_IVA'
      Required = True
    end
    object QClientesEMITE_REMITO: TStringField
      FieldName = 'EMITE_REMITO'
      Origin = 'EMITE_REMITO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesEMITE_FACTURA: TStringField
      FieldName = 'EMITE_FACTURA'
      Origin = 'EMITE_FACTURA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesNRO_DE_CUIT: TStringField
      FieldName = 'NRO_DE_CUIT'
      Origin = 'NRO_DE_CUIT'
      Size = 13
    end
    object QClientesACTIVO: TStringField
      FieldName = 'ACTIVO'
      Origin = 'ACTIVO'
      FixedChar = True
      Size = 1
    end
    object QClientesLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
      Origin = 'LIMITE_CREDITO'
    end
    object QClientesSALDOINICIAL: TFloatField
      FieldName = 'SALDOINICIAL'
      Origin = 'SALDOINICIAL'
    end
    object QClientesOBSERVACIONES: TMemoField
      FieldName = 'OBSERVACIONES'
      Origin = 'OBSERVACIONES'
      BlobType = ftMemo
    end
    object QClientesSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QClientesZONA: TIntegerField
      FieldName = 'ZONA'
      Origin = 'ZONA'
    end
    object QClientesVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 6
    end
    object QClientesLISTAPRECIOS: TIntegerField
      FieldName = 'LISTAPRECIOS'
      Origin = 'LISTAPRECIOS'
    end
    object QClientesTIPODOCUMENTO: TSmallintField
      FieldName = 'TIPODOCUMENTO'
      Origin = 'TIPODOCUMENTO'
    end
    object QClientesNRODOCUMENTO: TStringField
      FieldName = 'NRODOCUMENTO'
      Origin = 'NRODOCUMENTO'
      Size = 15
    end
    object QClientesCORREOELECTRONICO: TStringField
      FieldName = 'CORREOELECTRONICO'
      Origin = 'CORREOELECTRONICO'
      Size = 100
    end
    object QClientesCORREOELECTRONICO_2: TStringField
      FieldName = 'CORREOELECTRONICO_2'
      Origin = 'CORREOELECTRONICO_2'
      Size = 100
    end
    object QClientesID_FACTURAPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURAPORDEFECTO'
      Origin = 'ID_FACTURAPORDEFECTO'
    end
    object QClientesID_FACTURACONTADOPORDEFECTO: TIntegerField
      FieldName = 'ID_FACTURACONTADOPORDEFECTO'
      Origin = 'ID_FACTURACONTADOPORDEFECTO'
    end
    object QClientesID_NOTADEBITOPORDEFECTO: TIntegerField
      FieldName = 'ID_NOTADEBITOPORDEFECTO'
      Origin = 'ID_NOTADEBITOPORDEFECTO'
    end
    object QClientesID_NOTACREDITOPORDEFECTO: TIntegerField
      FieldName = 'ID_NOTACREDITOPORDEFECTO'
      Origin = 'ID_NOTACREDITOPORDEFECTO'
    end
    object QClientesID_TIKETPORDEFECTO: TIntegerField
      FieldName = 'ID_TIKETPORDEFECTO'
      Origin = 'ID_TIKETPORDEFECTO'
    end
    object QClientesID_RECIBOPORDEFECTO: TIntegerField
      FieldName = 'ID_RECIBOPORDEFECTO'
      Origin = 'ID_RECIBOPORDEFECTO'
    end
    object QClientesPERCIBIR_IB: TStringField
      FieldName = 'PERCIBIR_IB'
      Origin = 'PERCIBIR_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesINSCRIPTO_MULTICONVENIO: TStringField
      FieldName = 'INSCRIPTO_MULTICONVENIO'
      Origin = 'INSCRIPTO_MULTICONVENIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCONTACTO: TStringField
      FieldName = 'CONTACTO'
      Origin = 'CONTACTO'
      Size = 50
    end
    object QClientesTELEFONO_CONTACTO: TStringField
      FieldName = 'TELEFONO_CONTACTO'
      Origin = 'TELEFONO_CONTACTO'
      Size = 50
    end
    object QClientesCOBRADOR: TStringField
      FieldName = 'COBRADOR'
      Origin = 'COBRADOR'
      Size = 6
    end
    object QClientesCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
    end
    object QClientesLONGITUD: TStringField
      FieldName = 'LONGITUD'
      Origin = 'LONGITUD'
      Size = 25
    end
    object QClientesLATITUD: TStringField
      FieldName = 'LATITUD'
      Origin = 'LATITUD'
      Size = 25
    end
    object QClientesDIRECCION_CALLE: TStringField
      FieldName = 'DIRECCION_CALLE'
      Origin = 'DIRECCION_CALLE'
      Size = 40
    end
    object QClientesDIRECCION_NUMERO: TStringField
      FieldName = 'DIRECCION_NUMERO'
      Origin = 'DIRECCION_NUMERO'
      Size = 10
    end
    object QClientesDIRECCION_PISO: TStringField
      FieldName = 'DIRECCION_PISO'
      Origin = 'DIRECCION_PISO'
      Size = 10
    end
    object QClientesDIRECCION_DEPTO: TStringField
      FieldName = 'DIRECCION_DEPTO'
      Origin = 'DIRECCION_DEPTO'
      Size = 10
    end
    object QClientesDEUDAMAYOR30: TStringField
      FieldName = 'DEUDAMAYOR30'
      Origin = 'DEUDAMAYOR30'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesDIAS_MAYOR_30: TIntegerField
      FieldName = 'DIAS_MAYOR_30'
      Origin = 'DIAS_MAYOR_30'
    end
    object QClientesTIPOABONO: TStringField
      FieldName = 'TIPOABONO'
      Origin = 'TIPOABONO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesMES_ABONOANUAL: TIntegerField
      FieldName = 'MES_ABONOANUAL'
      Origin = 'MES_ABONOANUAL'
    end
    object QClientesFRANQUICIA: TStringField
      FieldName = 'FRANQUICIA'
      Origin = 'FRANQUICIA'
      FixedChar = True
      Size = 1
    end
    object QClientesID_DEPOSITO_FRANQUICIA: TIntegerField
      FieldName = 'ID_DEPOSITO_FRANQUICIA'
      Origin = 'ID_DEPOSITO_FRANQUICIA'
    end
    object QClientesID_TRANSPORTE: TIntegerField
      FieldName = 'ID_TRANSPORTE'
      Origin = 'ID_TRANSPORTE'
    end
    object QClientesIMPRIME_SALDOFACTURA: TStringField
      FieldName = 'IMPRIME_SALDOFACTURA'
      Origin = 'IMPRIME_SALDOFACTURA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCORTAR_SERVICIO: TStringField
      FieldName = 'CORTAR_SERVICIO'
      Origin = 'CORTAR_SERVICIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCON_PLANPAGO: TStringField
      FieldName = 'CON_PLANPAGO'
      Origin = 'CON_PLANPAGO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesDIRECCION_POSTAL: TStringField
      FieldName = 'DIRECCION_POSTAL'
      Origin = 'DIRECCION_POSTAL'
      Size = 35
    end
    object QClientesCALLE_1: TStringField
      FieldName = 'CALLE_1'
      Origin = 'CALLE_1'
      Size = 35
    end
    object QClientesCALLE_2: TStringField
      FieldName = 'CALLE_2'
      Origin = 'CALLE_2'
      Size = 35
    end
    object QClientesVENDER_DE_CTDO: TStringField
      FieldName = 'VENDER_DE_CTDO'
      Origin = 'VENDER_DE_CTDO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesPRESENTO_F8001: TStringField
      FieldName = 'PRESENTO_F8001'
      Origin = 'PRESENTO_F8001'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesID_TARJETACREDITO: TIntegerField
      FieldName = 'ID_TARJETACREDITO'
      Origin = 'ID_TARJETACREDITO'
      Required = True
    end
    object QClientesNRO_TARJETA_C: TStringField
      FieldName = 'NRO_TARJETA_C'
      Origin = 'NRO_TARJETA_C'
    end
    object QClientesNRO_SEG_TC: TStringField
      FieldName = 'NRO_SEG_TC'
      Origin = 'NRO_SEG_TC'
      FixedChar = True
      Size = 4
    end
    object QClientesID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
      Required = True
    end
    object QClientesNRO_CTA_BCO: TStringField
      FieldName = 'NRO_CTA_BCO'
      Origin = 'NRO_CTA_BCO'
      Size = 22
    end
    object QClientesCODIGO_COORPORATIVO: TStringField
      FieldName = 'CODIGO_COORPORATIVO'
      Origin = 'CODIGO_COORPORATIVO'
      Size = 6
    end
    object QClientesCUENTA_OPERATIVA: TStringField
      FieldName = 'CUENTA_OPERATIVA'
      Origin = 'CUENTA_OPERATIVA'
      Size = 10
    end
    object QClientesTARJETA_CLIENTE: TStringField
      FieldName = 'TARJETA_CLIENTE'
      Origin = 'TARJETA_CLIENTE'
    end
    object QClientesFOTO: TBlobField
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object QClientesCON_MONITOREO: TStringField
      FieldName = 'CON_MONITOREO'
      Origin = 'CON_MONITOREO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCON_GPRS: TStringField
      FieldName = 'CON_GPRS'
      Origin = 'CON_GPRS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCON_HOSTING: TStringField
      FieldName = 'CON_HOSTING'
      Origin = 'CON_HOSTING'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesCOMUNITARIO: TStringField
      FieldName = 'COMUNITARIO'
      Origin = 'COMUNITARIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesID_PRESTADOR: TIntegerField
      FieldName = 'ID_PRESTADOR'
      Origin = 'ID_PRESTADOR'
    end
    object QClientesMES_ADICIONAL: TIntegerField
      FieldName = 'MES_ADICIONAL'
      Origin = 'MES_ADICIONAL'
    end
    object QClientesMES_SEMESTRAL: TIntegerField
      FieldName = 'MES_SEMESTRAL'
      Origin = 'MES_SEMESTRAL'
    end
    object QClientesMOROSO: TStringField
      FieldName = 'MOROSO'
      Origin = 'MOROSO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QClientesPLANTILLA_CIVA: TStringField
      FieldName = 'PLANTILLA_CIVA'
      Origin = 'PLANTILLA_CIVA'
      FixedChar = True
      Size = 1
    end
    object QClientesOBSERVACIONES1: TStringField
      FieldName = 'OBSERVACIONES1'
      Origin = 'OBSERVACIONES1'
      Size = 60
    end
    object QClientesOBSERVACIONES2: TStringField
      FieldName = 'OBSERVACIONES2'
      Origin = 'OBSERVACIONES2'
      Size = 60
    end
    object QClientesAVISO: TStringField
      FieldName = 'AVISO'
      Origin = 'AVISO'
      Size = 250
    end
    object QClientesRUBRO: TIntegerField
      FieldName = 'RUBRO'
      Origin = 'RUBRO'
    end
    object QClientesMUESTRACOORPORATIVO: TStringField
      FieldName = 'MUESTRACOORPORATIVO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object QClientesFECHAULTIMACOMPRA: TSQLTimeStampField
      FieldName = 'FECHAULTIMACOMPRA'
      Origin = 'FECHAULTIMACOMPRA'
    end
    object QClientesFECHAALTA: TSQLTimeStampField
      FieldName = 'FECHAALTA'
      Origin = 'FECHAALTA'
    end
    object QClientesULTIMOPAGO: TSQLTimeStampField
      FieldName = 'ULTIMOPAGO'
      Origin = 'ULTIMOPAGO'
    end
    object QClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField
      FieldName = 'FECHA_VENCIMI_DDJJ_MULTI'
      Origin = 'FECHA_VENCIMI_DDJJ_MULTI'
    end
    object QClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField
      FieldName = 'FECHA_INCIO_FC_ABONO'
      Origin = 'FECHA_INCIO_FC_ABONO'
    end
    object QClientesVENCIMIENTO_TC: TSQLTimeStampField
      FieldName = 'VENCIMIENTO_TC'
      Origin = 'VENCIMIENTO_TC'
    end
    object QClientesFECHANACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHANACIMIENTO'
      Origin = 'FECHANACIMIENTO'
    end
    object QClientesDESDE_F8001: TSQLTimeStampField
      FieldName = 'DESDE_F8001'
      Origin = 'DESDE_F8001'
    end
    object QClientesHASTA_F8001: TSQLTimeStampField
      FieldName = 'HASTA_F8001'
      Origin = 'HASTA_F8001'
    end
  end
  object QProModelo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from POSTES_MODELOS')
    Left = 832
    Top = 200
    object QProModeloID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QProModeloMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 25
    end
  end
  object DSProModelo: TDataSource
    DataSet = QProModelo
    Left = 744
    Top = 144
  end
  object IBGRegDiario: TIBGenerator
    DatabaseFD = DMMain_FD.fdcGestion
    GeneratorName = 'next_id_postes_parte_diario'
    SystemGenerators = False
    Left = 920
    Top = 408
  end
  object ComBuscadorOrden: TComBuscador
    Data = QBuscaItem
    Campo = 'ID'
    Titulo = 'Buscador de Items'
    rOk = False
    Left = 408
    Top = 536
  end
  object QBuscaItem: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select det.id,det.id_opcab, det.fecha, det.codigo ,det.detalle, ' +
        'cab.nrocpbte,cab.cliente,cl.nombre from ordenproduccion_det det'
      'left join ordenproduccion_cab cab on cab.id=det.id_opcab'
      'left join clientes cl on cl.codigo=cab.cliente'
      
        '  where (cab.estado='#39'P'#39') and (cab.cliente=:cliente or :cliente='#39 +
        '******'#39')')
    Left = 320
    Top = 400
    ParamData = <
      item
        Name = 'CLIENTE'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QBuscaItemID: TIntegerField
      DisplayWidth = 8
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaItemID_OPCAB: TIntegerField
      DisplayWidth = 8
      FieldName = 'ID_OPCAB'
      Origin = 'ID_OPCAB'
      Required = True
    end
    object QBuscaItemFECHA: TSQLTimeStampField
      DisplayWidth = 16
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QBuscaItemCODIGO: TStringField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object QBuscaItemDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QBuscaItemNROCPBTE: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 14
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object QBuscaItemCLIENTE: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 7
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 6
    end
    object QBuscaItemNOMBRE: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 36
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
  end
  object DSMaterial: TDataSource
    DataSet = QMaterial
    Left = 232
    Top = 160
  end
  object QMaterial: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from ORDENPRODUCCION_TMATERIAL')
    Left = 376
    Top = 208
  end
  object QBuscadoReigstroDiario: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select p.id,p.fecha from POSTES_PARTE_DIARIO_CAB p'
      'order by p.fecha desc ,p.id desc'
      '')
    Left = 232
    Top = 536
    object QBuscadoReigstroDiarioFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      DisplayWidth = 12
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QBuscadoReigstroDiarioID: TIntegerField
      DisplayLabel = 'Nro Reg'
      DisplayWidth = 8
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object spAltaStock: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'ALTASTOCK_PARTE_PROD_DIARIO'
    Left = 952
    Top = 552
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
  object DSRegDiario: TDataSource
    DataSet = CDSRegDiario
    Left = 840
    Top = 416
  end
  object QRegCab: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select  c.* from postes_parte_diario_cab c'
      'where c.id=:id')
    Left = 604
    Top = 345
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRegCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRegCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
  end
  object CDSRegCab: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPRegCab'
    OnNewRecord = CDSRegCabNewRecord
    Left = 796
    Top = 321
    object CDSRegCabID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSRegCabFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
  end
  object DSPRegCab: TDataSetProvider
    DataSet = QRegCab
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 708
    Top = 337
  end
  object QSearch: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.*,d.id_opcab as MuestraID_CAB,d.id as MuestraID_DET,cl.' +
        'nombre  from ordenproduccion_sub_det s'
      'left join ordenproduccion_det d on d.id=s.id_det_op'
      'left join ordenproduccion_cab c on c.id=d.id_opcab'
      'left join clientes cl on cl.codigo=c.cliente'
      'where s.estado='#39'P'#39
      'order by s.nrocpbte desc,s.id asc')
    Left = 504
    Top = 272
    object QSearchID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QSearchID_DET_OP: TIntegerField
      FieldName = 'ID_DET_OP'
      Origin = 'ID_DET_OP'
      Required = True
    end
    object QSearchCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object QSearchDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 45
    end
    object QSearchCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.00'
    end
    object QSearchCANTIDAD_SALDO: TFloatField
      FieldName = 'CANTIDAD_SALDO'
      Origin = 'CANTIDAD_SALDO'
      Required = True
      DisplayFormat = ',0.00'
    end
    object QSearchFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QSearchTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QSearchCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Required = True
      Size = 2
    end
    object QSearchNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object QSearchESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object QSearchFECHAINICO: TSQLTimeStampField
      FieldName = 'FECHAINICO'
      Origin = 'FECHAINICO'
    end
    object QSearchFECHAFINAL: TSQLTimeStampField
      FieldName = 'FECHAFINAL'
      Origin = 'FECHAFINAL'
    end
    object QSearchESTACION: TIntegerField
      FieldName = 'ESTACION'
      Origin = 'ESTACION'
      Required = True
    end
    object QSearchKEY_ESTACION: TStringField
      FieldName = 'KEY_ESTACION'
      Origin = 'KEY_ESTACION'
      Required = True
      Size = 40
    end
    object QSearchMUESTRAID_CAB: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAID_CAB'
      Origin = 'ID_OPCAB'
      ProviderFlags = []
      ReadOnly = True
    end
    object QSearchMUESTRAID_DET: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAID_DET'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object QSearchNOMBRE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
  end
  object DSSearch: TDataSource
    DataSet = QSearch
    Left = 616
    Top = 272
  end
end

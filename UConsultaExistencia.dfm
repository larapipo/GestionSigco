object FormExistencias: TFormExistencias
  Left = 265
  Top = 101
  Caption = 'Existencias de Stock'
  ClientHeight = 728
  ClientWidth = 1139
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
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 13
  object pnBase: TPanel
    Left = 0
    Top = 0
    Width = 1139
    Height = 706
    Align = alClient
    BevelOuter = bvNone
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    OnDblClick = pnBaseDblClick
    object Label4: TLabel
      Left = 632
      Top = 1
      Width = 47
      Height = 13
      Caption = 'Dep'#243'sitos'
    end
    object Label5: TLabel
      Left = 889
      Top = 1
      Width = 40
      Height = 13
      Caption = 'Stock Al'
    end
    object lb1: TLabel
      Left = 214
      Top = 62
      Width = 80
      Height = 13
      Caption = 'Listas de Precios'
    end
    object Label8: TLabel
      Left = 504
      Top = 4
      Width = 60
      Height = 13
      Caption = 'Ult.Mes Vtas'
      FocusControl = DBEdit1
    end
    object Label12: TLabel
      Left = 394
      Top = 4
      Width = 93
      Height = 13
      Caption = 'Dias desde La UAP'
    end
    object spFiltroCpbte: TSpeedButton
      Left = 812
      Top = 20
      Width = 23
      Height = 22
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000007040108D073
        10F7D07310F7D07310F7D07310F7D07310F7CA6F10EF0000000007040108D073
        10F7D07310F7D07310F7D07310F7D07310F7CA6F10EF0000000007040108D777
        11FFD77711FFD77711FFD77711FFD77711FFD07310F70000000007040108D777
        11FFD77711FFD77711FFD77711FFD77711FFD07310F70000000007040108D777
        11FFD77711FFD77711FFD77711FFD77711FFD07310F70000000007040108D777
        11FFD77711FFD77711FFD77711FFD77711FFD07310F70000000007040108D777
        11FFD77711FFD77711FFD77711FFD77711FFD07310F70000000007040108D777
        11FFD77711FFD77711FFD77711FFD77711FFD07310F70000000007040108D777
        11FFD77711FFD77711FFD77711FFD77711FFD07310F70000000007040108D777
        11FFD77711FFD77711FFD77711FFD77711FFD07310F70000000007040108D777
        11FFD77711FFD77711FFD77711FFD77711FFD07310F70000000007040108D777
        11FFD77711FFD77711FFD77711FFD77711FFD07310F700000000000000000704
        0108070401080704010807040108070401080704010800000000000000000704
        0108070401080704010807040108070401080704010800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000007040108D073
        10F7D07310F7D07310F7D07310F7D07310F7CA6F10EF00000000020202043737
        377B3737377B3737377B3737377B3737377B353535770000000007040108D777
        11FFD77711FFD77711FFD77711FFD77711FFD07310F700000000020202043939
        397F3939397F3939397F3939397F3939397F3737377B0000000007040108D777
        11FFD77711FFD77711FFD77711FFD77711FFD07310F700000000020202043939
        397F3939397F3939397F3939397F3939397F3737377B0000000007040108D777
        11FFD77711FFD77711FFD77711FFD77711FFD07310F700000000020202043939
        397F3939397F3939397F3939397F3939397F3737377B0000000007040108D777
        11FFD77711FFD77711FFD77711FFD77711FFD07310F700000000020202043939
        397F3939397F3939397F3939397F3939397F3737377B0000000007040108D777
        11FFD77711FFD77711FFD77711FFD77711FFD07310F700000000020202043939
        397F3939397F3939397F3939397F3939397F3737377B00000000000000000704
        0108070401080704010807040108070401080704010800000000000000000202
        0204020202040202020402020204020202040202020400000000}
      ParentShowHint = False
      ShowHint = True
      OnClick = spFiltroCpbteClick
    end
    object rgFormato: TRadioGroup
      Left = 8
      Top = 7
      Width = 185
      Height = 95
      Caption = 'Formato para Impresi'#243'n'
      ItemIndex = 0
      Items.Strings = (
        'Sin Formato'
        'Detalle de cantidades'
        'Valorizado por Costo'
        'Valorizado por Lista de Precios')
      TabOrder = 1
      OnClick = rgFormatoClick
    end
    object rgUnidades: TRadioGroup
      Left = 216
      Top = 12
      Width = 185
      Height = 33
      Caption = 'En Unidades de'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Venta'
        'Compra')
      TabOrder = 2
      OnClick = rgUnidadesClick
    end
    object deFecha: TDateTimePicker
      Left = 889
      Top = 17
      Width = 97
      Height = 21
      Date = 39635.000000000000000000
      Time = 0.745571643499715700
      TabOrder = 3
    end
    object dbclistaPrecios: TJvDBLookupCombo
      Left = 214
      Top = 81
      Width = 331
      Height = 21
      DropDownWidth = 300
      DisplayAllFields = True
      Color = clBtnFace
      DisplayEmpty = 'Sin Lista Selecionada'
      EmptyValue = '0'
      Enabled = False
      LookupField = 'ID_LISTA'
      LookupDisplay = 'NOMBRE'
      LookupSource = DSlistaprecios
      TabOrder = 4
      OnKeyDown = dbclistaPreciosKeyDown
    end
    object RxCDepositos: TJvDBLookupCombo
      Left = 632
      Top = 20
      Width = 177
      Height = 21
      DropDownCount = 15
      DisplayEmpty = 'Todos'
      EmptyValue = '-1'
      LookupField = 'ID'
      LookupDisplay = 'NOMBRE'
      LookupSource = DSDepositos
      TabOrder = 0
      OnClick = RxCDepositosClick
    end
    object DBEdit1: TDBEdit
      Left = 504
      Top = 20
      Width = 111
      Height = 21
      DataField = 'VTAS_MES_ANTERIOR'
      DataSource = DSStock
      Enabled = False
      TabOrder = 5
    end
    object PageControl1: TPageControl
      Left = 0
      Top = 108
      Width = 1139
      Height = 598
      ActivePage = TabSheet1
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 6
      object TabSheet1: TTabSheet
        Caption = 'Stok por Deposito'
        object dbgstock: TJvDBGrid
          Left = 0
          Top = 0
          Width = 1131
          Height = 397
          Align = alClient
          Ctl3D = False
          DataSource = DSStock
          DefaultDrawing = False
          DrawingStyle = gdsClassic
          FixedColor = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentCtl3D = False
          ParentFont = False
          PopupMenu = PopupMenu2
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = dbgstockDrawColumnCell
          OnDblClick = dbgstockDblClick
          AutoAppend = False
          TitleButtons = True
          OnTitleBtnClick = dbgstockTitleBtnClick
          AlternateRowColor = clInfoBk
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'CODIGO_STK'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE_STK'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRIP_MARCA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'SIGNO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COSTO_TOTAL_STK'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 96
              Visible = True
            end
            item
              Color = clMoneyGreen
              Expanded = False
              FieldName = 'COSTO_MONEDALEGAL'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COSTO_TOTAL_FINAL'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clLime
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 107
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RECARGO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clLime
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNIDAD'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 44
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COMPROMETIDO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EN_TRANSITO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 96
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FISICO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VTAS_MES_ANTERIOR'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODIGOBARRA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRESENT_UNID'
              Title.Alignment = taCenter
              Title.Caption = 'Present.Uni.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRESENT_CANT'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 78
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REEMPLAZO_STK'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clAqua
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Color = clGradientInactiveCaption
              Expanded = False
              FieldName = 'TOTAL_UNIDADES'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clLime
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FISICO_PRESENTACION'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clAqua
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 147
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FUAP'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clAqua
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 123
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ACOPIO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FULTAJUSTE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ULTIMO_COSTO_COMPRA'
              Title.Caption = 'Ult Csto Compra'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'MARCA_STK'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RUBRO_STK'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE_RUBRO'
              ReadOnly = False
              Title.Alignment = taCenter
              Title.Caption = 'Rubro'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUBRUBRO_STK'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 82
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE_SUBRUBRO'
              ReadOnly = False
              Title.Alignment = taCenter
              Title.Caption = 'Subrubro'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RECONTADO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clLime
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DIFERENCIA_AJUSTE'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 93
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'IMPORTE_ULTIMO_COSTO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 99
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COSTO_UNI_TOTAL_OLD'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 110
              Visible = True
            end
            item
              Color = clInfoBk
              Expanded = False
              FieldName = 'FECHA_ULTIMO_COSTO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clYellow
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 100
              Visible = True
            end>
        end
        object pnPie: TPanel
          Left = 0
          Top = 397
          Width = 1131
          Height = 173
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            1131
            173)
          object Label1: TLabel
            Left = 8
            Top = 4
            Width = 66
            Height = 13
            Caption = 'Busca Codigo'
          end
          object Label3: TLabel
            Left = 452
            Top = 47
            Width = 51
            Height = 13
            Caption = 'Sub Rubro'
          end
          object dbStatus: TJvDBStatusLabel
            Left = 650
            Top = -56
            Width = 50
            Height = 13
            DataSource = DSStock
            Captions.Strings = (
              'Reg.Encontrados.:')
            Style = lsRecordNo
            Transparent = True
          end
          object Label6: TLabel
            Left = 8
            Top = 47
            Width = 30
            Height = 13
            Caption = 'Marca'
          end
          object Label7: TLabel
            Left = 103
            Top = 4
            Width = 66
            Height = 13
            Caption = 'Busca Detalle'
          end
          object spAplicaCoef: TSpeedButton
            Left = 687
            Top = 6
            Width = 23
            Height = 22
            Hint = 'Aplica coeficiente al costo'
            Anchors = [akLeft, akTop, akBottom]
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
              B1908EB1908EB1908EB1908EB1908EB1908EB1908EB1908EB1908EB1908EB190
              8EB1908EFF00FFFF00FFFF00FFFF00FFB1908EFEFBFAFEFBFAFEFBFAFEFBFAFE
              FBFAFEFBFAFEFBFAFEFBFAFEFBFAFEFBFAB1908EFF00FFFF00FFFF00FFFF00FF
              B1908EFEFBFA811E00811E00811E00811E00811E00811E00811E00811E00FEFB
              FAB1908EFF00FFFF00FFFF00FFFF00FFB1908EFEFAF4811E00FEFEFEFEFEFEFE
              FEFE758EFCA5B6FCFEFEFE811E00FEFAF4B1908EFF00FFFF00FFFF00FFFF00FF
              B1908EFEF7F0811E00FEFEFEF8FAFE6480FB011FFA3F5FFBFEFEFE811E00FEF7
              F0B1908EFF00FFFF00FFFF00FFFF00FFB1908EFEF4EB811E00CAD4FE2B4DFB01
              1FFA284BFB0120FACED7FE811E00FEF4EBB1908EFF00FFFF00FFFF00FFFF00FF
              B1908EFEF2E6811E003859FB092AFAAABAFCEAEEFE0C2EFA3557FB7F1E01FEF2
              E6B1908EFF00FFFF00FFFF00FFFF00FFB1908EFEEFE2811E00DCE3FECED7FEFE
              FEFEFEFEFE8097FC011FFA491F3FFEEFE2B1908EFF00FFFF00FFFF00FFFF00FF
              B1908EFFEDDD811E00FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE3C5CFB011FFAFFED
              DDB1908EFF00FFFF00FFFF00FFFF00FFB1908EFFEBD9811E00811E00811E0081
              1E00811E00811E00761E07111FB8011FFAB1908EFF00FFFF00FFFF00FFFF00FF
              B1908EFFE9D4FFE9D4FFE9D4FFE9D4FFE9D4FFE9D4B5A193B2A092B19F91011F
              FA011FFA011FFAFF00FFFF00FFFF00FFB1908EFFE6CFFFE6CFFFE6CFFFE6CFFF
              E6CFFFE6CF9C8B7E9C8B7E9C8B7E9C8B7EB1908E011FFAFF00FFFF00FFFF00FF
              B1908EFFE3CBFFE3CBFFE3CBFFE3CBFFE3CBBAA697FAF6F0FAF6F0DECFCEB190
              8EFF00FFFF00FFFF00FFFF00FFFF00FFB1908EFFE1C6FFE1C6FFE1C6FFE1C6FF
              E1C6BAA697FAF6F0D5C0B7B1908EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              B1908EFFDEC2FFDEC2FFDEC2FFDEC2FFDEC2BAA697D5C0B7B1908EFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFB1908EB1908EB1908EB1908EB1908EB1
              908EB1908EB1908EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            ParentShowHint = False
            ShowHint = True
            OnClick = spAplicaCoefClick
          end
          object Label2: TLabel
            Left = 221
            Top = 47
            Width = 29
            Height = 13
            Caption = 'Rubro'
          end
          object JvDBStatusLabel1: TJvDBStatusLabel
            Left = 1027
            Top = 5
            Width = 96
            Height = 13
            DataSource = DSStock
            Style = lsRecordNo
            GlyphAlign = glGlyphRight
            Anchors = [akTop, akRight]
            Transparent = True
            ExplicitLeft = 947
          end
          object Label13: TLabel
            Left = 876
            Top = 23
            Width = 59
            Height = 13
            Anchors = [akTop, akRight]
            Caption = '$ Total Neto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 934
          end
          object Label11: TLabel
            Left = 876
            Top = 69
            Width = 72
            Height = 13
            Anchors = [akTop, akRight]
            Caption = '$ Total Final'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 934
          end
          object spCorreo: TSpeedButton
            Left = 842
            Top = 110
            Width = 25
            Height = 29
            Hint = 'Enviar Por Correo'
            Anchors = [akTop, akRight]
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333333333333333333333333FFFFFFFFFFFFFFF000000000000
              000077777777777777770FFFFFFFFFFFFFF07F3333FFF33333370FFFF777FFFF
              FFF07F333777333333370FFFFFFFFFFFFFF07F3333FFFFFF33370FFFF777777F
              FFF07F33377777733FF70FFFFFFFFFFF99907F3FFF33333377770F777FFFFFFF
              9CA07F77733333337F370FFFFFFFFFFF9A907FFFFFFFFFFF7FF7000000000000
              0000777777777777777733333333333333333333333333333333333333333333
              3333333333333333333333333333333333333333333333333333333333333333
              3333333333333333333333333333333333333333333333333333}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = spCorreoClick
            ExplicitLeft = 851
          end
          object AdvCircularProgress: TAdvCircularProgress
            Left = 716
            Top = 0
            Width = 66
            Height = 60
            Visible = False
            Appearance.BackGroundColor = clNone
            Appearance.BorderColor = clNone
            Appearance.ActiveSegmentColor = 16752543
            Appearance.InActiveSegmentColor = clSilver
            Appearance.TransitionSegmentColor = 10485760
            Appearance.ProgressSegmentColor = 4194432
            Interval = 100
          end
          object dbeSumaTotal: TDBEdit
            Left = 954
            Top = 67
            Width = 148
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            Color = clInfoBk
            DataField = 'CostoTotalFinal'
            DataSource = DSStock
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 20
          end
          object rxcbMarca: TJvDBLookupCombo
            Left = 8
            Top = 66
            Width = 201
            Height = 21
            DisplayEmpty = 'Todas las Marcas'
            EmptyValue = '****'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            LookupField = 'MARCA_STK'
            LookupDisplay = 'DESCRIPCION_MARCA'
            LookupSource = DSMarca
            ParentFont = False
            TabOrder = 0
            OnChange = rxcbMarcaChange
          end
          object rxcbRubro: TJvDBLookupCombo
            Left = 221
            Top = 66
            Width = 225
            Height = 21
            DisplayEmpty = 'Todos los Rubros'
            EmptyValue = '***'
            LookupField = 'CODIGO_RUBRO'
            LookupDisplay = 'DETALLE_RUBRO'
            LookupSource = DSRubro
            TabOrder = 1
            OnChange = rxcbRubroChange
          end
          object rxcbSubRubro: TJvDBLookupCombo
            Left = 452
            Top = 66
            Width = 258
            Height = 21
            DisplayEmpty = 'Todos los Subrubros'
            EmptyValue = '*****'
            LookupField = 'CODIGO_SUBRUBRO'
            LookupDisplay = 'DETALLE_SUBRUBRO'
            LookupSource = DSSubRubro
            TabOrder = 2
            OnChange = rxcbSubRubroChange
          end
          object dbfCodigo: TJvDBFindEdit
            Left = 8
            Top = 23
            Width = 89
            Height = 21
            Flat = False
            ParentFlat = False
            MaxLength = 8
            TabOrder = 3
            Text = ''
            OnKeyDown = dbfDetalleKeyDown
            DataField = 'CODIGO_STK'
            DataSource = DSStock
            FindStyle = fsFilter
            FindMode = fmAnyPos
          end
          object edCoef: TJvCalcEdit
            Left = 619
            Top = 6
            Width = 62
            Height = 21
            Hint = 'Coeficiente de Multiplicacion aplicado al Costo...  Estimado..'
            DisplayFormat = ',0.00'
            Anchors = [akLeft, akTop, akBottom]
            ParentShowHint = False
            ShowButton = False
            ShowHint = True
            TabOrder = 4
            Value = 1.000000000000000000
            DecimalPlacesAlwaysShown = False
          end
          object chbStockCero: TCheckBox
            Left = 14
            Top = 93
            Width = 145
            Height = 17
            Caption = 'Muestra con Stock cero'
            Checked = True
            State = cbChecked
            TabOrder = 5
            OnClick = chbStockCeroClick
          end
          object btImprime: TBitBtn
            Left = 964
            Top = 110
            Width = 75
            Height = 29
            Action = Imprimir
            Anchors = [akTop, akRight]
            Caption = '&Imprimir'
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
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030303
              0303030303030303030303030303030303030303030303030303030303030303
              03030303030303030303030303030303030303030303030303FFFFFF03030303
              030303030303FFFFFF0303030000000303030303030303030300000003030303
              F8F8F8FFFFFFFFFFFFFFFFFFFFF8F8F8FFFF0300000000000000000000000000
              00000000000303F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FF0300FF070707
              070707070707070707070707000303F8FF030303030303030303030303030303
              F8FF0300FF070707070707070707070707070707000303F8FF03030303030303
              0303030303030303F8FF0300FF0707070707070707070707F9F90707000303F8
              FF030303030303030303030303030303F8FF0300FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF000303F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FF03F80000F8F8
              F8F8F8F8F8F8F8F8F8F80000F80303F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
              F8030303030000000000000000000000000000030303030303F8F8F8F8F8F8F8
              F8F8F8F8F8F8F8FF03030303030000FFFFFFFFFFFFFFFFFFFF00000303030303
              03F8F8FF03FFFFFFFFFFFFFFFFF8F80303030303030300FF0000000000000000
              FF000303030303030303F8FFF8F8F8F8F8F8F8F803F8FF0303030303030300FF
              FFFFFFFFFFFFFFFFFF000303030303030303F8FF03FFFFFFFFFFFFFFFFF8FF03
              03030303030300FF0000000000000000FF000303030303030303F8FFF8F8F8F8
              F8F8F8F803F8FF0303030303030300FFFFFFFFFFFFFFFFFFFF00030303030303
              0303F8FF03FFFF030303030303F8FF0303030303030300FF0000FFFFFFFFFFFF
              FF000303030303030303F8FFF8F803030303030303F8FF0303030303030300FF
              FFFFFFFFFFFFFFFFFF000303030303030303F8FFFFFFFFFFFFFFFFFFFFF8FF03
              0303030303030000000000000000000000000303030303030303F8F8F8F8F8F8
              F8F8F8F8F8F80303030303030303030303030303030303030303030303030303
              0303030303030303030303030303030303030303030303030303030303030303
              0303030303030303030303030303030303030303030303030303}
            NumGlyphs = 2
            TabOrder = 6
          end
          object btSalir: TBitBtn
            Left = 1045
            Top = 110
            Width = 75
            Height = 29
            Action = Salir
            Anchors = [akTop, akRight]
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
            TabOrder = 7
          end
          object btBuscar: TBitBtn
            Left = 883
            Top = 110
            Width = 75
            Height = 29
            Action = Buscar
            Anchors = [akTop, akRight]
            Caption = 'Buscar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Glyph.Data = {
              42020000424D4202000000000000420000002800000010000000100000000100
              1000030000000002000000000000000000000000000000000000007C0000E003
              00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
              1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CC6183967A5141F7C
              1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CA5145D6B7E6F5246A514
              1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C292584101F7CAF35FB52FB56E8182925
              1F7C1F7C1F7C1F7C1F7C1F7C1F7C31469D735246692D4A25583AD22DEF3DC514
              1F7C1F7C1F7C1F7C821405256A2DFB5A1B5B94562A56C9458B2DCD3910460621
              2D52292542081F7C242D4A624C56583A9942905E4B5AD16EF26EAF668E662A56
              24313146A4101F7C052D3573FF7F9252CC3D6D5E4B5AD16E146F78777A73136F
              2535C6181F7C1F7C252D3573FF7FDD7F14734E56C8452C52146F7877396B4E5A
              A7414A291F7C1F7C26315673BD7B146FF16ED26A4C5A8F622D524E5292566E5A
              A8454A291F7C1F7C47315877FF7F5877D26AB06A4B5AAF66F26E36737A73136F
              C8454A291F7C1F7C48317977BD7B5873F36EB06A4B5AAE6AF36E56739B7B136F
              C8454A291F7C1F7C69317977BD7B1573F36ED16E2B52D26AF36E15739A7B136F
              0C521F7C1F7C1F7C1F7C9456FF7F9B77D3665052071DEE41D4665773BC7BD55E
              84101F7C1F7C1F7C1F7C1F7C6B2D292984101F7C1F7C1F7C1F7C4A296A2D1F7C
              1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
              1F7C1F7C1F7C}
            ParentFont = False
            TabOrder = 8
          end
          object chbBajodelMinimo: TCheckBox
            Left = 14
            Top = 112
            Width = 145
            Height = 17
            Caption = 'Bajo del minimo'
            TabOrder = 9
            OnClick = chbBajodelMinimoClick
          end
          object chbMaximo: TCheckBox
            Left = 14
            Top = 132
            Width = 145
            Height = 17
            Caption = 'Superior al Maximo'
            TabOrder = 10
            OnClick = chbMaximoClick
          end
          object btExportarXLS: TBitBtn
            Left = 500
            Top = 93
            Width = 135
            Height = 29
            Action = ExportarXLS
            Caption = 'Exportar XLS'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
              078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
              BE078DBEFF00FFFF00FFB88989B88989B88989B88989B88989B88989B8898965
              CDF965CDF865CDF965CDF866CEF939ADD8078DBEFF00FFFF00FFB88989FEFDFB
              FEFDFBFEFDFBFEFDFBFEFDFB4D87430C85180C85180C851851BDB66ED4F93EB1
              D984D7EB078DBEFF00FFB88989FEF9F4FEF9F4FEF9F4FEF9F4FEF9F4B8898967
              CED60C85181398250C85184BB79A42B4D4AEF1F9078DBEFF00FFB88989FEF6ED
              FEF6EDFEF6EDFEF6EDFEF6EDB8898983E4FC84E4FC0C851826B73F0C851836A8
              A1B3F4F9078DBEFF00FFB88989FFF2E7FFF2E7FFF2E7FAE8DEFAE8DEB889898D
              EBFD8DEBFD5DC0A70C851837C4580C8518ACF0EB6DCAE0078DBEB88989FFEFE0
              FFEFE0FFEFE0D09F9ED0A09EC59393ACE4DA9FDBCA82AB810C85184EDB780C85
              1898BA99A3BFAC078DBEB88989FFEBD9FFEBD9F3D7C9D5ABA8D1C8C2CD999907
              87800C85180C851847D06E59E38842C6670C85180C8518078DBEB88989FFE8D2
              FFE8D2F3D4C4D9AEACCD99999AF6FE9BF5FE63C5A40C85185DE88E63EE984CD0
              750C8518F0F1E7B88989B88989B88989B88989B88989CD9999A1FAFEA1FBFEA0
              FAFEA1FBFE737E570C851846CB6E0C8518EFEDDFFEF6EDB88989FF00FF078DBE
              FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBEB8898984B47B0C8518EDE8
              D7FAE8DEFAE8DEB88989FF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
              00FFFF00FFB88989FFEFE0FFEFE0FFEFE0D09F9ED0A09EC59393FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989FFEBD9FFEBD9F3D7
              C9D5ABA8D1C8C2CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFB88989FFE8D2FFE8D2F3D4C4D9AEACCD9999FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989B88989B88989B889
              89CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            TabOrder = 11
          end
          object chbMayorCero: TCheckBox
            Left = 174
            Top = 93
            Width = 190
            Height = 17
            Caption = 'Muestra con Stock Mayor a cero'
            Enabled = False
            TabOrder = 12
            OnClick = chbStockCeroClick
          end
          object btExportarCSV: TBitBtn
            Left = 359
            Top = 93
            Width = 135
            Height = 29
            Action = ExportarCSV
            Caption = 'Exportar CSV'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
              078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
              BE078DBEFF00FFFF00FFB88989B88989B88989B88989B88989B88989B8898965
              CDF965CDF865CDF965CDF866CEF939ADD8078DBEFF00FFFF00FFB88989FEFDFB
              FEFDFBFEFDFBFEFDFBFEFDFB4D87430C85180C85180C851851BDB66ED4F93EB1
              D984D7EB078DBEFF00FFB88989FEF9F4FEF9F4FEF9F4FEF9F4FEF9F4B8898967
              CED60C85181398250C85184BB79A42B4D4AEF1F9078DBEFF00FFB88989FEF6ED
              FEF6EDFEF6EDFEF6EDFEF6EDB8898983E4FC84E4FC0C851826B73F0C851836A8
              A1B3F4F9078DBEFF00FFB88989FFF2E7FFF2E7FFF2E7FAE8DEFAE8DEB889898D
              EBFD8DEBFD5DC0A70C851837C4580C8518ACF0EB6DCAE0078DBEB88989FFEFE0
              FFEFE0FFEFE0D09F9ED0A09EC59393ACE4DA9FDBCA82AB810C85184EDB780C85
              1898BA99A3BFAC078DBEB88989FFEBD9FFEBD9F3D7C9D5ABA8D1C8C2CD999907
              87800C85180C851847D06E59E38842C6670C85180C8518078DBEB88989FFE8D2
              FFE8D2F3D4C4D9AEACCD99999AF6FE9BF5FE63C5A40C85185DE88E63EE984CD0
              750C8518F0F1E7B88989B88989B88989B88989B88989CD9999A1FAFEA1FBFEA0
              FAFEA1FBFE737E570C851846CB6E0C8518EFEDDFFEF6EDB88989FF00FF078DBE
              FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBEB8898984B47B0C8518EDE8
              D7FAE8DEFAE8DEB88989FF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
              00FFFF00FFB88989FFEFE0FFEFE0FFEFE0D09F9ED0A09EC59393FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989FFEBD9FFEBD9F3D7
              C9D5ABA8D1C8C2CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFB88989FFE8D2FFE8D2F3D4C4D9AEACCD9999FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989B88989B88989B889
              89CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            TabOrder = 13
          end
          object chbConIVA: TCheckBox
            Left = 650
            Top = 96
            Width = 122
            Height = 17
            Caption = 'Imprimir Costo C/IVA'
            TabOrder = 14
            OnClick = chbStockCeroClick
          end
          object chbCodigoAlter: TCheckBox
            Left = 174
            Top = 112
            Width = 158
            Height = 17
            Caption = 'Muestra Codigo Alternativo'
            TabOrder = 15
            OnClick = chbCodigoAlterClick
          end
          object chbWeb: TCheckBox
            Left = 174
            Top = 132
            Width = 158
            Height = 17
            Caption = 'Filtra los que Van a la Web'
            TabOrder = 16
            OnClick = chbWebClick
          end
          object chbOcultarTotal: TCheckBox
            Left = 650
            Top = 119
            Width = 95
            Height = 17
            Caption = 'Ocultar Total '
            TabOrder = 17
            OnClick = chbStockCeroClick
          end
          object dbfDetalle_2: TJvDBFindEdit
            Left = 103
            Top = 23
            Width = 414
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 18
            Text = ''
            OnKeyDown = dbfDetalle_2KeyDown
            DataField = 'DETALLE_STK'
            DataSource = DSStock
            FindStyle = fsFilter
            FindMode = fmAnyPos
          end
          object chbFiltra: TCheckBox
            Left = 420
            Top = 2
            Width = 97
            Height = 17
            Caption = 'Filtrar Consulta'
            TabOrder = 19
          end
          object dbeSumaNeto: TDBEdit
            Left = 954
            Top = 23
            Width = 148
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            Color = clInfoBk
            DataField = 'CostoTotalNeto'
            DataSource = DSStock
            ParentBiDiMode = False
            ReadOnly = True
            TabOrder = 21
          end
          object btHacerAjustes: TBitBtn
            Left = 359
            Top = 128
            Width = 135
            Height = 29
            Action = HacerAjuste
            Caption = 'Hacer Ajuste'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
              078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
              BE078DBEFF00FFFF00FFB88989B88989B88989B88989B88989B88989B8898965
              CDF965CDF865CDF965CDF866CEF939ADD8078DBEFF00FFFF00FFB88989FEFDFB
              FEFDFBFEFDFBFEFDFBFEFDFB4D87430C85180C85180C851851BDB66ED4F93EB1
              D984D7EB078DBEFF00FFB88989FEF9F4FEF9F4FEF9F4FEF9F4FEF9F4B8898967
              CED60C85181398250C85184BB79A42B4D4AEF1F9078DBEFF00FFB88989FEF6ED
              FEF6EDFEF6EDFEF6EDFEF6EDB8898983E4FC84E4FC0C851826B73F0C851836A8
              A1B3F4F9078DBEFF00FFB88989FFF2E7FFF2E7FFF2E7FAE8DEFAE8DEB889898D
              EBFD8DEBFD5DC0A70C851837C4580C8518ACF0EB6DCAE0078DBEB88989FFEFE0
              FFEFE0FFEFE0D09F9ED0A09EC59393ACE4DA9FDBCA82AB810C85184EDB780C85
              1898BA99A3BFAC078DBEB88989FFEBD9FFEBD9F3D7C9D5ABA8D1C8C2CD999907
              87800C85180C851847D06E59E38842C6670C85180C8518078DBEB88989FFE8D2
              FFE8D2F3D4C4D9AEACCD99999AF6FE9BF5FE63C5A40C85185DE88E63EE984CD0
              750C8518F0F1E7B88989B88989B88989B88989B88989CD9999A1FAFEA1FBFEA0
              FAFEA1FBFE737E570C851846CB6E0C8518EFEDDFFEF6EDB88989FF00FF078DBE
              FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBEB8898984B47B0C8518EDE8
              D7FAE8DEFAE8DEB88989FF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
              00FFFF00FFB88989FFEFE0FFEFE0FFEFE0D09F9ED0A09EC59393FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989FFEBD9FFEBD9F3D7
              C9D5ABA8D1C8C2CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFB88989FFE8D2FFE8D2F3D4C4D9AEACCD9999FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989B88989B88989B889
              89CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            TabOrder = 22
          end
          object btBorrarPikeado: TBitBtn
            Left = 500
            Top = 128
            Width = 135
            Height = 29
            Caption = 'Borrar Stock Pikeado'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
              078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
              BE078DBEFF00FFFF00FFB88989B88989B88989B88989B88989B88989B8898965
              CDF965CDF865CDF965CDF866CEF939ADD8078DBEFF00FFFF00FFB88989FEFDFB
              FEFDFBFEFDFBFEFDFBFEFDFB4D87430C85180C85180C851851BDB66ED4F93EB1
              D984D7EB078DBEFF00FFB88989FEF9F4FEF9F4FEF9F4FEF9F4FEF9F4B8898967
              CED60C85181398250C85184BB79A42B4D4AEF1F9078DBEFF00FFB88989FEF6ED
              FEF6EDFEF6EDFEF6EDFEF6EDB8898983E4FC84E4FC0C851826B73F0C851836A8
              A1B3F4F9078DBEFF00FFB88989FFF2E7FFF2E7FFF2E7FAE8DEFAE8DEB889898D
              EBFD8DEBFD5DC0A70C851837C4580C8518ACF0EB6DCAE0078DBEB88989FFEFE0
              FFEFE0FFEFE0D09F9ED0A09EC59393ACE4DA9FDBCA82AB810C85184EDB780C85
              1898BA99A3BFAC078DBEB88989FFEBD9FFEBD9F3D7C9D5ABA8D1C8C2CD999907
              87800C85180C851847D06E59E38842C6670C85180C8518078DBEB88989FFE8D2
              FFE8D2F3D4C4D9AEACCD99999AF6FE9BF5FE63C5A40C85185DE88E63EE984CD0
              750C8518F0F1E7B88989B88989B88989B88989B88989CD9999A1FAFEA1FBFEA0
              FAFEA1FBFE737E570C851846CB6E0C8518EFEDDFFEF6EDB88989FF00FF078DBE
              FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBEB8898984B47B0C8518EDE8
              D7FAE8DEFAE8DEB88989FF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
              00FFFF00FFB88989FFEFE0FFEFE0FFEFE0D09F9ED0A09EC59393FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989FFEBD9FFEBD9F3D7
              C9D5ABA8D1C8C2CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFB88989FFE8D2FFE8D2F3D4C4D9AEACCD9999FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989B88989B88989B889
              89CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            TabOrder = 23
            OnClick = btBorrarPikeadoClick
          end
          object chRecontados: TCheckBox
            Left = 174
            Top = 153
            Width = 97
            Height = 17
            Caption = 'Filtrar Recontados'
            TabOrder = 24
            OnClick = chRecontadosClick
          end
          object DBEdit2: TDBEdit
            Left = 954
            Top = 150
            Width = 148
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            Color = clInfoBk
            DataField = 'CostoTotalOld'
            DataSource = DSStock
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 25
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'General'
        ImageIndex = 1
        object cxDBPivotGrid1: TcxDBPivotGrid
          Left = 0
          Top = 0
          Width = 1131
          Height = 517
          Align = alClient
          DataSource = DSStockGral
          Groups = <>
          LookAndFeel.Kind = lfStandard
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Whiteprint'
          OptionsView.ColumnGrandTotalText = 'Total'
          OptionsView.RowGrandTotalText = 'Total'
          PopupMenu = PopupMenu1
          TabOrder = 0
          OnMouseDown = cxDBPivotGrid1MouseDown
          OnMouseMove = cxDBPivotGrid1MouseMove
          OnMouseUp = cxDBPivotGrid1MouseUp
          object cxDBPivotGrid1Field1: TcxDBPivotGridField
            AreaIndex = 7
            DataBinding.FieldName = 'CODIGO_STK'
            Visible = True
            UniqueName = 'Codigo'
          end
          object cxDBPivotGrid1Field2: TcxDBPivotGridField
            AreaIndex = 8
            DataBinding.FieldName = 'DETALLE_STK'
            Visible = True
            UniqueName = 'Detalle'
          end
          object cxDBPivotGrid1Field3: TcxDBPivotGridField
            AreaIndex = 4
            DataBinding.FieldName = 'COSTO_TOTAL_STK'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = ',0.000'
            Visible = True
            UniqueName = 'Costo Unit.'
          end
          object cxDBPivotGrid1Field4: TcxDBPivotGridField
            AreaIndex = 0
            DataBinding.FieldName = 'UNIDAD'
            Visible = True
            UniqueName = 'Uni.'
          end
          object cxDBPivotGrid1Field5: TcxDBPivotGridField
            Area = faData
            AreaIndex = 0
            DataBinding.FieldName = 'FISICO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = True
            UniqueName = 'Fisico'
          end
          object cxDBPivotGrid1Field6: TcxDBPivotGridField
            AreaIndex = 5
            DataBinding.FieldName = 'EN_TRANSITO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = True
            UniqueName = 'En Trans.'
          end
          object cxDBPivotGrid1Field7: TcxDBPivotGridField
            AreaIndex = 1
            DataBinding.FieldName = 'MINIMO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = True
            UniqueName = 'Minimo'
          end
          object cxDBPivotGrid1Field8: TcxDBPivotGridField
            AreaIndex = 2
            DataBinding.FieldName = 'MEDIO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = True
            UniqueName = 'Max.'
          end
          object cxDBPivotGrid1Field9: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 0
            DataBinding.FieldName = 'RUB_NOMBRE'
            MinWidth = 100
            Visible = True
            UniqueName = 'Rubro'
          end
          object cxDBPivotGrid1Field10: TcxDBPivotGridField
            Area = faRow
            AreaIndex = 1
            DataBinding.FieldName = 'SUB_NOMBRE'
            MinWidth = 100
            Visible = True
            UniqueName = 'Subrubro'
          end
          object cxDBPivotGrid1Field11: TcxDBPivotGridField
            AreaIndex = 3
            DataBinding.FieldName = 'MARCA_DEC'
            Visible = True
            UniqueName = 'Marca'
          end
          object cxDBPivotGrid1Field12: TcxDBPivotGridField
            AreaIndex = 6
            DataBinding.FieldName = 'COMPROMETIDO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = True
            UniqueName = 'Comp.'
          end
          object cxDBPivotGrid1Field13: TcxDBPivotGridField
            Area = faColumn
            AreaIndex = 0
            DataBinding.FieldName = 'MUESTRADEPO'
            Visible = True
            UniqueName = 'Deposito'
          end
          object cxDBPivotGrid1Field14: TcxDBPivotGridField
            AreaIndex = 9
            DataBinding.FieldName = 'SEC'
            Visible = True
            UniqueName = 'Sec.'
          end
          object cxDBPivotGrid1Field15: TcxDBPivotGridField
            AreaIndex = 10
            DataBinding.FieldName = 'UBICA'
            Visible = True
            UniqueName = 'Ubicac.'
          end
          object cxDBPivotGrid1Field16: TcxDBPivotGridField
            AreaIndex = 11
            DataBinding.FieldName = 'SIGNO_M'
            Visible = True
            UniqueName = 'Md.'
          end
          object cxDBPivotGrid1Field17: TcxDBPivotGridField
            AreaIndex = 12
            DataBinding.FieldName = 'REEMPLAZO_STK'
            Visible = True
            UniqueName = 'Cod.Alternativo'
          end
          object cxDBPivotGrid1Field18: TcxDBPivotGridField
            AreaIndex = 13
            DataBinding.FieldName = 'COSTOTOTAL'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = True
            UniqueName = 'Costo Total'
          end
          object cxDBPivotGrid1Field19: TcxDBPivotGridField
            AreaIndex = 14
            DataBinding.FieldName = 'FUAP'
            Visible = True
            UniqueName = 'Ult.Act.Prec.'
          end
          object cxDBPivotGrid1Field20: TcxDBPivotGridField
            AreaIndex = 15
            DataBinding.FieldName = 'ACOPIO'
            PropertiesClassName = 'TcxCalcEditProperties'
            Visible = True
            UniqueName = 'En Acopio'
          end
          object cxDBPivotGrid1Field21: TcxDBPivotGridField
            AreaIndex = 16
            DataBinding.FieldName = 'CONTENIDO_COMPRA'
            Visible = True
            UniqueName = 'Connt.Comp.'
          end
          object cxDBPivotGrid1Field22: TcxDBPivotGridField
            AreaIndex = 17
            DataBinding.FieldName = 'PRESENTACION'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Presentacion'
          end
          object cxDBPivotGrid1Field23: TcxDBPivotGridField
            AreaIndex = 18
            DataBinding.FieldName = 'TOTAL_EN_UNID'
            TotalsVisibility = tvNone
            Visible = True
            UniqueName = 'Total en Unid'
          end
        end
        object pnPieGral: TPanel
          Left = 0
          Top = 517
          Width = 1131
          Height = 53
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            1131
            53)
          object Label9: TLabel
            Left = 11
            Top = 20
            Width = 76
            Height = 13
            Cursor = crHandPoint
            Caption = 'Mostrar Campos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            OnClick = Label9Click
          end
          object Label10: TLabel
            Left = 105
            Top = 20
            Width = 28
            Height = 13
            Caption = 'Vistas'
          end
          object spVistas: TSpeedButton
            Left = 672
            Top = 14
            Width = 24
            Height = 22
            Hint = 'Ingresar Vista Actual'
            Anchors = [akTop, akRight]
            Flat = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFBBE4C270CF8527B7471EBA401EBA4027B74770CF85BBE4C2FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFDFA4FB96219C1401FCE4C24DC5827
              DD5C27DD5C24DC581FCE4C19C1404FB962FAFDFAFFFFFFFFFFFFFFFFFFFBFDFB
              21A93A1ED04E22D55521D35503B82C00A71200A71203B82C21D35522D5551ED0
              4E21A93AFBFDFBFFFFFFFFFFFF4EB15B1ECE4D21D3541FCC4D0FCC4500AD13FF
              FFFFFFFFFF00AD130FCC451FCC4D21D3541ECE4D4EB15BFFFFFFBDDEBE17BA3F
              21DA5A1ECC5120D0530DC74200BE25FFFFFFFFFFFF00BE250DC74220D0531ECC
              5121DA5A17BA3FBDDEBE6ABC7417D15120D45F0BCC4A04CA4300C13300BC22FF
              FFFFFFFFFF00BD2700C23B10CA4B0ECC4C20D45F17D1516ABC7430A03F33E67A
              00B62D00AD1300AD1300AD1300AD13FFFFFFFFFFFF00AD1300BD2700BD2300AD
              1300B62D33E67A30A14130A34381FCC300AF21FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00AF2181FCC430A14223953785FDCC
              2AC262FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF2AC26285FDCC23953533933D7BFAC33CD07D71C7801EBF5921C05B0ABA4DFF
              FFFFFFFFFF10BC5122C05C1EBF5971C7803CD07D7BFAC333933D67AB668AE5B9
              65EAB050DF9756DF9C41DB8D22C05CFFFFFFFFFFFF22C05C49DC9356DF9C50DF
              9765EAB08AE5B967AB66B9D4B94EB068AFFFEA5EE0A156E19F45DE9766D589FF
              FFFFFFFFFF23C05B50E09E56E19F5EE0A1AFFFEA4EB068B9D4B9FFFFFF458945
              7BDCA8B6FFEF76E5B551DFA366D589FFFFFFFFFFFF24BF5956E2A876E5B5B6FF
              EF7BDCA8458945FFFFFFFFFFFFFAFDFA1572156DD6A3B7FFF5AAF7E370E0B022
              C05C22C05C74E2B3ABF7E4B7FFF56DD6A3157215FAFDFAFFFFFFFFFFFFFFFFFF
              F9FCF945864538A75E7FE1B8A9FFECB9FFFBB9FFFBA9FFEC7FE1B838A75E4586
              45F9FCF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7CEB767A567247D3328
              8738288738247D3367A567B7CEB7FFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = spVistasClick
            ExplicitLeft = 450
          end
          object btBuscarGral: TBitBtn
            Left = 914
            Top = 12
            Width = 70
            Height = 24
            Anchors = [akTop, akRight]
            Caption = 'Buscar'
            Glyph.Data = {
              42020000424D4202000000000000420000002800000010000000100000000100
              1000030000000002000000000000000000000000000000000000007C0000E003
              00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
              1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CC6183967A5141F7C
              1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CA5145D6B7E6F5246A514
              1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C292584101F7CAF35FB52FB56E8182925
              1F7C1F7C1F7C1F7C1F7C1F7C1F7C31469D735246692D4A25583AD22DEF3DC514
              1F7C1F7C1F7C1F7C821405256A2DFB5A1B5B94562A56C9458B2DCD3910460621
              2D52292542081F7C242D4A624C56583A9942905E4B5AD16EF26EAF668E662A56
              24313146A4101F7C052D3573FF7F9252CC3D6D5E4B5AD16E146F78777A73136F
              2535C6181F7C1F7C252D3573FF7FDD7F14734E56C8452C52146F7877396B4E5A
              A7414A291F7C1F7C26315673BD7B146FF16ED26A4C5A8F622D524E5292566E5A
              A8454A291F7C1F7C47315877FF7F5877D26AB06A4B5AAF66F26E36737A73136F
              C8454A291F7C1F7C48317977BD7B5873F36EB06A4B5AAE6AF36E56739B7B136F
              C8454A291F7C1F7C69317977BD7B1573F36ED16E2B52D26AF36E15739A7B136F
              0C521F7C1F7C1F7C1F7C9456FF7F9B77D3665052071DEE41D4665773BC7BD55E
              84101F7C1F7C1F7C1F7C1F7C6B2D292984101F7C1F7C1F7C1F7C4A296A2D1F7C
              1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
              1F7C1F7C1F7C}
            TabOrder = 0
            OnClick = btBuscarGralClick
          end
          object btExportarXLS_gr: TBitBtn
            Left = 812
            Top = 12
            Width = 96
            Height = 24
            Action = ExportarXLSCross
            Anchors = [akTop, akRight]
            Caption = 'Exportar XLS +'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
              078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
              BE078DBEFF00FFFF00FFB88989B88989B88989B88989B88989B88989B8898965
              CDF965CDF865CDF965CDF866CEF939ADD8078DBEFF00FFFF00FFB88989FEFDFB
              FEFDFBFEFDFBFEFDFBFEFDFB4D87430C85180C85180C851851BDB66ED4F93EB1
              D984D7EB078DBEFF00FFB88989FEF9F4FEF9F4FEF9F4FEF9F4FEF9F4B8898967
              CED60C85181398250C85184BB79A42B4D4AEF1F9078DBEFF00FFB88989FEF6ED
              FEF6EDFEF6EDFEF6EDFEF6EDB8898983E4FC84E4FC0C851826B73F0C851836A8
              A1B3F4F9078DBEFF00FFB88989FFF2E7FFF2E7FFF2E7FAE8DEFAE8DEB889898D
              EBFD8DEBFD5DC0A70C851837C4580C8518ACF0EB6DCAE0078DBEB88989FFEFE0
              FFEFE0FFEFE0D09F9ED0A09EC59393ACE4DA9FDBCA82AB810C85184EDB780C85
              1898BA99A3BFAC078DBEB88989FFEBD9FFEBD9F3D7C9D5ABA8D1C8C2CD999907
              87800C85180C851847D06E59E38842C6670C85180C8518078DBEB88989FFE8D2
              FFE8D2F3D4C4D9AEACCD99999AF6FE9BF5FE63C5A40C85185DE88E63EE984CD0
              750C8518F0F1E7B88989B88989B88989B88989B88989CD9999A1FAFEA1FBFEA0
              FAFEA1FBFE737E570C851846CB6E0C8518EFEDDFFEF6EDB88989FF00FF078DBE
              FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBEB8898984B47B0C8518EDE8
              D7FAE8DEFAE8DEB88989FF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
              00FFFF00FFB88989FFEFE0FFEFE0FFEFE0D09F9ED0A09EC59393FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989FFEBD9FFEBD9F3D7
              C9D5ABA8D1C8C2CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFB88989FFE8D2FFE8D2F3D4C4D9AEACCD9999FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989B88989B88989B889
              89CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            TabOrder = 1
          end
          object btImprimir: TBitBtn
            Left = 731
            Top = 12
            Width = 75
            Height = 24
            Anchors = [akTop, akRight]
            Caption = '&Imprimir'
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
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030303
              0303030303030303030303030303030303030303030303030303030303030303
              03030303030303030303030303030303030303030303030303FFFFFF03030303
              030303030303FFFFFF0303030000000303030303030303030300000003030303
              F8F8F8FFFFFFFFFFFFFFFFFFFFF8F8F8FFFF0300000000000000000000000000
              00000000000303F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FF0300FF070707
              070707070707070707070707000303F8FF030303030303030303030303030303
              F8FF0300FF070707070707070707070707070707000303F8FF03030303030303
              0303030303030303F8FF0300FF0707070707070707070707F9F90707000303F8
              FF030303030303030303030303030303F8FF0300FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF000303F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FF03F80000F8F8
              F8F8F8F8F8F8F8F8F8F80000F80303F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
              F8030303030000000000000000000000000000030303030303F8F8F8F8F8F8F8
              F8F8F8F8F8F8F8FF03030303030000FFFFFFFFFFFFFFFFFFFF00000303030303
              03F8F8FF03FFFFFFFFFFFFFFFFF8F80303030303030300FF0000000000000000
              FF000303030303030303F8FFF8F8F8F8F8F8F8F803F8FF0303030303030300FF
              FFFFFFFFFFFFFFFFFF000303030303030303F8FF03FFFFFFFFFFFFFFFFF8FF03
              03030303030300FF0000000000000000FF000303030303030303F8FFF8F8F8F8
              F8F8F8F803F8FF0303030303030300FFFFFFFFFFFFFFFFFFFF00030303030303
              0303F8FF03FFFF030303030303F8FF0303030303030300FF0000FFFFFFFFFFFF
              FF000303030303030303F8FFF8F803030303030303F8FF0303030303030300FF
              FFFFFFFFFFFFFFFFFF000303030303030303F8FFFFFFFFFFFFFFFFFFFFF8FF03
              0303030303030000000000000000000000000303030303030303F8F8F8F8F8F8
              F8F8F8F8F8F80303030303030303030303030303030303030303030303030303
              0303030303030303030303030303030303030303030303030303030303030303
              0303030303030303030303030303030303030303030303030303}
            NumGlyphs = 2
            TabOrder = 2
            OnClick = btImprimirClick
          end
          object chTodosLosDepo: TCheckBox
            Left = 990
            Top = 11
            Width = 100
            Height = 25
            Alignment = taLeftJustify
            Anchors = [akTop, akRight]
            Caption = 'Traer Todos Los Depositos'
            TabOrder = 3
            WordWrap = True
          end
          object dbcVistas: TJvDBLookupCombo
            Left = 143
            Top = 15
            Width = 524
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            LookupField = 'ID'
            LookupDisplay = 'DESCRIPCION'
            LookupSource = DSVista
            TabOrder = 4
            OnChange = dbcVistasChange
          end
        end
      end
      object Pag3: TTabSheet
        Caption = 'Articulos Con trazabilidad'
        ImageIndex = 2
        object cxGridLotes: TcxGrid
          Left = 0
          Top = 0
          Width = 1131
          Height = 530
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'MoneyTwins'
          object cxGridLotesDBTableView1: TcxGridDBTableView
            FilterBox.Visible = fvNever
            DataController.DataSource = DSStkTrazable
            DataController.OnDetailExpanding = cxGridLotesDBTableView1DataControllerDetailExpanding
            OptionsCustomize.ColumnHorzSizing = False
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 22
            object cxGridLotesDBTableView1CODIGO_STK: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO_STK'
              HeaderAlignmentHorz = taCenter
              Width = 81
            end
            object cxGridLotesDBTableView1DETALLE_STK: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE_STK'
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGridLotesTableView1: TcxGridTableView
          end
          object cxGridLotesDBTableView2: TcxGridDBTableView
            DataController.DataSource = DSLotes
            DataController.DetailKeyFieldNames = 'CODIGO'
            DataController.KeyFieldNames = 'CODIGO'
            DataController.MasterKeyFieldNames = 'CODIGO_STK'
            OptionsCustomize.ColumnHorzSizing = False
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cxGridLotesDBTableView2LOTE: TcxGridDBColumn
              DataBinding.FieldName = 'LOTE'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object cxGridLotesDBTableView2FECHA_ENTRADA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA_ENTRADA'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridLotesDBTableView2FECHA_VTO: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA_VTO'
              HeaderAlignmentHorz = taCenter
              Width = 100
            end
            object cxGridLotesDBTableView2CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Width = 70
            end
            object cxGridLotesDBTableView2DESPACHO: TcxGridDBColumn
              DataBinding.FieldName = 'DESPACHO'
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object cxGridLotesDBTableView2CANTIDAD: TcxGridDBColumn
              DataBinding.FieldName = 'CANTIDAD'
              PropertiesClassName = 'TcxCalcEditProperties'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
            end
            object cxGridLotesDBTableView2SALDO: TcxGridDBColumn
              DataBinding.FieldName = 'SALDO'
              PropertiesClassName = 'TcxCalcEditProperties'
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGridLotesDBTableView3: TcxGridDBTableView
            DataController.DataSource = DSMovLote
            DataController.DetailKeyFieldNames = 'ID_LOTE'
            DataController.KeyFieldNames = 'ID_LOTE'
            DataController.MasterKeyFieldNames = 'ID'
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'ENTRA'
                Column = cxGridLotesDBTableView3ENTRA
              end
              item
                Kind = skSum
                FieldName = 'SALE'
                Column = cxGridLotesDBTableView3SALE
              end>
            OptionsCustomize.ColumnHorzSizing = False
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cxGridLotesDBTableView3ID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGridLotesDBTableView3ID_LOTE: TcxGridDBColumn
              DataBinding.FieldName = 'ID_LOTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGridLotesDBTableView3CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGridLotesDBTableView3FECHA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridLotesDBTableView3ID_COMPROBANTE: TcxGridDBColumn
              DataBinding.FieldName = 'ID_COMPROBANTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGridLotesDBTableView3ID_DETALLE_CPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'ID_DETALLE_CPBTE'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object cxGridLotesDBTableView3TIPO_COMPROBANTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPO_COMPROBANTE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridLotesDBTableView3TIPO: TcxGridDBColumn
              DataBinding.FieldName = 'TIPO'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridLotesDBTableView3MUESTRANOMBRE: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRANOMBRE'
            end
            object cxGridLotesDBTableView3ENTRA: TcxGridDBColumn
              DataBinding.FieldName = 'ENTRA'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridLotesDBTableView3SALE: TcxGridDBColumn
              DataBinding.FieldName = 'SALE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridLotesDBTableView3MUESTRANROCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRANROCPBTE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridLotesDBTableView3MUESTRAOPERACION: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRAOPERACION'
              HeaderAlignmentHorz = taCenter
            end
            object cxGridLotesDBTableView3MUESTRADEPOSITO: TcxGridDBColumn
              DataBinding.FieldName = 'MUESTRADEPOSITO'
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGridLotesLevel1: TcxGridLevel
            GridView = cxGridLotesDBTableView1
            object cxGridLotesLevel2: TcxGridLevel
              GridView = cxGridLotesDBTableView2
              object cxGridLotesLevel3: TcxGridLevel
                GridView = cxGridLotesDBTableView3
              end
            end
          end
        end
        object pnPieArticulos: TPanel
          Left = 0
          Top = 530
          Width = 1131
          Height = 40
          Align = alBottom
          BevelOuter = bvNone
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 1
          DesignSize = (
            1131
            40)
          object btImprimirTraza: TBitBtn
            Left = 812
            Top = 9
            Width = 75
            Height = 22
            Anchors = [akTop, akRight]
            Caption = '&Imprimir'
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
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030303
              0303030303030303030303030303030303030303030303030303030303030303
              03030303030303030303030303030303030303030303030303FFFFFF03030303
              030303030303FFFFFF0303030000000303030303030303030300000003030303
              F8F8F8FFFFFFFFFFFFFFFFFFFFF8F8F8FFFF0300000000000000000000000000
              00000000000303F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FF0300FF070707
              070707070707070707070707000303F8FF030303030303030303030303030303
              F8FF0300FF070707070707070707070707070707000303F8FF03030303030303
              0303030303030303F8FF0300FF0707070707070707070707F9F90707000303F8
              FF030303030303030303030303030303F8FF0300FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF000303F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FF03F80000F8F8
              F8F8F8F8F8F8F8F8F8F80000F80303F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
              F8030303030000000000000000000000000000030303030303F8F8F8F8F8F8F8
              F8F8F8F8F8F8F8FF03030303030000FFFFFFFFFFFFFFFFFFFF00000303030303
              03F8F8FF03FFFFFFFFFFFFFFFFF8F80303030303030300FF0000000000000000
              FF000303030303030303F8FFF8F8F8F8F8F8F8F803F8FF0303030303030300FF
              FFFFFFFFFFFFFFFFFF000303030303030303F8FF03FFFFFFFFFFFFFFFFF8FF03
              03030303030300FF0000000000000000FF000303030303030303F8FFF8F8F8F8
              F8F8F8F803F8FF0303030303030300FFFFFFFFFFFFFFFFFFFF00030303030303
              0303F8FF03FFFF030303030303F8FF0303030303030300FF0000FFFFFFFFFFFF
              FF000303030303030303F8FFF8F803030303030303F8FF0303030303030300FF
              FFFFFFFFFFFFFFFFFF000303030303030303F8FFFFFFFFFFFFFFFFFFFFF8FF03
              0303030303030000000000000000000000000303030303030303F8F8F8F8F8F8
              F8F8F8F8F8F80303030303030303030303030303030303030303030303030303
              0303030303030303030303030303030303030303030303030303030303030303
              0303030303030303030303030303030303030303030303030303}
            NumGlyphs = 2
            TabOrder = 0
            OnClick = BitBtn9Click
          end
          object btExportarXLS_2: TBitBtn
            Left = 893
            Top = 9
            Width = 96
            Height = 22
            Action = ExportarXLSCross
            Anchors = [akTop, akRight]
            Caption = 'Exportar XLS +'
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
              078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
              BE078DBEFF00FFFF00FFB88989B88989B88989B88989B88989B88989B8898965
              CDF965CDF865CDF965CDF866CEF939ADD8078DBEFF00FFFF00FFB88989FEFDFB
              FEFDFBFEFDFBFEFDFBFEFDFB4D87430C85180C85180C851851BDB66ED4F93EB1
              D984D7EB078DBEFF00FFB88989FEF9F4FEF9F4FEF9F4FEF9F4FEF9F4B8898967
              CED60C85181398250C85184BB79A42B4D4AEF1F9078DBEFF00FFB88989FEF6ED
              FEF6EDFEF6EDFEF6EDFEF6EDB8898983E4FC84E4FC0C851826B73F0C851836A8
              A1B3F4F9078DBEFF00FFB88989FFF2E7FFF2E7FFF2E7FAE8DEFAE8DEB889898D
              EBFD8DEBFD5DC0A70C851837C4580C8518ACF0EB6DCAE0078DBEB88989FFEFE0
              FFEFE0FFEFE0D09F9ED0A09EC59393ACE4DA9FDBCA82AB810C85184EDB780C85
              1898BA99A3BFAC078DBEB88989FFEBD9FFEBD9F3D7C9D5ABA8D1C8C2CD999907
              87800C85180C851847D06E59E38842C6670C85180C8518078DBEB88989FFE8D2
              FFE8D2F3D4C4D9AEACCD99999AF6FE9BF5FE63C5A40C85185DE88E63EE984CD0
              750C8518F0F1E7B88989B88989B88989B88989B88989CD9999A1FAFEA1FBFEA0
              FAFEA1FBFE737E570C851846CB6E0C8518EFEDDFFEF6EDB88989FF00FF078DBE
              FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBEB8898984B47B0C8518EDE8
              D7FAE8DEFAE8DEB88989FF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
              00FFFF00FFB88989FFEFE0FFEFE0FFEFE0D09F9ED0A09EC59393FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989FFEBD9FFEBD9F3D7
              C9D5ABA8D1C8C2CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFB88989FFE8D2FFE8D2F3D4C4D9AEACCD9999FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989B88989B88989B889
              89CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            TabOrder = 1
          end
          object btBuscarTrazables: TBitBtn
            Left = 995
            Top = 9
            Width = 70
            Height = 22
            Anchors = [akTop, akRight]
            Caption = 'Buscar'
            Glyph.Data = {
              42020000424D4202000000000000420000002800000010000000100000000100
              1000030000000002000000000000000000000000000000000000007C0000E003
              00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
              1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CC6183967A5141F7C
              1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7CA5145D6B7E6F5246A514
              1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C292584101F7CAF35FB52FB56E8182925
              1F7C1F7C1F7C1F7C1F7C1F7C1F7C31469D735246692D4A25583AD22DEF3DC514
              1F7C1F7C1F7C1F7C821405256A2DFB5A1B5B94562A56C9458B2DCD3910460621
              2D52292542081F7C242D4A624C56583A9942905E4B5AD16EF26EAF668E662A56
              24313146A4101F7C052D3573FF7F9252CC3D6D5E4B5AD16E146F78777A73136F
              2535C6181F7C1F7C252D3573FF7FDD7F14734E56C8452C52146F7877396B4E5A
              A7414A291F7C1F7C26315673BD7B146FF16ED26A4C5A8F622D524E5292566E5A
              A8454A291F7C1F7C47315877FF7F5877D26AB06A4B5AAF66F26E36737A73136F
              C8454A291F7C1F7C48317977BD7B5873F36EB06A4B5AAE6AF36E56739B7B136F
              C8454A291F7C1F7C69317977BD7B1573F36ED16E2B52D26AF36E15739A7B136F
              0C521F7C1F7C1F7C1F7C9456FF7F9B77D3665052071DEE41D4665773BC7BD55E
              84101F7C1F7C1F7C1F7C1F7C6B2D292984101F7C1F7C1F7C1F7C4A296A2D1F7C
              1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
              1F7C1F7C1F7C}
            TabOrder = 2
            OnClick = btBuscarTrazablesClick
          end
        end
      end
    end
    object chSinComprometido: TCheckBox
      Left = 636
      Top = 47
      Width = 151
      Height = 17
      Caption = 'Descontar Comprometido'
      TabOrder = 7
      OnClick = chSinComprometidoClick
    end
    object seDias: TSpinEdit
      Left = 423
      Top = 20
      Width = 64
      Height = 22
      MaxValue = 32000
      MinValue = -32000
      TabOrder = 8
      Value = 30
      OnChange = seDiasChange
    end
    object chControlFUAP: TCheckBox
      Left = 504
      Top = 47
      Width = 100
      Height = 17
      Caption = 'Verif.Ult. Ac. Pre.'
      TabOrder = 9
      OnClick = chControlFUAPClick
    end
    object chTransito: TCheckBox
      Left = 636
      Top = 70
      Width = 181
      Height = 17
      Caption = 'Descontar Stock en Transito'
      TabOrder = 10
      OnClick = chTransitoClick
    end
    object chActivos: TCheckBox
      Left = 728
      Top = 0
      Width = 81
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Solo Activos'
      TabOrder = 11
      OnClick = chActivosClick
    end
  end
  object sbEstado: TStatusBar
    Left = 0
    Top = 706
    Width = 1139
    Height = 22
    Panels = <>
    SimplePanel = True
    OnDblClick = sbEstadoDblClick
  end
  object pnColumnas: TPanel
    Left = 671
    Top = 152
    Width = 226
    Height = 324
    BevelOuter = bvNone
    Caption = 'pnColumnas'
    Color = clMaroon
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    ParentBackground = False
    TabOrder = 2
    Visible = False
    object btnSalirColumna: TSpeedButton
      Left = 184
      Top = 9
      Width = 33
      Height = 22
      Hint = 'Cerrar'
      Caption = 'X'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = btnSalirColumnaClick
    end
    object chklstColumnas: TCheckListBox
      Left = 10
      Top = 42
      Width = 206
      Height = 272
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 17
      ParentFont = False
      TabOrder = 0
      OnClick = chklstColumnasClick
    end
    object btExportar: TBitBtn
      Left = 13
      Top = 9
      Width = 78
      Height = 25
      Caption = 'Exportar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
        078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
        BE078DBEFF00FFFF00FFB88989B88989B88989B88989B88989B88989B8898965
        CDF965CDF865CDF965CDF866CEF939ADD8078DBEFF00FFFF00FFB88989FEFDFB
        FEFDFBFEFDFBFEFDFBFEFDFB4D87430C85180C85180C851851BDB66ED4F93EB1
        D984D7EB078DBEFF00FFB88989FEF9F4FEF9F4FEF9F4FEF9F4FEF9F4B8898967
        CED60C85181398250C85184BB79A42B4D4AEF1F9078DBEFF00FFB88989FEF6ED
        FEF6EDFEF6EDFEF6EDFEF6EDB8898983E4FC84E4FC0C851826B73F0C851836A8
        A1B3F4F9078DBEFF00FFB88989FFF2E7FFF2E7FFF2E7FAE8DEFAE8DEB889898D
        EBFD8DEBFD5DC0A70C851837C4580C8518ACF0EB6DCAE0078DBEB88989FFEFE0
        FFEFE0FFEFE0D09F9ED0A09EC59393ACE4DA9FDBCA82AB810C85184EDB780C85
        1898BA99A3BFAC078DBEB88989FFEBD9FFEBD9F3D7C9D5ABA8D1C8C2CD999907
        87800C85180C851847D06E59E38842C6670C85180C8518078DBEB88989FFE8D2
        FFE8D2F3D4C4D9AEACCD99999AF6FE9BF5FE63C5A40C85185DE88E63EE984CD0
        750C8518F0F1E7B88989B88989B88989B88989B88989CD9999A1FAFEA1FBFEA0
        FAFEA1FBFE737E570C851846CB6E0C8518EFEDDFFEF6EDB88989FF00FF078DBE
        FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBEB8898984B47B0C8518EDE8
        D7FAE8DEFAE8DEB88989FF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
        00FFFF00FFB88989FFEFE0FFEFE0FFEFE0D09F9ED0A09EC59393FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989FFEBD9FFEBD9F3D7
        C9D5ABA8D1C8C2CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFB88989FFE8D2FFE8D2F3D4C4D9AEACCD9999FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989B88989B88989B889
        89CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 1
      OnClick = btExportarClick
    end
  end
  object pnColumnasVisible: TPanel
    Left = 439
    Top = 152
    Width = 226
    Height = 324
    BevelOuter = bvNone
    Caption = 'pnColumnas'
    Color = clMaroon
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    ParentBackground = False
    TabOrder = 3
    Visible = False
    object Button1: TSpeedButton
      Left = 184
      Top = 9
      Width = 29
      Height = 22
      Hint = 'Cerrar'
      Caption = 'X'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = Button1Click
    end
    object chkColumnasVisibles: TCheckListBox
      Left = 10
      Top = 42
      Width = 206
      Height = 272
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      ItemHeight = 17
      TabOrder = 0
      OnClick = chkColumnasVisiblesClick
    end
  end
  object DSStock: TDataSource
    DataSet = CDSStock
    Left = 432
    Top = 160
  end
  object DSDepositos: TDataSource
    DataSet = QDepositos
    Left = 272
    Top = 192
  end
  object ActionList1: TActionList
    Left = 848
    Top = 192
    object Buscar: TAction
      Caption = 'Buscar'
      OnExecute = BuscarExecute
    end
    object StockCero: TAction
      Caption = 'StockCero'
    end
    object Imprimir: TAction
      Caption = '&Imprimir'
      OnExecute = ImprimirExecute
    end
    object Salir: TAction
      Caption = '&Salir'
      OnExecute = SalirExecute
    end
    object TraerConsulta: TAction
      Caption = 'TraerConsulta'
      OnExecute = TraerConsultaExecute
    end
    object ExportarXLS: TAction
      Caption = 'Exportar XLS'
      ShortCut = 16472
      OnExecute = ExportarXLSExecute
    end
    object ControlVisualColumnas: TAction
      Caption = 'ControlVisualColumnas'
      OnExecute = ControlVisualColumnasExecute
    end
    object ExportarXLSCross: TAction
      Caption = 'Exportar XLS +'
      OnExecute = ExportarXLSCrossExecute
    end
    object ExportarCSV: TAction
      Caption = 'Exportar CSV'
      OnExecute = ExportarCSVExecute
    end
    object MarcarControlado: TAction
      Caption = 'Marcar Stock Controlado'
      OnExecute = MarcarControladoExecute
    end
    object DesmarcarControlado: TAction
      Caption = 'Desmarcar Control Stock'
      OnExecute = DesmarcarControladoExecute
    end
    object VerPendientes: TAction
      Caption = 'Ver Pendientes'
      OnExecute = VerPendientesExecute
    end
    object HacerAjuste: TAction
      Caption = 'Hacer Ajuste'
      OnExecute = HacerAjusteExecute
    end
  end
  object DSRubro: TDataSource
    DataSet = QRubro
    Left = 96
    Top = 232
  end
  object DSMarca: TDataSource
    DataSet = QMarca
    Left = 88
    Top = 128
  end
  object DSSubRubro: TDataSource
    DataSet = QSubRubro
    Left = 96
    Top = 176
  end
  object frStock: TfrxReport
    Version = '2024.1.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39642.842906354170000000
    ReportOptions.LastChange = 39642.842906354170000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 448
    Top = 488
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
    end
  end
  object frDBStock: TfrxDBDataset
    UserName = 'frDBStock'
    CloseDataSource = False
    DataSource = DSStock
    BCDToCurrency = False
    DataSetOptions = []
    Left = 376
    Top = 456
    FieldDefs = <
      item
        FieldName = 'CODIGO_STK'
        FieldAlias = 'CODIGO_STK'
      end
      item
        FieldName = 'DETALLE_STK'
        FieldAlias = 'DETALLE_STK'
      end
      item
        FieldName = 'UNIDAD'
        FieldAlias = 'UNIDAD'
      end
      item
        FieldName = 'MARCA_STK'
        FieldAlias = 'MARCA_STK'
      end
      item
        FieldName = 'RUBRO_STK'
        FieldAlias = 'RUBRO_STK'
      end
      item
        FieldName = 'SUBRUBRO_STK'
        FieldAlias = 'SUBRUBRO_STK'
      end
      item
        FieldName = 'AUXILIAR'
        FieldAlias = 'AUXILIAR'
      end
      item
        FieldName = 'CODIGOBARRA'
        FieldAlias = 'CODIGOBARRA'
      end
      item
        FieldName = 'UNIDAD_COMPRA'
        FieldAlias = 'UNIDAD_COMPRA'
      end
      item
        FieldName = 'PRESENT_UNID'
        FieldAlias = 'PRESENT_UNID'
      end
      item
        FieldName = 'DESCRIP_MARCA'
        FieldAlias = 'DESCRIP_MARCA'
      end
      item
        FieldName = 'ID_MONEDA'
        FieldAlias = 'ID_MONEDA'
      end
      item
        FieldName = 'SIGNO'
        FieldAlias = 'SIGNO'
      end
      item
        FieldName = 'REEMPLAZO_STK'
        FieldAlias = 'REEMPLAZO_STK'
      end
      item
        FieldName = 'PUBLICAR_WEB'
        FieldAlias = 'PUBLICAR_WEB'
      end
      item
        FieldName = 'VTAS_MES_ANTERIOR'
        FieldAlias = 'VTAS_MES_ANTERIOR'
      end
      item
        FieldName = 'COSTO_TOTAL_STK'
        FieldAlias = 'COSTO_TOTAL_STK'
      end
      item
        FieldName = 'CONTENIDO_COMPRA'
        FieldAlias = 'CONTENIDO_COMPRA'
      end
      item
        FieldName = 'FISICO'
        FieldAlias = 'FISICO'
      end
      item
        FieldName = 'MINIMO'
        FieldAlias = 'MINIMO'
      end
      item
        FieldName = 'MEDIO'
        FieldAlias = 'MEDIO'
      end
      item
        FieldName = 'COMPROMETIDO'
        FieldAlias = 'COMPROMETIDO'
      end
      item
        FieldName = 'EN_TRANSITO'
        FieldAlias = 'EN_TRANSITO'
      end
      item
        FieldName = 'PRESENT_CANT'
        FieldAlias = 'PRESENT_CANT'
      end
      item
        FieldName = 'COTIZACION'
        FieldAlias = 'COTIZACION'
      end
      item
        FieldName = 'RECARGO'
        FieldAlias = 'RECARGO'
      end
      item
        FieldName = 'ACOPIO'
        FieldAlias = 'ACOPIO'
      end
      item
        FieldName = 'COSTO_TOTAL_FINAL'
        FieldAlias = 'COSTO_TOTAL_FINAL'
      end
      item
        FieldName = 'DETALLE_RUBRO'
        FieldAlias = 'DETALLE_RUBRO'
      end
      item
        FieldName = 'DETALLE_SUBRUBRO'
        FieldAlias = 'DETALLE_SUBRUBRO'
      end
      item
        FieldName = 'COSTO_MONEDALEGAL'
        FieldAlias = 'COSTO_MONEDALEGAL'
      end
      item
        FieldName = 'FISICO_PRESENTACION'
        FieldAlias = 'FISICO_PRESENTACION'
      end
      item
        FieldName = 'TOTAL_UNIDADES'
        FieldAlias = 'TOTAL_UNIDADES'
      end
      item
        FieldName = 'ULTIMO_COSTO_COMPRA'
        FieldAlias = 'ULTIMO_COSTO_COMPRA'
      end
      item
        FieldName = 'FUAP'
        FieldAlias = 'FUAP'
      end
      item
        FieldName = 'FULTAJUSTE'
        FieldAlias = 'FULTAJUSTE'
      end
      item
        FieldName = 'RECONTADO'
        FieldAlias = 'RECONTADO'
      end
      item
        FieldName = 'DIFERENCIA_AJUSTE'
        FieldAlias = 'DIFERENCIA_AJUSTE'
      end
      item
        FieldName = 'CostoTotalNeto'
        FieldAlias = 'CostoTotalNeto'
      end
      item
        FieldName = 'CostoTotalFinal'
        FieldAlias = 'CostoTotalFinal'
      end>
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 328
    Top = 384
  end
  object DSlistaprecios: TDataSource
    DataSet = QListaPrecios
    Left = 936
    Top = 232
  end
  object DataToXLS1: TDataToXLS
    DataSet = CDSStock
    Columns = <
      item
        DataField = 'CODIGO_STK'
        Title = 'C'#243'digo'
        ColWidth = 2220
      end
      item
        DataField = 'DETALLE_STK'
        Title = 'Detalle'
        ColWidth = 10138
      end
      item
        DataField = 'DESCRIP_MARCA'
        Title = 'Dec.Marca'
        ColWidth = 5698
      end
      item
        DataField = 'SIGNO'
        Title = 'M'
        Alignment = taCenter
        ColWidth = 1110
      end
      item
        DataField = 'COSTO_TOTAL_STK'
        Title = 'Costo'
        Alignment = taRightJustify
        ColWidth = 2664
        DataType = ctDouble
      end
      item
        DataField = 'COSTO_MONEDALEGAL'
        Title = 'Cst M.Leg'
        Alignment = taRightJustify
        ColWidth = 3071
        DataType = ctDouble
      end
      item
        DataField = 'COSTO_TOTAL_FINAL'
        Title = 'Costo C/IVA'
        Alignment = taRightJustify
        ColWidth = 3700
        DataType = ctDouble
      end
      item
        DataField = 'RECARGO'
        Title = '% Rec.'
        Alignment = taRightJustify
        ColWidth = 2220
        DataType = ctDouble
      end
      item
        DataField = 'UNIDAD'
        Title = 'Uni.'
        ColWidth = 1628
      end
      item
        DataField = 'COMPROMETIDO'
        Title = 'Comp.'
        Alignment = taRightJustify
        ColWidth = 3404
        DataType = ctDouble
      end
      item
        DataField = 'EN_TRANSITO'
        Title = 'En trans.'
        Alignment = taRightJustify
        ColWidth = 3552
        DataType = ctDouble
      end
      item
        DataField = 'FISICO'
        Title = 'Fisico'
        Alignment = taRightJustify
        ColWidth = 3700
        DataType = ctDouble
      end
      item
        DataField = 'VTAS_MES_ANTERIOR'
        Title = 'Ult.Mes Vtas'
        Alignment = taRightJustify
        ColWidth = 3700
      end
      item
        DataField = 'CODIGOBARRA'
        Title = 'Cod.Barra'
        ColWidth = 11248
      end
      item
        DataField = 'PRESENT_UNID'
        Title = 'Present.Uni.'
        ColWidth = 2738
      end
      item
        DataField = 'PRESENT_CANT'
        Title = 'Pres.Cant'
        Alignment = taRightJustify
        ColWidth = 3700
        DataType = ctDouble
      end
      item
        DataField = 'REEMPLAZO_STK'
        Title = 'Cod.Alternativo'
        ColWidth = 4588
      end
      item
        DataField = 'TOTAL_UNIDADES'
        Title = 'Unidades Fisicas'
        Alignment = taRightJustify
        ColWidth = 3700
        DataType = ctDouble
      end
      item
        DataField = 'FISICO_PRESENTACION'
        Title = 'Total  x Presnt.'
        Alignment = taRightJustify
        ColWidth = 3367
        DataType = ctDouble
      end
      item
        DataField = 'FUAP'
        Title = 'Ul.Act.Precio'
        ColWidth = 4144
      end
      item
        DataField = 'ACOPIO'
        Title = 'En Acopio'
        Alignment = taRightJustify
        ColWidth = 3700
        DataType = ctDouble
      end
      item
        DataField = 'FULTAJUSTE'
        Title = 'Stk.Audi.'
        Alignment = taCenter
        ColWidth = 3330
      end
      item
        DataField = 'ULTIMO_COSTO_COMPRA'
        Title = 'UltimoCostoCompra'
        ColWidth = 4000
        DataType = ctDouble
      end
      item
        DataField = 'MARCA_STK'
        Title = 'id_marca'
      end
      item
        DataField = 'RUBRO_STK'
        Title = 'id_rubro'
      end
      item
        DataField = 'DETALLE_RUBRO'
        Title = 'RUBRO'
      end
      item
        DataField = 'SUBRUBRO_STK'
        Title = 'ID_SUBRUBRO'
      end
      item
        DataField = 'DETALLE_SUBRUBRO'
        Title = 'SUBRUBRO'
      end
      item
        DataField = 'RECONTADO'
        Title = 'Recontado'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'DIFERENCIA_AJUSTE'
        Title = 'DiferenciaAjuste'
        Alignment = taRightJustify
        DataType = ctDouble
      end
      item
        DataField = 'IMPORTE_ULTIMO_COSTO'
        Title = 'Ultimo Costo Al'
        DataType = ctDouble
      end
      item
        DataField = 'FECHA_ULTIMO_COSTO'
        Title = 'Fecha Ult Costo AL'
      end
      item
        DataField = 'COSTO_UNI_TOTAL_OLD'
        Title = 'Costo Total Al'
        DataType = ctDouble
      end>
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clWindowText
    Title.Font.Height = -13
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold]
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = clWindowText
    Header.Font.Height = -13
    Header.Font.Name = 'Arial'
    Header.Font.Style = [fsBold]
    Left = 600
    Top = 304
  end
  object DataToAscii1: TDataToAscii
    DataSet = CDSStock
    Separator = ';'
    Quote = #0
    Fields = <
      item
        DataField = 'CODIGO_STK'
        Title = 'C'#243'digo'
      end
      item
        DataField = 'DETALLE_STK'
        Title = 'Detalle'
      end
      item
        DataField = 'DESCRIP_MARCA'
        Title = 'Dec.Marca'
      end
      item
        DataField = 'COSTO_TOTAL_STK'
        Title = 'Costo'
        Alignment = taRightJustify
      end
      item
        DataField = 'FISICO'
        Title = 'Fisico'
        Alignment = taRightJustify
      end
      item
        DataField = 'COSTO_TOTAL_FINAL'
        Title = 'Con Iva'
      end>
    Options = [qaSaveHeaders, qaRemoveCR, qaRemoveLF]
    Left = 1048
    Top = 624
  end
  object SaveDialog1: TSaveDialog
    Left = 744
    Top = 400
  end
  object DSStockGral: TDataSource
    DataSet = CDSStockGral
    Left = 624
    Top = 536
  end
  object CDSStockGral: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'unidad'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'deposito'
        ParamType = ptInput
      end>
    ProviderName = 'DSPStockGral'
    OnCalcFields = CDSStockGralCalcFields
    Left = 544
    Top = 585
    object CDSStockGralCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      OnGetText = CDSStockGralCODIGO_STKGetText
      Size = 8
    end
    object CDSStockGralDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSStockGralUNIDAD: TStringField
      DisplayLabel = 'Uni.'
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object CDSStockGralUNIDAD_COMPRA: TStringField
      DisplayLabel = 'Uni.Cpra'
      FieldName = 'UNIDAD_COMPRA'
      Origin = 'UNIDAD_COMPRA'
      Size = 3
    end
    object CDSStockGralMARCA_STK: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA_STK'
      Origin = 'MARCA_STK'
      Size = 4
    end
    object CDSStockGralRUBRO_STK: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      Size = 3
    end
    object CDSStockGralAUXILIAR: TStringField
      FieldName = 'AUXILIAR'
      Origin = 'AUXILIAR'
      Size = 8
    end
    object CDSStockGralSUBRUBRO_STK: TStringField
      DisplayLabel = 'Sub.Rub'
      FieldName = 'SUBRUBRO_STK'
      Origin = 'SUBRUBRO_STK'
      Size = 5
    end
    object CDSStockGralCOD_DEPO: TIntegerField
      DisplayLabel = 'Cod.Depo'
      FieldName = 'COD_DEPO'
      Origin = 'COD_DEPO'
    end
    object CDSStockGralRUB_NOMBRE: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'RUB_NOMBRE'
      Origin = 'RUB_NOMBRE'
      Size = 35
    end
    object CDSStockGralSUB_NOMBRE: TStringField
      DisplayLabel = 'Subrubro'
      FieldName = 'SUB_NOMBRE'
      Origin = 'SUB_NOMBRE'
      Size = 45
    end
    object CDSStockGralSEC: TStringField
      DisplayLabel = 'Sec.'
      FieldName = 'SEC'
      Origin = 'SEC'
      Size = 2
    end
    object CDSStockGralUBICA: TStringField
      DisplayLabel = 'Ubicac.'
      FieldName = 'UBICA'
      Origin = 'UBICA'
      Size = 3
    end
    object CDSStockGralSIGNO_M: TStringField
      DisplayLabel = 'Md.'
      FieldName = 'SIGNO_M'
      Origin = 'SIGNO_M'
      Size = 5
    end
    object CDSStockGralMUESTRADEPO: TStringField
      DisplayLabel = 'Deposito'
      FieldName = 'MUESTRADEPO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object CDSStockGralMARCA_DEC: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA_DEC'
      Origin = 'MARCA_DEC'
      Size = 25
    end
    object CDSStockGralREEMPLAZO_STK: TStringField
      DisplayLabel = 'Cod.Alternativo'
      FieldName = 'REEMPLAZO_STK'
      Origin = 'REEMPLAZO_STK'
      ProviderFlags = []
    end
    object CDSStockGralCOSTOTOTAL: TFloatField
      DisplayLabel = 'Costo Total'
      FieldKind = fkCalculated
      FieldName = 'COSTOTOTAL'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
      Calculated = True
    end
    object CDSStockGralTOTAL_EN_UNID: TFloatField
      DisplayLabel = 'Total en Unid'
      FieldKind = fkInternalCalc
      FieldName = 'TOTAL_EN_UNID'
      DisplayFormat = ',0.00'
    end
    object CDSStockGralCOSTO_TOTAL_STK: TFloatField
      DisplayLabel = 'Costo Unit.'
      FieldName = 'COSTO_TOTAL_STK'
      Origin = 'COSTO_TOTAL_STK'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSStockGralCONTENIDO_COMPRA: TFloatField
      DisplayLabel = 'Cont.Compra'
      FieldName = 'CONTENIDO_COMPRA'
      Origin = 'CONTENIDO_COMPRA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockGralFISICO: TFloatField
      DisplayLabel = 'Fisico'
      FieldName = 'FISICO'
      Origin = 'FISICO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockGralMINIMO: TFloatField
      DisplayLabel = 'Min.'
      FieldName = 'MINIMO'
      Origin = 'MINIMO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockGralMEDIO: TFloatField
      DisplayLabel = 'Max'
      FieldName = 'MEDIO'
      Origin = 'MEDIO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockGralCOMPROMETIDO: TFloatField
      DisplayLabel = 'Comprom.'
      FieldName = 'COMPROMETIDO'
      Origin = 'COMPROMETIDO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockGralEN_TRANSITO: TFloatField
      DisplayLabel = 'En Trans.'
      FieldName = 'EN_TRANSITO'
      Origin = 'EN_TRANSITO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockGralACOPIO: TFloatField
      DisplayLabel = 'En Acopio'
      FieldName = 'ACOPIO'
      Origin = 'ACOPIO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockGralPRESENTACION: TFloatField
      DisplayLabel = 'Presentacion'
      FieldName = 'PRESENTACION'
      Origin = 'PRESENTACION'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockGralFUAP: TSQLTimeStampField
      DisplayLabel = 'Ult.Act.Prec.'
      FieldName = 'FUAP'
      Origin = 'FUAP'
    end
  end
  object DSPStockGral: TDataSetProvider
    DataSet = QStockGral
    Left = 472
    Top = 560
  end
  object PopupMenu1: TPopupMenu
    Left = 684
    Top = 277
    object ExportarXLSCross1: TMenuItem
      Action = ExportarXLS
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object LimpiarFiltros: TMenuItem
      Caption = 'Limpiar Filtros'
      OnClick = LimpiarFiltrosClick
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 412
    Top = 333
    object ColumnasVisibles1: TMenuItem
      Caption = 'Columnas Visibles'
      OnClick = ColumnasVisibles1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object MarcarStockControlado1: TMenuItem
      Action = MarcarControlado
    end
    object DesmarcarControlStock1: TMenuItem
      Action = DesmarcarControlado
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object VerPendientes1: TMenuItem
      Action = VerPendientes
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object HacerAjuste1: TMenuItem
      Action = HacerAjuste
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    PreviewOptions.Caption = 'Vista Previa'
    PrintTitle = 'Informe'
    Version = 0
    Left = 476
    Top = 371
    PixelsPerInch = 96
    object dxComponentPrinter1Link1: TcxPivotGridReportLink
      Active = True
      Component = cxDBPivotGrid1
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 10000
      PrinterPage.Margins.Left = 10000
      PrinterPage.Margins.Right = 10000
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 45919.467826550930000000
      OptionsView.Borders = False
      OptionsView.ColumnFields = False
      OptionsView.DataFields = False
      OptionsView.ExpandButtons = False
      OptionsView.Prefilter = pfvNever
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link2: TdxGridReportLink
      DateFormat = 0
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 43856.787094375000000000
      TimeFormat = 0
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object QVista: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT * from VISTA_grillas where origen = :origen')
    Left = 93
    Top = 616
    ParamData = <
      item
        Name = 'origen'
        DataType = ftString
        ParamType = ptInput
      end>
    object QVistaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object QVistaVISTA: TBlobField
      FieldName = 'VISTA'
      Size = 1
    end
    object QVistaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 50
    end
  end
  object DSPVista: TDataSetProvider
    DataSet = QVista
    Options = []
    Left = 144
    Top = 580
  end
  object CDSVista: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'origen'
        ParamType = ptInput
      end>
    ProviderName = 'DSPVista'
    Left = 193
    Top = 531
    object CDSVistaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSVistaVISTA: TBlobField
      FieldName = 'VISTA'
      Size = 1
    end
    object CDSVistaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 50
    end
  end
  object DSVista: TDataSource
    DataSet = CDSVista
    Left = 288
    Top = 512
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    AutoFlush = True
    SubStorages = <>
    Left = 912
    Top = 224
  end
  object JvFormStorage1: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    StoredValues = <>
    Left = 880
    Top = 72
  end
  object DSStkTrazable: TDataSource
    DataSet = CDSStkTrazable
    Left = 240
    Top = 352
  end
  object DSLotes: TDataSource
    DataSet = CDSLotes
    Left = 240
    Top = 400
  end
  object DSPMovLote: TDataSetProvider
    DataSet = QMovLote_
    Left = 96
    Top = 440
  end
  object CDSMovLote: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_LOTE'
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovLote'
    Left = 176
    Top = 448
    object CDSMovLoteID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Visible = False
    end
    object CDSMovLoteID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
      Origin = 'ID_LOTE'
      Visible = False
    end
    object CDSMovLoteCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Visible = False
      Size = 8
    end
    object CDSMovLoteFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      DisplayWidth = 10
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSMovLoteID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      Visible = False
    end
    object CDSMovLoteID_DETALLE_CPBTE: TIntegerField
      FieldName = 'ID_DETALLE_CPBTE'
      Origin = 'ID_DETALLE_CPBTE'
      Visible = False
    end
    object CDSMovLoteTIPO_COMPROBANTE: TStringField
      DisplayLabel = 'Tp.'
      DisplayWidth = 4
      FieldName = 'TIPO_COMPROBANTE'
      Origin = 'TIPO_COMPROBANTE'
      Size = 2
    end
    object CDSMovLoteTIPO: TStringField
      DisplayLabel = 'T'
      DisplayWidth = 2
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Visible = False
      OnGetText = CDSMovLoteTIPOGetText
      FixedChar = True
      Size = 1
    end
    object CDSMovLoteDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Visible = False
    end
    object CDSMovLoteMUESTRANROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      DisplayWidth = 14
      FieldName = 'MUESTRANROCPBTE'
      Origin = 'MUESTRANROCPBTE'
      Size = 13
    end
    object CDSMovLoteMUESTRAOPERACION: TStringField
      DisplayLabel = 'Operacion'
      DisplayWidth = 12
      FieldName = 'MUESTRAOPERACION'
      Origin = 'MUESTRAOPERACION'
      Size = 15
    end
    object CDSMovLoteMUESTRADEPOSITO: TStringField
      DisplayLabel = 'Deposito'
      DisplayWidth = 20
      FieldName = 'MUESTRADEPOSITO'
      Origin = 'MUESTRADEPOSITO'
      Size = 25
    end
    object CDSMovLoteMUESTRANOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 42
      FieldName = 'MUESTRANOMBRE'
      Origin = 'MUESTRANOMBRE'
      Size = 45
    end
    object CDSMovLoteENTRA: TFloatField
      DisplayLabel = 'Entra'
      FieldName = 'ENTRA'
      Origin = 'ENTRA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovLoteSALE: TFloatField
      DisplayLabel = 'Sale'
      FieldName = 'SALE'
      Origin = 'SALE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSMovLote: TDataSource
    DataSet = CDSMovLote
    Left = 240
    Top = 456
  end
  object QMarca: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select marca_stk,descripcion_Marca from marcas'
      'order by descripcion_marca')
    Left = 37
    Top = 122
    object QMarcaMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Origin = 'MARCA_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object QMarcaDESCRIPCION_MARCA: TStringField
      FieldName = 'DESCRIPCION_MARCA'
      Origin = 'DESCRIPCION_MARCA'
      Size = 25
    end
  end
  object QLotes_: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select l.* from stock_lotes_impo l'
      'where l.codigo = :codigo OR :codigo='#39'********'#39)
    Left = 29
    Top = 386
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
    object QLotes_ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLotes_ID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      Required = True
    end
    object QLotes_CODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object QLotes_ID_DETALLE_CPBTE: TIntegerField
      FieldName = 'ID_DETALLE_CPBTE'
      Origin = 'ID_DETALLE_CPBTE'
      Required = True
    end
    object QLotes_FECHA_ENTRADA: TSQLTimeStampField
      FieldName = 'FECHA_ENTRADA'
      Origin = 'FECHA_ENTRADA'
    end
    object QLotes_FECHA_VTO: TSQLTimeStampField
      FieldName = 'FECHA_VTO'
      Origin = 'FECHA_VTO'
    end
    object QLotes_LOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 15
    end
    object QLotes_DESPACHO: TStringField
      FieldName = 'DESPACHO'
      Origin = 'DESPACHO'
    end
    object QLotes_CANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
    end
    object QLotes_TIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QLotes_DEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QLotes_SALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      Required = True
    end
  end
  object QStkTrazable_: TFDQuery
    AfterScroll = QStkTrazable_AfterScroll
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.codigo_stk,s.detalle_stk,s.fijacion_precio_gravado,s.fi' +
        'jacion_precio_exento,s.fijacion_precio_iva,'
      
        's.fijacion_precio_total,s.fijacion_precio_final from stock s whe' +
        're s.control_trazabilidad = '#39'S'#39)
    Left = 29
    Top = 338
    object QStkTrazable_CODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QStkTrazable_DETALLE_STK: TStringField
      DisplayLabel = 'Descripcion'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object QStkTrazable_FIJACION_PRECIO_GRAVADO: TFloatField
      FieldName = 'FIJACION_PRECIO_GRAVADO'
      Origin = 'FIJACION_PRECIO_GRAVADO'
      Required = True
    end
    object QStkTrazable_FIJACION_PRECIO_EXENTO: TFloatField
      FieldName = 'FIJACION_PRECIO_EXENTO'
      Origin = 'FIJACION_PRECIO_EXENTO'
      Required = True
    end
    object QStkTrazable_FIJACION_PRECIO_IVA: TFloatField
      FieldName = 'FIJACION_PRECIO_IVA'
      Origin = 'FIJACION_PRECIO_IVA'
      Required = True
    end
    object QStkTrazable_FIJACION_PRECIO_TOTAL: TFloatField
      FieldName = 'FIJACION_PRECIO_TOTAL'
      Origin = 'FIJACION_PRECIO_TOTAL'
      Required = True
    end
    object QStkTrazable_FIJACION_PRECIO_FINAL: TFloatField
      FieldName = 'FIJACION_PRECIO_FINAL'
      Origin = 'FIJACION_PRECIO_FINAL'
      Required = True
    end
  end
  object QListaPrecios: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select l.id as id_lista,l.nombre from listaprecioespecialcab l')
    Left = 957
    Top = 170
    object QListaPreciosID_LISTA: TIntegerField
      FieldName = 'ID_LISTA'
      Origin = 'ID'
      Required = True
    end
    object QListaPreciosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
  end
  object QStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      
        'select  d.* from existencia_stk_al (:lista,:unidad,:deposito,:fe' +
        'cha,:rubro,:subrubro,:marca) d'
      ''
      '')
    Left = 373
    Top = 162
    ParamData = <
      item
        Position = 1
        Name = 'lista'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'unidad'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'deposito'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'fecha'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'rubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'subrubro'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'marca'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QSubRubro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.codigo_subrubro,s.detalle_subrubro from subrubros s'
      'where (s.codigo_rubro = :rubro )  or ( :rubro = '#39'***'#39' )'
      'order by s.detalle_subrubro')
    Left = 37
    Top = 170
    ParamData = <
      item
        Name = 'RUBRO'
        DataType = ftString
        ParamType = ptInput
        Size = 3
        Value = Null
      end>
    object QSubRubroCODIGO_SUBRUBRO: TStringField
      FieldName = 'CODIGO_SUBRUBRO'
      Origin = 'CODIGO_SUBRUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object QSubRubroDETALLE_SUBRUBRO: TStringField
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      Required = True
      Size = 45
    end
  end
  object QRubro: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select codigo_rubro,detalle_rubro from rubros order by detalle_r' +
        'ubro')
    Left = 29
    Top = 226
    object QRubroCODIGO_RUBRO: TStringField
      FieldName = 'CODIGO_RUBRO'
      Origin = 'CODIGO_RUBRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 3
    end
    object QRubroDETALLE_RUBRO: TStringField
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      Required = True
      Size = 35
    end
  end
  object QDepositos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select d.* from depositos d where (d.activo=:activo or :activo='#39 +
        '*'#39')')
    Left = 197
    Top = 210
    ParamData = <
      item
        Name = 'ACTIVO'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 1
        Value = Null
      end>
    object QDepositosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDepositosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object QDepositosSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Required = True
    end
    object QDepositosCENTRALIZA_STOCK: TStringField
      FieldName = 'CENTRALIZA_STOCK'
      Origin = 'CENTRALIZA_STOCK'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QStockGral: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FetchOptions.AssignedValues = [evCursorKind]
    FetchOptions.CursorKind = ckStatic
    ResourceOptions.AssignedValues = [rvCmdExecMode]
    ResourceOptions.CmdExecMode = amNonBlocking
    SQL.Strings = (
      
        'select  d.*,s.reemplazo_stk, dp.nombre as MuestraDepo from exist' +
        'encia_stk (:unidad,:deposito) d'
      'left join depositos dp on dp.id=d.cod_depo'
      'left join stock s on s.codigo_stk=d.codigo_stk')
    Left = 408
    Top = 560
    ParamData = <
      item
        Position = 1
        Name = 'unidad'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 2
        Name = 'deposito'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QMovLote_: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from  VISTA_MOV_STOCK_LOTE ( :codigo )')
    Left = 32
    Top = 440
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object DSPStock: TDataSetProvider
    DataSet = QStock
    Options = []
    Left = 372
    Top = 220
  end
  object CDSStock: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <
      item
        DataType = ftInteger
        Name = 'lista'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'unidad'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'deposito'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'fecha'
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
        Name = 'marca'
        ParamType = ptInput
      end>
    ProviderName = 'DSPStock'
    OnCalcFields = CDSStockCalcFields
    Left = 420
    Top = 220
    object CDSStockCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      OnGetText = CDSStockCODIGO_STKGetText
      Size = 8
    end
    object CDSStockDETALLE_STK: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSStockUNIDAD: TStringField
      DisplayLabel = 'Unid'
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object CDSStockMARCA_STK: TStringField
      DisplayLabel = 'Cod.Mrk'
      FieldName = 'MARCA_STK'
      Origin = 'MARCA_STK'
      Size = 4
    end
    object CDSStockRUBRO_STK: TStringField
      DisplayLabel = 'Cod.Rub'
      FieldName = 'RUBRO_STK'
      Origin = 'RUBRO_STK'
      Size = 3
    end
    object CDSStockSUBRUBRO_STK: TStringField
      DisplayLabel = 'Cod.Sub'
      FieldName = 'SUBRUBRO_STK'
      Origin = 'SUBRUBRO_STK'
      Size = 5
    end
    object CDSStockAUXILIAR: TStringField
      FieldName = 'AUXILIAR'
      Origin = 'AUXILIAR'
      Size = 8
    end
    object CDSStockCODIGOBARRA: TStringField
      DisplayLabel = 'Cod.Barra'
      FieldName = 'CODIGOBARRA'
      Origin = 'CODIGOBARRA'
      Size = 50
    end
    object CDSStockUNIDAD_COMPRA: TStringField
      DisplayLabel = 'U.Comp'
      FieldName = 'UNIDAD_COMPRA'
      Origin = 'UNIDAD_COMPRA'
      Size = 3
    end
    object CDSStockPRESENT_UNID: TStringField
      DisplayLabel = 'Pres.'
      FieldName = 'PRESENT_UNID'
      Origin = 'PRESENT_UNID'
      Size = 3
    end
    object CDSStockDESCRIP_MARCA: TStringField
      DisplayLabel = 'Des.Marca'
      FieldName = 'DESCRIP_MARCA'
      Origin = 'DESCRIP_MARCA'
      Size = 25
    end
    object CDSStockID_MONEDA: TIntegerField
      DisplayLabel = 'Cod.Moneda'
      FieldName = 'ID_MONEDA'
      Origin = 'ID_MONEDA'
    end
    object CDSStockSIGNO: TStringField
      DisplayLabel = 'M'
      FieldName = 'SIGNO'
      Origin = 'SIGNO'
      Size = 5
    end
    object CDSStockREEMPLAZO_STK: TStringField
      DisplayLabel = 'Cod.Alternat.'
      FieldName = 'REEMPLAZO_STK'
      Origin = 'REEMPLAZO_STK'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSStockPUBLICAR_WEB: TStringField
      DisplayLabel = 'P.Web'
      FieldName = 'PUBLICAR_WEB'
      Origin = 'PUBLICAR_WEB'
      Size = 1
    end
    object CDSStockVTAS_MES_ANTERIOR: TFloatField
      DisplayLabel = 'Vta.Mes Anter.'
      FieldName = 'VTAS_MES_ANTERIOR'
      Origin = 'VTAS_MES_ANTERIOR'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockCOSTO_TOTAL_STK: TFloatField
      DisplayLabel = 'C.Total'
      FieldName = 'COSTO_TOTAL_STK'
      Origin = 'COSTO_TOTAL_STK'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockCONTENIDO_COMPRA: TFloatField
      DisplayLabel = 'Con.Compra'
      FieldName = 'CONTENIDO_COMPRA'
      Origin = 'CONTENIDO_COMPRA'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockFISICO: TFloatField
      DisplayLabel = 'Fisico'
      FieldName = 'FISICO'
      Origin = 'FISICO'
      OnGetText = CDSStockFISICOGetText
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockMINIMO: TFloatField
      DisplayLabel = 'Min.'
      FieldName = 'MINIMO'
      Origin = 'MINIMO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockMEDIO: TFloatField
      DisplayLabel = 'Max.'
      FieldName = 'MEDIO'
      Origin = 'MEDIO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockCOMPROMETIDO: TFloatField
      DisplayLabel = 'Comprometido'
      FieldName = 'COMPROMETIDO'
      Origin = 'COMPROMETIDO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockEN_TRANSITO: TFloatField
      DisplayLabel = 'En Trans.'
      FieldName = 'EN_TRANSITO'
      Origin = 'EN_TRANSITO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockPRESENT_CANT: TFloatField
      DisplayLabel = 'Presen.Cant'
      FieldName = 'PRESENT_CANT'
      Origin = 'PRESENT_CANT'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockCOTIZACION: TFloatField
      DisplayLabel = 'Cotiza.'
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockRECARGO: TFloatField
      DisplayLabel = 'Rec.'
      FieldName = 'RECARGO'
      Origin = 'RECARGO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockACOPIO: TFloatField
      DisplayLabel = 'Acopio'
      FieldName = 'ACOPIO'
      Origin = 'ACOPIO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockCOSTO_TOTAL_FINAL: TFloatField
      DisplayLabel = 'Cos.Total C/IVA (Final)'
      FieldName = 'COSTO_TOTAL_FINAL'
      Origin = 'COSTO_TOTAL_FINAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockDETALLE_RUBRO: TStringField
      DisplayLabel = 'Det.Rubro'
      FieldName = 'DETALLE_RUBRO'
      Origin = 'DETALLE_RUBRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object CDSStockDETALLE_SUBRUBRO: TStringField
      DisplayLabel = 'Det.Sub RUb'
      FieldName = 'DETALLE_SUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object CDSStockCOSTO_MONEDALEGAL: TFloatField
      DisplayLabel = 'Costo en $'
      FieldKind = fkInternalCalc
      FieldName = 'COSTO_MONEDALEGAL'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockFISICO_PRESENTACION: TFloatField
      DisplayLabel = 'Fisic.x Present.'
      FieldKind = fkInternalCalc
      FieldName = 'FISICO_PRESENTACION'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockTOTAL_UNIDADES: TFloatField
      DisplayLabel = 'T. en Unidades'
      FieldKind = fkInternalCalc
      FieldName = 'TOTAL_UNIDADES'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockULTIMO_COSTO_COMPRA: TFloatField
      FieldName = 'ULTIMO_COSTO_COMPRA'
      Origin = 'ULTIMO_COSTO_COMPRA'
      currency = True
    end
    object CDSStockFUAP: TSQLTimeStampField
      DisplayLabel = 'F.Ult.Ac'
      FieldName = 'FUAP'
      Origin = 'FUAP'
    end
    object CDSStockFULTAJUSTE: TSQLTimeStampField
      DisplayLabel = 'F.Ul.Aj'
      FieldName = 'FULTAJUSTE'
      Origin = 'FULTAJUSTE'
    end
    object CDSStockRECONTADO: TFloatField
      DisplayLabel = 'Recontado'
      FieldName = 'RECONTADO'
      Origin = 'RECONTADO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSStockDIFERENCIA_AJUSTE: TFloatField
      DisplayLabel = 'Dif.Ajuste'
      FieldKind = fkInternalCalc
      FieldName = 'DIFERENCIA_AJUSTE'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSStockFECHA_ULTIMO_COSTO: TSQLTimeStampField
      DisplayLabel = 'Fecha Costo Al'
      DisplayWidth = 26
      FieldName = 'FECHA_ULTIMO_COSTO'
      Origin = 'FECHA_ULTIMO_COSTO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object CDSStockIMPORTE_ULTIMO_COSTO: TFloatField
      DisplayLabel = 'Costo Al'
      DisplayWidth = 12
      FieldName = 'IMPORTE_ULTIMO_COSTO'
      Origin = 'IMPORTE_ULTIMO_COSTO'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSStockCOSTO_UNI_TOTAL_OLD: TFloatField
      DisplayLabel = 'Uni.Total Old AL'
      FieldKind = fkInternalCalc
      FieldName = 'COSTO_UNI_TOTAL_OLD'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object CDSStockCostoTotalNeto: TAggregateField
      FieldName = 'CostoTotalNeto'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = '0,000.00;-0,000.00;-'
      Expression = 'sum(costo_total_stk*fisico)'
    end
    object CDSStockCostoTotalFinal: TAggregateField
      FieldName = 'CostoTotalFinal'
      Visible = True
      Active = True
      DisplayName = ''
      DisplayFormat = '0,000.00;-0,000.00;-'
      Expression = 'sum(costo_total_final*fisico)'
    end
    object CDSStockCostoTotalOld: TAggregateField
      FieldName = 'CostoTotalOld'
      Active = True
      DisplayName = ''
      DisplayFormat = '0,000.00;-0,000.00;-'
      Expression = 'sum(importe_ultimo_costo*fisico)'
    end
  end
  object QLimpiarTemporal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'delete from borrador_inventario b where b.deposito=:deposito or ' +
        ':deposito=-1')
    Left = 1000
    Top = 177
    ParamData = <
      item
        Name = 'DEPOSITO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object FDGUIxAsyncExecuteDialog1: TFDGUIxAsyncExecuteDialog
    Provider = 'Forms'
    Caption = 'Consulta de Exsitencia'
    Prompt = 'Consulta en Ejecucion... Espere...'
    Left = 996
    Top = 260
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    ScreenCursor = gcrNone
    Left = 988
    Top = 332
  end
  object CDSStkTrazable: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPStkTrazable'
    Left = 180
    Top = 340
    object CDSStkTrazableCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object CDSStkTrazableDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Size = 45
    end
    object CDSStkTrazableFIJACION_PRECIO_GRAVADO: TFloatField
      FieldName = 'FIJACION_PRECIO_GRAVADO'
      Required = True
    end
    object CDSStkTrazableFIJACION_PRECIO_EXENTO: TFloatField
      FieldName = 'FIJACION_PRECIO_EXENTO'
      Required = True
    end
    object CDSStkTrazableFIJACION_PRECIO_IVA: TFloatField
      FieldName = 'FIJACION_PRECIO_IVA'
      Required = True
    end
    object CDSStkTrazableFIJACION_PRECIO_TOTAL: TFloatField
      FieldName = 'FIJACION_PRECIO_TOTAL'
      Required = True
    end
    object CDSStkTrazableFIJACION_PRECIO_FINAL: TFloatField
      FieldName = 'FIJACION_PRECIO_FINAL'
      Required = True
    end
  end
  object CDSLotes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 8
      end>
    ProviderName = 'DSPLotes'
    Left = 172
    Top = 388
    object CDSLotesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSLotesID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object CDSLotesCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 8
    end
    object CDSLotesID_DETALLE_CPBTE: TIntegerField
      FieldName = 'ID_DETALLE_CPBTE'
      Required = True
    end
    object CDSLotesFECHA_ENTRADA: TSQLTimeStampField
      FieldName = 'FECHA_ENTRADA'
    end
    object CDSLotesFECHA_VTO: TSQLTimeStampField
      FieldName = 'FECHA_VTO'
    end
    object CDSLotesLOTE: TStringField
      FieldName = 'LOTE'
      Size = 15
    end
    object CDSLotesDESPACHO: TStringField
      FieldName = 'DESPACHO'
    end
    object CDSLotesCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object CDSLotesTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSLotesDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
    object CDSLotesSALDO: TFloatField
      FieldName = 'SALDO'
      Required = True
    end
  end
  object DSPStkTrazable: TDataSetProvider
    DataSet = QStkTrazable_
    Left = 100
    Top = 340
  end
  object DSPLotes: TDataSetProvider
    DataSet = QLotes_
    Left = 100
    Top = 396
  end
end

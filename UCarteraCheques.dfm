object FormCarteraCheques: TFormCarteraCheques
  Left = 260
  Top = 93
  BorderIcons = [biSystemMenu]
  Caption = 'Cheques en Cartera'
  ClientHeight = 631
  ClientWidth = 947
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 13
  object pnBase: TPanel
    Left = 0
    Top = 0
    Width = 947
    Height = 631
    Align = alClient
    Color = clMenuHighlight
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      947
      631)
    object Label1: TLabel
      Left = 311
      Top = 574
      Width = 76
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Total Disponible'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ExplicitTop = 496
    end
    object Label2: TLabel
      Left = 184
      Top = 571
      Width = 36
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Usados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ExplicitTop = 493
    end
    object Label5: TLabel
      Left = 487
      Top = 574
      Width = 86
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Total Selecionado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ExplicitTop = 496
    end
    object Label6: TLabel
      Left = 11
      Top = 539
      Width = 90
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Origen de Ingreso :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 200
      Top = 539
      Width = 17
      Height = 17
      DataField = 'MUESTRATIPOCOMPROB'
      DataSource = DSCarteraChe
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 223
      Top = 539
      Width = 15
      Height = 17
      DataField = 'MUESTRACLASECOMPROB'
      DataSource = DSCarteraChe
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 107
      Top = 539
      Width = 96
      Height = 17
      DataField = 'MUESTRANOMBRECOMPROB'
      DataSource = DSCarteraChe
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 244
      Top = 539
      Width = 89
      Height = 17
      DataField = 'MUESTRANROCOMPROBANTE'
      DataSource = DSCarteraChe
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edCartera: TJvCalcEdit
      Left = 311
      Top = 590
      Width = 121
      Height = 21
      DisplayFormat = ',0.00'
      Anchors = [akLeft, akBottom]
      ShowButton = False
      TabOrder = 1
      DecimalPlacesAlwaysShown = False
    end
    object edSeleccionado: TJvCalcEdit
      Left = 184
      Top = 590
      Width = 121
      Height = 21
      DisplayFormat = ',0.00'
      Anchors = [akLeft, akBottom]
      ShowButton = False
      TabOrder = 2
      DecimalPlacesAlwaysShown = False
    end
    object btLoteCheques: TBitBtn
      Left = 90
      Top = 588
      Width = 73
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'OK'
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
      TabOrder = 3
      Visible = False
      OnClick = btLoteChequesClick
    end
    object btAbortar: TBitBtn
      Left = 11
      Top = 588
      Width = 73
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Abortar'
      Kind = bkAbort
      NumGlyphs = 2
      TabOrder = 4
      Visible = False
      OnClick = btAbortarClick
    end
    object pnEChek: TPanel
      Left = 637
      Top = 568
      Width = 284
      Height = 50
      Anchors = [akLeft, akBottom]
      ParentColor = True
      TabOrder = 5
      Visible = False
      object Label4: TLabel
        Left = 17
        Top = 4
        Width = 36
        Height = 13
        Caption = 'Nro.Cta'
        FocusControl = cxDBTextEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 144
        Top = 4
        Width = 38
        Height = 13
        Caption = 'Cta.Bco'
        FocusControl = cxDBTextEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cxDBTextEdit2: TDBEdit
        Left = 17
        Top = 23
        Width = 121
        Height = 21
        DataField = 'MUESTRANROCTA_ECHECK'
        DataSource = DSCarteraChe
        TabOrder = 0
      end
      object cxDBTextEdit1: TDBEdit
        Left = 144
        Top = 23
        Width = 121
        Height = 21
        DataField = 'MUESTRABANCO_ECHECK'
        DataSource = DSCarteraChe
        TabOrder = 1
      end
    end
    object dbgCheques: TDBGrid
      Left = 11
      Top = 11
      Width = 925
      Height = 526
      Margins.Bottom = 10
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = DSCarteraChe
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clMaroon
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnCellClick = dbgChequesCellClick
      OnDrawColumnCell = dbgChequesDrawColumnCell
      OnDblClick = dbgChequesDblClick
      OnKeyPress = dbgChequesKeyPress
      OnTitleClick = dbgChequesTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'MUESTRABANCO'
          Title.Alignment = taCenter
          Width = 139
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHA_ENTRADA'
          Title.Alignment = taCenter
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHA_COBRO'
          Title.Alignment = taCenter
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FIRMANTE'
          Title.Alignment = taCenter
          Width = 172
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SALDO_IMPORTE'
          Title.Alignment = taCenter
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPORTE'
          Title.Alignment = taCenter
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Title.Alignment = taCenter
          Width = 117
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'E_CHECK'
          Title.Alignment = taCenter
          Width = 26
          Visible = True
        end>
    end
    object edElegidos: TJvCalcEdit
      Left = 487
      Top = 590
      Width = 121
      Height = 21
      DisplayFormat = ',0.00'
      Anchors = [akLeft, akBottom]
      ShowButton = False
      TabOrder = 6
      DecimalPlacesAlwaysShown = False
    end
  end
  object DSPCarteraChe: TDataSetProvider
    DataSet = QCarteraCheDBX
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 184
    Top = 128
  end
  object ActionList1: TActionList
    Left = 544
    Top = 56
    object Aceptar: TAction
      Caption = 'Aceptar'
    end
  end
  object ImageList1: TImageList
    Left = 464
    Top = 48
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000FFFF0000FFFF00000000000000000000000000000000000000
      0000FFFFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF00000000000000000000FFFF0000FFFF00000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF00000000000000000000FFFF0000FFFF00000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF00000000000000000000FFFF0000FFFF00000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FC3FE7FF00000000E00FE3FF00000000
      C007E1FF00000000800300FF000000008001007F000000000001003F00000000
      0000007F00000000000000FF000000000000E1FF000000000000E3FF00000000
      0001E7FF000000000001FFFF000000008001FFFF00000000C003FFFF00000000
      E007FFFF00000000F01FFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object CDSCarteraChe: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_CHEQUE_TER'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_CAJA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_MOV_CAJA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_FPAGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_BANCO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NUMERO'
        DataType = ftInteger
      end
      item
        Name = 'FECHA_EMISION'
        DataType = ftTimeStamp
      end
      item
        Name = 'FECHA_COBRO'
        DataType = ftTimeStamp
      end
      item
        Name = 'FECHA_ENTRADA'
        DataType = ftTimeStamp
      end
      item
        Name = 'FECHA_SALIDA'
        DataType = ftTimeStamp
      end
      item
        Name = 'ORIGEN'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'DESTINO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UNIDADES'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'IMPORTE'
        DataType = ftFloat
      end
      item
        Name = 'DISPONIBLE'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FIRMANTE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'COTIZACION'
        DataType = ftFloat
      end
      item
        Name = 'ID_MOV_CAJA_EGRESOS'
        DataType = ftInteger
      end
      item
        Name = 'ID_CUENTA_CAJA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_CUENTA_BCO_DEPOSITADO'
        DataType = ftInteger
      end
      item
        Name = 'MONEDA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SALDO_UNIDADES'
        DataType = ftFloat
      end
      item
        Name = 'SALDO_IMPORTE'
        DataType = ftFloat
      end
      item
        Name = 'CUIT'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'SUCURSAL_BCO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'NRO_CTA'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'E_CHECK'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_CTA_CAJA_BCO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'MUESTRABANCO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ID_CUENTA'
        DataType = ftInteger
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'NRO_CUENTA'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'MUESTRABANCO_ECHECK'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'MUESTRANROCTA_ECHECK'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'MUESTRATIPOCOMPROB'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'MUESTRACLASECOMPROB'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'MUESTRANROCOMPROBANTE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'MUESTRAIDCOMPROBANTE'
        DataType = ftInteger
      end
      item
        Name = 'MUESTRANOMBRECOMPROB'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'DSPCarteraChe'
    StoreDefs = True
    AfterOpen = CDSCarteraCheAfterOpen
    AfterScroll = CDSCarteraCheAfterScroll
    Left = 272
    Top = 128
    object CDSCarteraCheID_CHEQUE_TER: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CHEQUE_TER'
      Origin = 'ID_CHEQUE_TER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object CDSCarteraCheID_CAJA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      Visible = False
    end
    object CDSCarteraCheID_MOV_CAJA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
      Visible = False
    end
    object CDSCarteraCheID_FPAGO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      Visible = False
    end
    object CDSCarteraCheID_BANCO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
      Visible = False
    end
    object CDSCarteraCheNUMERO: TIntegerField
      DisplayLabel = 'Numero'
      DisplayWidth = 15
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object CDSCarteraCheFECHA_EMISION: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha Emision'
      FieldName = 'FECHA_EMISION'
      Origin = 'FECHA_EMISION'
    end
    object CDSCarteraCheFECHA_COBRO: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha Cob.'
      FieldName = 'FECHA_COBRO'
      Origin = 'FECHA_COBRO'
    end
    object CDSCarteraCheFECHA_ENTRADA: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha Ent.'
      FieldName = 'FECHA_ENTRADA'
      Origin = 'FECHA_ENTRADA'
    end
    object CDSCarteraCheFECHA_SALIDA: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha Sal.'
      FieldName = 'FECHA_SALIDA'
      Origin = 'FECHA_SALIDA'
    end
    object CDSCarteraCheORIGEN: TStringField
      DisplayWidth = 30
      FieldName = 'ORIGEN'
      Origin = 'ORIGEN'
      Visible = False
      Size = 30
    end
    object CDSCarteraCheDESTINO: TStringField
      DisplayWidth = 30
      FieldName = 'DESTINO'
      Origin = 'DESTINO'
      Visible = False
      Size = 30
    end
    object CDSCarteraCheUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSCarteraCheIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
    end
    object CDSCarteraCheDISPONIBLE: TStringField
      DisplayWidth = 1
      FieldName = 'DISPONIBLE'
      Origin = 'DISPONIBLE'
      Visible = False
      Size = 1
    end
    object CDSCarteraCheFIRMANTE: TStringField
      DisplayLabel = 'Firmante'
      DisplayWidth = 33
      FieldName = 'FIRMANTE'
      Origin = 'FIRMANTE'
      Size = 30
    end
    object CDSCarteraCheCOTIZACION: TFloatField
      DisplayLabel = 'Cotiz'
      FieldName = 'COTIZACION'
      DisplayFormat = ',0.00'
    end
    object CDSCarteraCheID_MOV_CAJA_EGRESOS: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_MOV_CAJA_EGRESOS'
      Origin = 'ID_MOV_CAJA_EGRESOS'
      Visible = False
    end
    object CDSCarteraCheID_CUENTA_CAJA: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      Visible = False
    end
    object CDSCarteraCheID_CUENTA_BCO_DEPOSITADO: TIntegerField
      DisplayWidth = 10
      FieldName = 'ID_CUENTA_BCO_DEPOSITADO'
      Origin = 'ID_CUENTA_BCO_DEPOSITADO'
      Visible = False
    end
    object CDSCarteraCheMONEDA: TIntegerField
      DisplayWidth = 10
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Visible = False
    end
    object CDSCarteraCheSALDO_UNIDADES: TFloatField
      DisplayLabel = 'Saldo Unid.'
      FieldName = 'SALDO_UNIDADES'
      DisplayFormat = ',0.00'
    end
    object CDSCarteraCheSALDO_IMPORTE: TFloatField
      DisplayLabel = 'Saldo Imp'
      FieldName = 'SALDO_IMPORTE'
      DisplayFormat = ',0.00'
    end
    object CDSCarteraCheCUIT: TStringField
      DisplayWidth = 13
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Visible = False
      Size = 13
    end
    object CDSCarteraCheSUCURSAL_BCO: TStringField
      DisplayWidth = 6
      FieldName = 'SUCURSAL_BCO'
      Origin = 'SUCURSAL_BCO'
      Visible = False
      Size = 6
    end
    object CDSCarteraCheNRO_CTA: TStringField
      DisplayWidth = 15
      FieldName = 'NRO_CTA'
      Origin = 'NRO_CTA'
      ProviderFlags = []
      Visible = False
      Size = 15
    end
    object CDSCarteraCheE_CHECK: TStringField
      Alignment = taCenter
      DisplayLabel = '@'
      FieldName = 'E_CHECK'
      Origin = 'E_CHECK'
      OnGetText = CDSCarteraCheE_CHECKGetText
      FixedChar = True
      Size = 1
    end
    object CDSCarteraCheID_CTA_CAJA_BCO: TIntegerField
      FieldName = 'ID_CTA_CAJA_BCO'
      Required = True
    end
    object CDSCarteraCheMUESTRABANCO: TStringField
      DisplayLabel = 'Banco'
      DisplayWidth = 20
      FieldName = 'MUESTRABANCO'
      Origin = 'NOMBRE'
      ProviderFlags = []
    end
    object CDSCarteraCheNRO_CUENTA: TStringField
      DisplayLabel = 'Nro.Cta'
      FieldName = 'NRO_CUENTA'
      Origin = 'NRO_CUENTA'
      ProviderFlags = []
      Size = 15
    end
    object CDSCarteraCheNOMBRE: TStringField
      DisplayLabel = 'Cta.de Caja Bco'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object CDSCarteraCheID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
      ProviderFlags = []
    end
    object CDSCarteraCheMUESTRABANCO_ECHECK: TStringField
      FieldName = 'MUESTRABANCO_ECHECK'
      ProviderFlags = []
      Size = 25
    end
    object CDSCarteraCheMUESTRANROCTA_ECHECK: TStringField
      FieldName = 'MUESTRANROCTA_ECHECK'
      ProviderFlags = []
      Size = 15
    end
    object CDSCarteraCheMUESTRATIPOCOMPROB: TStringField
      FieldName = 'MUESTRATIPOCOMPROB'
      ProviderFlags = []
      Size = 2
    end
    object CDSCarteraCheMUESTRACLASECOMPROB: TStringField
      FieldName = 'MUESTRACLASECOMPROB'
      ProviderFlags = []
      Size = 2
    end
    object CDSCarteraCheMUESTRANROCOMPROBANTE: TStringField
      FieldName = 'MUESTRANROCOMPROBANTE'
      ProviderFlags = []
      EditMask = 'a-####-########;0'
      Size = 13
    end
    object CDSCarteraCheMUESTRAIDCOMPROBANTE: TIntegerField
      FieldName = 'MUESTRAIDCOMPROBANTE'
      ProviderFlags = []
    end
    object CDSCarteraCheMUESTRANOMBRECOMPROB: TStringField
      FieldName = 'MUESTRANOMBRECOMPROB'
      ProviderFlags = []
    end
  end
  object DSCarteraChe: TDataSource
    AutoEdit = False
    DataSet = CDSCarteraChe
    Left = 352
    Top = 128
  end
  object QCarteraCheOLD: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.* , b.nombre as MuestraBanco,cc.id_cuenta,cc.nombre,cc.' +
        'nro_cuenta from cheque_tercero c'
      'left join bancos b on b.id_banco=c.id_Banco'
      'left join cuenta_caja cc on cc.id_cuenta=c.id_cuenta_caja'
      'where c.disponible='#39'S'#39' and importe>0'
      'order by c.fecha_cobro')
    Left = 104
    Top = 72
  end
  object QCarteraCheDBX: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.* , b.nombre as MuestraBanco,cc.id_cuenta,cc.nombre,cc.' +
        'nro_cuenta, '
      
        'cc_e.nombre as MuestraBanco_echeck,cc_e.nro_cuenta as MuestraNro' +
        'Cta_echeck,'
      'm.tipo_comprob as MuestraTipoComprob,'
      'm.clase_comprob as MuestraClaseComprob,'
      'm.nro_comprobante as MuestraNroComprobante,'
      
        'm.id_comprobante as MuestraIdComprobante,tc.detalle as MuestraNo' +
        'mbreComprob'
      'from cheque_tercero c'
      ''
      'left join bancos b on b.id_banco=c.id_Banco'
      'left join cuenta_caja cc on cc.id_cuenta=c.id_cuenta_caja'
      'left join cuenta_caja cc_e on cc_e.id_cuenta= c.id_cta_caja_bco'
      'left join caja_mov m on m.id_mov_caja=c.id_mov_caja'
      'left join tipo_comprobante tc on tc.sigla=m.tipo_comprob'
      ''
      'where c.disponible='#39'S'#39' and importe>0'
      '  order by c.fecha_cobro')
    Left = 104
    Top = 152
    object QCarteraCheDBXID_CHEQUE_TER: TIntegerField
      FieldName = 'ID_CHEQUE_TER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCarteraCheDBXID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Required = True
    end
    object QCarteraCheDBXID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Required = True
    end
    object QCarteraCheDBXID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Required = True
    end
    object QCarteraCheDBXID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Required = True
    end
    object QCarteraCheDBXNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object QCarteraCheDBXFECHA_EMISION: TSQLTimeStampField
      FieldName = 'FECHA_EMISION'
    end
    object QCarteraCheDBXFECHA_COBRO: TSQLTimeStampField
      FieldName = 'FECHA_COBRO'
    end
    object QCarteraCheDBXFECHA_ENTRADA: TSQLTimeStampField
      FieldName = 'FECHA_ENTRADA'
    end
    object QCarteraCheDBXFECHA_SALIDA: TSQLTimeStampField
      FieldName = 'FECHA_SALIDA'
    end
    object QCarteraCheDBXORIGEN: TStringField
      FieldName = 'ORIGEN'
      Size = 30
    end
    object QCarteraCheDBXDESTINO: TStringField
      FieldName = 'DESTINO'
      Size = 30
    end
    object QCarteraCheDBXUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Required = True
    end
    object QCarteraCheDBXIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QCarteraCheDBXDISPONIBLE: TStringField
      FieldName = 'DISPONIBLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QCarteraCheDBXFIRMANTE: TStringField
      FieldName = 'FIRMANTE'
      Size = 30
    end
    object QCarteraCheDBXCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
    end
    object QCarteraCheDBXID_MOV_CAJA_EGRESOS: TIntegerField
      FieldName = 'ID_MOV_CAJA_EGRESOS'
    end
    object QCarteraCheDBXID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Required = True
    end
    object QCarteraCheDBXID_CUENTA_BCO_DEPOSITADO: TIntegerField
      FieldName = 'ID_CUENTA_BCO_DEPOSITADO'
    end
    object QCarteraCheDBXMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Required = True
    end
    object QCarteraCheDBXSALDO_UNIDADES: TFloatField
      FieldName = 'SALDO_UNIDADES'
    end
    object QCarteraCheDBXSALDO_IMPORTE: TFloatField
      FieldName = 'SALDO_IMPORTE'
    end
    object QCarteraCheDBXCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object QCarteraCheDBXSUCURSAL_BCO: TStringField
      FieldName = 'SUCURSAL_BCO'
      Size = 6
    end
    object QCarteraCheDBXNRO_CTA: TStringField
      FieldName = 'NRO_CTA'
      Size = 15
    end
    object QCarteraCheDBXE_CHECK: TStringField
      FieldName = 'E_CHECK'
      FixedChar = True
      Size = 1
    end
    object QCarteraCheDBXID_CTA_CAJA_BCO: TIntegerField
      FieldName = 'ID_CTA_CAJA_BCO'
      Required = True
    end
    object QCarteraCheDBXMUESTRABANCO: TStringField
      FieldName = 'MUESTRABANCO'
      ProviderFlags = []
    end
    object QCarteraCheDBXID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
      ProviderFlags = []
    end
    object QCarteraCheDBXNOMBRE: TStringField
      FieldName = 'NOMBRE'
      ProviderFlags = []
      Size = 25
    end
    object QCarteraCheDBXNRO_CUENTA: TStringField
      FieldName = 'NRO_CUENTA'
      ProviderFlags = []
      Size = 15
    end
    object QCarteraCheDBXMUESTRABANCO_ECHECK: TStringField
      FieldName = 'MUESTRABANCO_ECHECK'
      ProviderFlags = []
      Size = 25
    end
    object QCarteraCheDBXMUESTRANROCTA_ECHECK: TStringField
      FieldName = 'MUESTRANROCTA_ECHECK'
      ProviderFlags = []
      Size = 15
    end
    object QCarteraCheDBXMUESTRATIPOCOMPROB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATIPOCOMPROB'
      Origin = 'TIPO_COMPROB'
      ProviderFlags = []
      Size = 2
    end
    object QCarteraCheDBXMUESTRACLASECOMPROB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACLASECOMPROB'
      Origin = 'CLASE_COMPROB'
      ProviderFlags = []
      Size = 2
    end
    object QCarteraCheDBXMUESTRANROCOMPROBANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANROCOMPROBANTE'
      Origin = 'NRO_COMPROBANTE'
      ProviderFlags = []
      Size = 13
    end
    object QCarteraCheDBXMUESTRAIDCOMPROBANTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAIDCOMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = []
    end
    object QCarteraCheDBXMUESTRANOMBRECOMPROB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANOMBRECOMPROB'
      Origin = 'DETALLE'
      ProviderFlags = []
    end
  end
end

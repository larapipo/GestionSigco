object FormMovTemporalesStock: TFormMovTemporalesStock
  Left = 518
  Top = 181
  BorderIcons = [biSystemMenu]
  Caption = 'Movimientos Temporales de Stock'
  ClientHeight = 676
  ClientWidth = 857
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 13
  object pnBase: TPanel
    Left = 0
    Top = 0
    Width = 857
    Height = 676
    Align = alClient
    TabOrder = 0
    DesignSize = (
      857
      676)
    object Label4: TLabel
      Left = 277
      Top = 3
      Width = 47
      Height = 13
      Caption = 'Dep'#243'sitos'
    end
    object Label5: TLabel
      Left = 566
      Top = 635
      Width = 35
      Height = 16
      Anchors = [akRight, akBottom]
      Caption = 'Saldo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitTop = 607
    end
    object pnCabeceraControlMov: TPanel
      Left = 1
      Top = 1
      Width = 855
      Height = 96
      Align = alTop
      BevelOuter = bvNone
      Caption = 'pnCabeceraControlMov'
      TabOrder = 0
      object Label1: TLabel
        Left = 529
        Top = 4
        Width = 30
        Height = 13
        Caption = 'Desde'
      end
      object Label2: TLabel
        Left = 639
        Top = 3
        Width = 28
        Height = 13
        Caption = 'Hasta'
      end
      object Label3: TLabel
        Left = 278
        Top = 2
        Width = 47
        Height = 13
        Caption = 'Dep'#243'sitos'
      end
      object lbCodigo: TLabel
        Left = 24
        Top = 59
        Width = 62
        Height = 19
        Caption = 'Codigo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbDetalle: TLabel
        Left = 214
        Top = 59
        Width = 59
        Height = 19
        Caption = 'Detalle'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Desde: TJvDateEdit
        Left = 529
        Top = 20
        Width = 104
        Height = 21
        ShowNullDate = False
        TabOrder = 0
      end
      object Hasta: TJvDateEdit
        Left = 639
        Top = 20
        Width = 97
        Height = 21
        ShowNullDate = False
        TabOrder = 1
      end
      object UpDown1: TUpDown
        Left = 742
        Top = 21
        Width = 16
        Height = 20
        Hint = 'Cambia el Per'#237'odo'
        Min = -32768
        Max = 32767
        ParentShowHint = False
        Position = 100
        ShowHint = True
        TabOrder = 2
        OnClick = UpDown1Click
      end
      object rgPasoFecha_2: TRadioGroup
        Left = 24
        Top = 2
        Width = 247
        Height = 46
        Caption = 'Paso de la Fecha'
        Columns = 2
        ItemIndex = 1
        Items.Strings = (
          'Dia por Dia'
          'Mes a Mes')
        TabOrder = 3
      end
      object RxDBDeposito: TJvDBLookupCombo
        Left = 277
        Top = 19
        Width = 208
        Height = 21
        DisplayEmpty = 'Todos'
        EmptyValue = '-1'
        LookupField = 'Id'
        LookupDisplay = 'Nombre'
        LookupSource = DSListaDepositos
        TabOrder = 4
      end
    end
    object dbgMov: TJvDBGrid
      Left = 1
      Top = 97
      Width = 855
      Height = 484
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = DSMov
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnTitleBtnClick = dbgMovTitleBtnClick
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 18
      Columns = <
        item
          Expanded = False
          FieldName = 'DEPOSITO'
          Title.Alignment = taCenter
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHA'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPOOPERACION'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPOCPBTE'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLASECPBTE'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NROCPBTE'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 137
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENTRA'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SALE'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 98
          Visible = True
        end
        item
          Color = clMoneyGreen
          Expanded = False
          FieldName = 'SALDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Width = 99
          Visible = True
        end>
    end
    object btVer: TBitBtn
      Left = 768
      Top = 632
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Ver'
      TabOrder = 2
      OnClick = btVerClick
    end
    object BitBtn2: TBitBtn
      Left = 25
      Top = 595
      Width = 240
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Armar Movimientos Temporales'
      TabOrder = 3
      OnClick = BitBtn2Click
    end
    object edSalen: TJvCalcEdit
      Left = 607
      Top = 595
      Width = 121
      Height = 28
      DisplayFormat = ',0.00'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      Anchors = [akRight, akBottom]
      ParentFont = False
      ShowButton = False
      TabOrder = 4
      DisabledTextColor = clBlue
      DecimalPlacesAlwaysShown = False
    end
    object edEntra: TJvCalcEdit
      Left = 480
      Top = 595
      Width = 121
      Height = 28
      DisplayFormat = ',0.00'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      Anchors = [akRight, akBottom]
      ParentFont = False
      ShowButton = False
      TabOrder = 5
      DisabledTextColor = clBlue
      DecimalPlacesAlwaysShown = False
    end
    object edSaldo: TJvCalcEdit
      Left = 607
      Top = 629
      Width = 121
      Height = 28
      DisplayFormat = ',0.00'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      Anchors = [akRight, akBottom]
      ParentFont = False
      ShowButton = False
      TabOrder = 6
      DisabledTextColor = clBlue
      DecimalPlacesAlwaysShown = False
    end
  end
  object DSPMov: TDataSetProvider
    DataSet = QMov
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 472
    Top = 240
  end
  object CDSMov: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'deposito'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMov'
    Left = 552
    Top = 240
    object CDSMovID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      Origin = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovCODIGO_ARTICULO: TStringField
      FieldName = 'CODIGO_ARTICULO'
      Origin = 'CODIGO_ARTICULO'
      Size = 8
    end
    object CDSMovDEPOSITO: TIntegerField
      DisplayLabel = 'Dep.'
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
    end
    object CDSMovFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSMovTIPOOPERACION: TStringField
      DisplayLabel = 'T.Op'
      FieldName = 'TIPOOPERACION'
      Origin = 'TIPOOPERACION'
      Size = 1
    end
    object CDSMovTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSMovCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSMovNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSMovID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
    end
    object CDSMovDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSMovID_DETALLE_CPBTE: TIntegerField
      FieldName = 'ID_DETALLE_CPBTE'
      Origin = 'ID_DETALLE_CPBTE'
    end
    object CDSMovSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldKind = fkInternalCalc
      FieldName = 'SALDO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovENTRA: TFloatField
      DisplayLabel = 'Entra'
      FieldName = 'ENTRA'
      Origin = 'ENTRA'
      DisplayFormat = ',0.00;,0.00;-'
    end
    object CDSMovSALE: TFloatField
      DisplayLabel = 'Salen'
      FieldName = 'SALE'
      Origin = 'SALE'
      DisplayFormat = ',0.00;,0.00;-'
    end
  end
  object DSMov: TDataSource
    DataSet = CDSMov
    Left = 636
    Top = 237
  end
  object DSListaDepositos: TDataSource
    DataSet = CDSListaDepositos
    Left = 192
    Top = 168
  end
  object CDSListaDepositos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPListaDepositos'
    Left = 280
    Top = 160
    object CDSListaDepositosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSListaDepositosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 25
    end
  end
  object DSPListaDepositos: TDataSetProvider
    DataSet = DMBuscadores.QBuscaDeposito
    Left = 368
    Top = 168
  end
  object QMov: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select m.* from mov_stock_temporal m'
      
        'where (m.deposito = :deposito or :deposito = -1 ) and (m.fecha b' +
        'etween :desde and :hasta)'
      'order by m.fecha asc')
    Left = 408
    Top = 240
    ParamData = <
      item
        Position = 1
        Name = 'deposito'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object spRearmarMov: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'MOV_STOCKARTICULO_TEMP'
    Left = 248
    Top = 408
    ParamData = <
      item
        Position = 1
        Name = 'I_CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
  end
end

object FormReImpAplicacionesCompra: TFormReImpAplicacionesCompra
  Left = 77
  Top = 123
  BorderIcons = [biSystemMenu]
  Caption = 'Re Imputacion Aplicaciones de CC.Compra'
  ClientHeight = 630
  ClientWidth = 1140
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  DesignSize = (
    1140
    630)
  TextHeight = 13
  object Label1: TLabel
    Left = 857
    Top = 325
    Width = 39
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'ID_MOV'
    FocusControl = cxDBSpinEdit1
    ExplicitTop = 304
  end
  object Label2: TLabel
    Left = 857
    Top = 365
    Width = 33
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'FECHA'
    FocusControl = cxDBDateEdit1
    ExplicitTop = 344
  end
  object Label3: TLabel
    Left = 857
    Top = 405
    Width = 48
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'ID_CPBTE'
    FocusControl = cxDBSpinEdit2
    ExplicitTop = 384
  end
  object Label4: TLabel
    Left = 1004
    Top = 365
    Width = 55
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'TIPOCPBTE'
    FocusControl = cxDBTextEdit1
    ExplicitTop = 344
  end
  object Label5: TLabel
    Left = 1004
    Top = 405
    Width = 62
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'CLASECPBTE'
    FocusControl = cxDBTextEdit2
    ExplicitTop = 384
  end
  object Label6: TLabel
    Left = 1004
    Top = 325
    Width = 74
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'NUMEROCPBTE'
    FocusControl = cxDBTextEdit3
    ExplicitTop = 304
  end
  object Label7: TLabel
    Left = 293
    Top = 8
    Width = 103
    Height = 13
    Caption = 'Movimientos Cta Cte.'
  end
  object Label8: TLabel
    Left = 852
    Top = 8
    Width = 89
    Height = 13
    Caption = 'Movimientos A Cta'
  end
  object Label9: TLabel
    Left = 8
    Top = 8
    Width = 80
    Height = 13
    Caption = 'Aplicaciones XML'
  end
  object JvDBGrid1: TJvDBGrid
    Left = 8
    Top = 24
    Width = 273
    Height = 269
    Anchors = [akLeft, akTop, akBottom]
    DataSource = DSAplicacionXML
    Options = [dgEditing, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
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
  end
  object Button1: TButton
    Left = 206
    Top = 300
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Pasar >>'
    TabOrder = 1
    OnClick = Button1Click
    ExplicitTop = 279
  end
  object btGravar: TBitBtn
    Left = 857
    Top = 524
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Gravar'
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 2
    OnClick = btGravarClick
    ExplicitTop = 503
  end
  object dbgMovCC: TJvDBGrid
    Left = 293
    Top = 24
    Width = 553
    Height = 269
    Anchors = [akLeft, akTop, akBottom]
    DataSource = DSMovCC
    TabOrder = 3
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
    Columns = <
      item
        Expanded = False
        FieldName = 'TIPOCPBTE'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLASECPBTE'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DETALLE'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 159
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEBE'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HABER'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SALDO'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 89
        Visible = True
      end>
  end
  object btAplicar: TButton
    Left = 857
    Top = 493
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Aplicar'
    TabOrder = 4
    OnClick = btAplicarClick
    ExplicitTop = 472
  end
  object btReset: TBitBtn
    Left = 857
    Top = 448
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Reset'
    TabOrder = 5
    OnClick = btResetClick
    ExplicitTop = 427
  end
  object dbgACta: TJvDBGrid
    Left = 852
    Top = 24
    Width = 273
    Height = 269
    Anchors = [akLeft, akTop, akBottom]
    DataSource = DSACta
    TabOrder = 6
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
    Columns = <
      item
        Expanded = False
        FieldName = 'DETALLE'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPORTE'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object edTotalActa: TJvCalcEdit
    Left = 984
    Top = 300
    Width = 121
    Height = 21
    DisplayFormat = ',0.00.'
    Anchors = [akLeft, akBottom]
    ShowButton = False
    TabOrder = 7
    DecimalPlacesAlwaysShown = False
    ExplicitTop = 279
  end
  object cxDBTextEdit1: TDBEdit
    Left = 1004
    Top = 381
    Width = 121
    Height = 21
    Anchors = [akLeft, akBottom]
    DataField = 'TIPOCPBTE'
    DataSource = DSACta
    Enabled = False
    TabOrder = 11
    ExplicitTop = 360
  end
  object cxDBTextEdit2: TDBEdit
    Left = 1004
    Top = 421
    Width = 121
    Height = 21
    Anchors = [akLeft, akBottom]
    DataField = 'CLASECPBTE'
    DataSource = DSACta
    Enabled = False
    TabOrder = 12
    ExplicitTop = 400
  end
  object cxDBTextEdit3: TDBEdit
    Left = 1004
    Top = 341
    Width = 121
    Height = 21
    Anchors = [akLeft, akBottom]
    DataField = 'NUMEROCPBTE'
    DataSource = DSACta
    Enabled = False
    TabOrder = 13
    ExplicitTop = 320
  end
  object cxDBSpinEdit1: TDBEdit
    Left = 857
    Top = 341
    Width = 121
    Height = 21
    Anchors = [akLeft, akBottom]
    DataField = 'ID_MOV'
    DataSource = DSACta
    Enabled = False
    TabOrder = 8
    ExplicitTop = 320
  end
  object cxDBDateEdit1: TDBEdit
    Left = 857
    Top = 381
    Width = 121
    Height = 21
    Anchors = [akLeft, akBottom]
    DataField = 'FECHA'
    DataSource = DSACta
    Enabled = False
    TabOrder = 9
    ExplicitTop = 360
  end
  object cxDBSpinEdit2: TDBEdit
    Left = 857
    Top = 421
    Width = 121
    Height = 21
    Anchors = [akLeft, akBottom]
    DataField = 'ID_CPBTE'
    DataSource = DSACta
    Enabled = False
    TabOrder = 10
    ExplicitTop = 400
  end
  object PageControl1: TPageControl
    Left = 13
    Top = 328
    Width = 838
    Height = 293
    ActivePage = TabSheet1
    Anchors = [akLeft, akBottom]
    TabOrder = 14
    ExplicitTop = 306
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 830
        Height = 265
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 282
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DSAplicaciones
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxGrid1DBTableView1IMPORTE
            end>
          DataController.Summary.SummaryGroups = <>
          object cxGrid1DBTableView1ID_MOVCCCOMPRA: TcxGridDBColumn
            DataBinding.FieldName = 'ID_MOVCCCOMPRA'
            Visible = False
            GroupIndex = 0
            SortIndex = 0
            SortOrder = soDescending
          end
          object cxGrid1DBTableView1FECHA: TcxGridDBColumn
            DataBinding.FieldName = 'FECHA'
            SortIndex = 1
            SortOrder = soAscending
            Width = 84
          end
          object cxGrid1DBTableView1ID_CPBTE: TcxGridDBColumn
            DataBinding.FieldName = 'ID_CPBTE'
            Width = 75
          end
          object cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn
            DataBinding.FieldName = 'TIPOCPBTE'
            Width = 37
          end
          object cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn
            DataBinding.FieldName = 'CLASECPBTE'
            Width = 33
          end
          object cxGrid1DBTableView1NUMEROCPBTE: TcxGridDBColumn
            DataBinding.FieldName = 'NUMEROCPBTE'
            Width = 91
          end
          object cxGrid1DBTableView1IMPORTE: TcxGridDBColumn
            DataBinding.FieldName = 'IMPORTE'
            Width = 93
          end
          object cxGrid1DBTableView1APLICA_ID_CPBTE: TcxGridDBColumn
            DataBinding.FieldName = 'APLICA_ID_CPBTE'
            Width = 76
          end
          object cxGrid1DBTableView1APLICA_TIPOCPBTE: TcxGridDBColumn
            DataBinding.FieldName = 'APLICA_TIPOCPBTE'
            Width = 50
          end
          object cxGrid1DBTableView1APLICA_CLASECPBTE: TcxGridDBColumn
            DataBinding.FieldName = 'APLICA_CLASECPBTE'
            Width = 60
          end
          object cxGrid1DBTableView1APLICA_NROCPBTE: TcxGridDBColumn
            DataBinding.FieldName = 'APLICA_NROCPBTE'
            Width = 88
          end
          object cxGrid1DBTableView1DETALLE: TcxGridDBColumn
            DataBinding.FieldName = 'DETALLE'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 830
        Height = 265
        Align = alClient
        TabOrder = 0
        object cxGrid2TableView1: TcxGridTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
        end
        object cxGrid2DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataModeController.GridMode = True
          DataController.DataSource = DSMovCC
          DataController.DetailKeyFieldNames = 'ID_MOVCCCOMPRA'
          DataController.KeyFieldNames = 'ID_MOVCCCOMPRA'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGrid2DBTableView1ID_MOVCCCOMPRA: TcxGridDBColumn
            DataBinding.FieldName = 'ID_MOVCCCOMPRA'
          end
          object cxGrid2DBTableView1ID_CPBTE: TcxGridDBColumn
            DataBinding.FieldName = 'ID_CPBTE'
          end
          object cxGrid2DBTableView1PROVEEDOR: TcxGridDBColumn
            DataBinding.FieldName = 'PROVEEDOR'
          end
          object cxGrid2DBTableView1FECHACOMPRA: TcxGridDBColumn
            DataBinding.FieldName = 'FECHACOMPRA'
          end
          object cxGrid2DBTableView1FECHAVTO: TcxGridDBColumn
            DataBinding.FieldName = 'FECHAVTO'
          end
          object cxGrid2DBTableView1TIPOCPBTE: TcxGridDBColumn
            DataBinding.FieldName = 'TIPOCPBTE'
          end
          object cxGrid2DBTableView1CLASECPBTE: TcxGridDBColumn
            DataBinding.FieldName = 'CLASECPBTE'
          end
          object cxGrid2DBTableView1NROCPBTE: TcxGridDBColumn
            DataBinding.FieldName = 'NROCPBTE'
          end
          object cxGrid2DBTableView1DEBE: TcxGridDBColumn
            DataBinding.FieldName = 'DEBE'
          end
          object cxGrid2DBTableView1HABER: TcxGridDBColumn
            DataBinding.FieldName = 'HABER'
          end
          object cxGrid2DBTableView1SALDO: TcxGridDBColumn
            DataBinding.FieldName = 'SALDO'
          end
          object cxGrid2DBTableView1DETALLE: TcxGridDBColumn
            DataBinding.FieldName = 'DETALLE'
          end
        end
        object cxGrid2DBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataModeController.GridMode = True
          DataController.DataSource = DSAplicaciones
          DataController.MasterKeyFieldNames = 'ID_MOVCCCOMPRA'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGrid2DBTableView2ID_MOV: TcxGridDBColumn
            DataBinding.FieldName = 'ID_MOV'
          end
          object cxGrid2DBTableView2ID_MOVCCCOMPRA: TcxGridDBColumn
            DataBinding.FieldName = 'ID_MOVCCCOMPRA'
          end
          object cxGrid2DBTableView2FECHA: TcxGridDBColumn
            DataBinding.FieldName = 'FECHA'
          end
          object cxGrid2DBTableView2PROVEEDOR: TcxGridDBColumn
            DataBinding.FieldName = 'PROVEEDOR'
          end
          object cxGrid2DBTableView2ID_CPBTE: TcxGridDBColumn
            DataBinding.FieldName = 'ID_CPBTE'
          end
          object cxGrid2DBTableView2TIPOCPBTE: TcxGridDBColumn
            DataBinding.FieldName = 'TIPOCPBTE'
          end
          object cxGrid2DBTableView2CLASECPBTE: TcxGridDBColumn
            DataBinding.FieldName = 'CLASECPBTE'
          end
          object cxGrid2DBTableView2NUMEROCPBTE: TcxGridDBColumn
            DataBinding.FieldName = 'NUMEROCPBTE'
          end
          object cxGrid2DBTableView2IMPORTE: TcxGridDBColumn
            DataBinding.FieldName = 'IMPORTE'
          end
          object cxGrid2DBTableView2APLICA_ID_CPBTE: TcxGridDBColumn
            DataBinding.FieldName = 'APLICA_ID_CPBTE'
          end
          object cxGrid2DBTableView2APLICA_TIPOCPBTE: TcxGridDBColumn
            DataBinding.FieldName = 'APLICA_TIPOCPBTE'
          end
          object cxGrid2DBTableView2APLICA_CLASECPBTE: TcxGridDBColumn
            DataBinding.FieldName = 'APLICA_CLASECPBTE'
          end
          object cxGrid2DBTableView2APLICA_NROCPBTE: TcxGridDBColumn
            DataBinding.FieldName = 'APLICA_NROCPBTE'
          end
          object cxGrid2DBTableView2DETALLE: TcxGridDBColumn
            DataBinding.FieldName = 'DETALLE'
          end
          object cxGrid2DBTableView2APLICA_NETO: TcxGridDBColumn
            DataBinding.FieldName = 'APLICA_NETO'
          end
          object cxGrid2DBTableView2CONCILIADO: TcxGridDBColumn
            DataBinding.FieldName = 'CONCILIADO'
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
          object cxGrid2Level2: TcxGridLevel
            GridView = cxGrid2DBTableView2
          end
        end
      end
    end
  end
  object edSaldo: TJvCalcEdit
    Left = 712
    Top = 300
    Width = 105
    Height = 21
    DisplayFormat = ',0.00.'
    Anchors = [akLeft, akBottom]
    ShowButton = False
    TabOrder = 15
    DecimalPlacesAlwaysShown = False
    ExplicitTop = 279
  end
  object QAplicaciones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from MovAplicaCCCompra'
      'where proveedor=:codigo')
    Left = 384
    Top = 88
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QAplicacionesID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      Required = True
    end
    object QAplicacionesID_MOVCCCOMPRA: TIntegerField
      FieldName = 'ID_MOVCCCOMPRA'
      Required = True
    end
    object QAplicacionesFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QAplicacionesPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Required = True
      Size = 6
    end
    object QAplicacionesID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Required = True
    end
    object QAplicacionesTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QAplicacionesCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QAplicacionesNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object QAplicacionesIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QAplicacionesAPLICA_ID_CPBTE: TIntegerField
      FieldName = 'APLICA_ID_CPBTE'
      Required = True
    end
    object QAplicacionesAPLICA_TIPOCPBTE: TStringField
      FieldName = 'APLICA_TIPOCPBTE'
      Size = 2
    end
    object QAplicacionesAPLICA_CLASECPBTE: TStringField
      FieldName = 'APLICA_CLASECPBTE'
      Size = 2
    end
    object QAplicacionesAPLICA_NROCPBTE: TStringField
      FieldName = 'APLICA_NROCPBTE'
      Size = 13
    end
    object QAplicacionesDETALLE: TStringField
      FieldName = 'DETALLE'
    end
    object QAplicacionesAPLICA_NETO: TFloatField
      FieldName = 'APLICA_NETO'
    end
    object QAplicacionesCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPAplicaciones: TDataSetProvider
    DataSet = QAplicaciones
    Options = [poAllowMultiRecordUpdates]
    UpdateMode = upWhereKeyOnly
    Left = 456
    Top = 88
  end
  object CDSAplicaciones: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPAplicaciones'
    Left = 536
    Top = 94
    object CDSAplicacionesID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      Required = True
    end
    object CDSAplicacionesID_MOVCCCOMPRA: TIntegerField
      DisplayLabel = 'Id Mov'
      FieldName = 'ID_MOVCCCOMPRA'
      Required = True
    end
    object CDSAplicacionesFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
    end
    object CDSAplicacionesPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Required = True
      Size = 6
    end
    object CDSAplicacionesID_CPBTE: TIntegerField
      DisplayLabel = 'Id Cbte'
      FieldName = 'ID_CPBTE'
      Required = True
    end
    object CDSAplicacionesTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSAplicacionesCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSAplicacionesNUMEROCPBTE: TStringField
      DisplayLabel = 'Nro.cpbte'
      FieldName = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object CDSAplicacionesIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSAplicacionesAPLICA_ID_CPBTE: TIntegerField
      DisplayLabel = 'Aplica Id'
      FieldName = 'APLICA_ID_CPBTE'
      Required = True
    end
    object CDSAplicacionesAPLICA_TIPOCPBTE: TStringField
      DisplayLabel = 'Aplica Tp'
      FieldName = 'APLICA_TIPOCPBTE'
      Size = 2
    end
    object CDSAplicacionesAPLICA_CLASECPBTE: TStringField
      DisplayLabel = 'Aplica Cl'
      FieldName = 'APLICA_CLASECPBTE'
      Size = 2
    end
    object CDSAplicacionesAPLICA_NROCPBTE: TStringField
      DisplayLabel = 'Aplica Nro.'
      FieldName = 'APLICA_NROCPBTE'
      Size = 13
    end
    object CDSAplicacionesDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
    end
    object CDSAplicacionesAPLICA_NETO: TFloatField
      FieldName = 'APLICA_NETO'
      DisplayFormat = ',0.00'
    end
    object CDSAplicacionesCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object CDSAplicacionXML: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPAplicaionGral'
    Left = 104
    Top = 62
  end
  object DSAplicacionXML: TDataSource
    DataSet = CDSAplicacionXML
    Left = 176
    Top = 80
  end
  object DSAplicaciones: TDataSource
    DataSet = CDSAplicaciones
    Left = 616
    Top = 88
  end
  object QMovCC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from MovCCCompra where'
      '(Proveedor=:codigo) and'
      
        '((tipoCpbte='#39'FC'#39') or (TipoCpbte='#39'ND'#39') or (TipoCpbte='#39'AJ'#39') or (Ti' +
        'poCpbte='#39'XP'#39'))  and (debe=0)'
      'and'
      '(Saldo>0)'
      'order by'
      'FechaCompra,NroCpbte')
    Left = 152
    Top = 176
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QMovCCID_MOVCCCOMPRA2: TIntegerField
      FieldName = 'ID_MOVCCCOMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovCCID_CPBTE2: TIntegerField
      FieldName = 'ID_CPBTE'
      Required = True
    end
    object QMovCCPROVEEDOR2: TStringField
      FieldName = 'PROVEEDOR'
      Size = 6
    end
    object QMovCCFECHACOMPRA2: TSQLTimeStampField
      FieldName = 'FECHACOMPRA'
    end
    object QMovCCFECHAVTO2: TSQLTimeStampField
      FieldName = 'FECHAVTO'
    end
    object QMovCCTIPOCPBTE2: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object QMovCCCLASECPBTE2: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QMovCCNROCPBTE2: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object QMovCCDEBE2: TFloatField
      FieldName = 'DEBE'
    end
    object QMovCCHABER2: TFloatField
      FieldName = 'HABER'
    end
    object QMovCCSALDO2: TFloatField
      FieldName = 'SALDO'
    end
    object QMovCCDETALLE2: TStringField
      FieldName = 'DETALLE'
    end
  end
  object DSPMovCC: TDataSetProvider
    DataSet = QMovCC
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 232
    Top = 176
  end
  object DSMovCC: TDataSource
    DataSet = CDSMovCC
    Left = 400
    Top = 176
  end
  object QACta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select * from MovACtaCCCompra where Proveedor=:codigo and Import' +
        'e<>0'
      'order by fecha,numerocpbte')
    Left = 568
    Top = 160
    ParamData = <
      item
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QACtaID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QACtaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object QACtaPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Required = True
      Size = 6
    end
    object QACtaID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Required = True
    end
    object QACtaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QACtaCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object QACtaNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object QACtaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object QACtaDETALLE: TStringField
      FieldName = 'DETALLE'
    end
  end
  object DSPACta: TDataSetProvider
    DataSet = QACta
    UpdateMode = upWhereKeyOnly
    Left = 632
    Top = 160
  end
  object CDSACta: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPACta'
    AfterOpen = CDSACtaAfterOpen
    Left = 688
    Top = 160
    object CDSACtaID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      Required = True
    end
    object CDSACtaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSACtaPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Required = True
      Size = 6
    end
    object CDSACtaID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Required = True
    end
    object CDSACtaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSACtaCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSACtaNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object CDSACtaIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSACtaDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
    end
  end
  object DSACta: TDataSource
    DataSet = CDSACta
    Left = 744
    Top = 160
  end
  object CDSMovCC: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovCC'
    AfterOpen = ClientDataSet1AfterOpen
    Left = 312
    Top = 176
    object CDSMovCCID_MOVCCCOMPRA: TIntegerField
      FieldName = 'ID_MOVCCCOMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovCCID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Required = True
    end
    object CDSMovCCPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 6
    end
    object CDSMovCCFECHACOMPRA: TSQLTimeStampField
      FieldName = 'FECHACOMPRA'
    end
    object CDSMovCCFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
    end
    object CDSMovCCTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSMovCCCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSMovCCNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSMovCCDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovCCHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovCCSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSMovCCDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
    end
  end
end

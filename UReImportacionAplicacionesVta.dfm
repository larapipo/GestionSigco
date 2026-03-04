object FormReImpAplicacionesVta: TFormReImpAplicacionesVta
  Left = 115
  Top = 107
  BorderIcons = [biSystemMenu]
  Caption = 'Re Imputaci'#243'n Aplicaciones de Vta'
  ClientHeight = 617
  ClientWidth = 1138
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pnPie: TPanel
    Left = 0
    Top = 289
    Width = 1138
    Height = 328
    Align = alClient
    Caption = 'pnPie'
    Color = clSilver
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 282
    DesignSize = (
      1138
      328)
    object Label6: TLabel
      Left = 1004
      Top = 44
      Width = 74
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'NUMEROCPBTE'
      FocusControl = cxDBTextEdit3
      ExplicitTop = 32
    end
    object Label5: TLabel
      Left = 1005
      Top = 125
      Width = 62
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'CLASECPBTE'
      FocusControl = cxDBTextEdit2
      ExplicitTop = 113
    end
    object Label4: TLabel
      Left = 1006
      Top = 86
      Width = 55
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'TIPOCPBTE'
      FocusControl = cxDBTextEdit1
      ExplicitTop = 74
    end
    object Label1: TLabel
      Left = 862
      Top = 46
      Width = 39
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'ID_MOV'
      ExplicitTop = 34
    end
    object Label2: TLabel
      Left = 857
      Top = 86
      Width = 33
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'FECHA'
      FocusControl = cxDBDateEdit1
      ExplicitTop = 74
    end
    object Label3: TLabel
      Left = 858
      Top = 125
      Width = 48
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'ID_CPBTE'
      FocusControl = cxDBSpinEdit2
      ExplicitTop = 113
    end
    object btPasar: TButton
      Left = 1
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Pasar >>'
      TabOrder = 0
      OnClick = btPasarClick
    end
    object PageControl1: TPageControl
      Left = 0
      Top = 37
      Width = 838
      Height = 284
      ActivePage = tsMovApl
      Anchors = [akLeft, akBottom]
      TabOrder = 1
      object tsAplicaciones: TTabSheet
        Caption = 'Aplicaciones'
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 830
          Height = 224
          Align = alTop
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            DataController.DataSource = DSAplicaciones
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
              end>
            object cxGrid1DBTableView1ID_MOV: TcxGridDBColumn
              DataBinding.FieldName = 'ID_MOV'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1ID_MOVCCVTA: TcxGridDBColumn
              DataBinding.FieldName = 'ID_MOVCCVTA'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1FECHA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1CLIENTE: TcxGridDBColumn
              DataBinding.FieldName = 'CLIENTE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1ID_CPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'ID_CPBTE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPOCPBTE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'CLASECPBTE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1NUMEROCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'NUMEROCPBTE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1IMPORTE: TcxGridDBColumn
              DataBinding.FieldName = 'IMPORTE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1APLICA_ID_CPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'APLICA_ID_CPBTE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1APLICA_TIPOCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'APLICA_TIPOCPBTE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1APLICA_CLASECPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'APLICA_CLASECPBTE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1APLICA_NROCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'APLICA_NROCPBTE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1DETALLE: TcxGridDBColumn
              DataBinding.FieldName = 'DETALLE'
              HeaderAlignmentHorz = taCenter
            end
            object cxGrid1DBTableView1CONCILIADO: TcxGridDBColumn
              DataBinding.FieldName = 'CONCILIADO'
              HeaderAlignmentHorz = taCenter
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object tsMovApl: TTabSheet
        Caption = 'Mov/Aplicacion'
        ImageIndex = 1
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 830
          Height = 256
          Align = alClient
          TabOrder = 0
          object cxGrid2DBTableView1: TcxGridDBTableView
            DataController.DataSource = DSMovCC
            object cxGrid2DBTableView1ID_MOVCCVTA: TcxGridDBColumn
              DataBinding.FieldName = 'ID_MOVCCVTA'
              Width = 70
            end
            object cxGrid2DBTableView1ID_CPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'ID_CPBTE'
            end
            object cxGrid2DBTableView1CLIENTE: TcxGridDBColumn
              DataBinding.FieldName = 'CLIENTE'
              Width = 55
            end
            object cxGrid2DBTableView1FECHAVTA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHAVTA'
              Width = 90
            end
            object cxGrid2DBTableView1FECHAVTO: TcxGridDBColumn
              DataBinding.FieldName = 'FECHAVTO'
              Width = 90
            end
            object cxGrid2DBTableView1TIPOCPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'TIPOCPBTE'
            end
            object cxGrid2DBTableView1CLASECPBTE: TcxGridDBColumn
              DataBinding.FieldName = 'CLASECPBTE'
              Width = 22
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
            DataController.DataSource = DSAplicaciones
            DataController.DetailKeyFieldNames = 'ID_MOVCCVTA'
            DataController.KeyFieldNames = 'ID_MOV'
            DataController.MasterKeyFieldNames = 'ID_MOVCCVTA'
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0.00'
                Kind = skSum
                FieldName = 'IMPORTE'
                Column = cxGrid2DBTableView2IMPORTE
              end>
            OptionsView.Footer = True
            object cxGrid2DBTableView2ID_MOV: TcxGridDBColumn
              DataBinding.FieldName = 'ID_MOV'
            end
            object cxGrid2DBTableView2ID_MOVCCVTA: TcxGridDBColumn
              DataBinding.FieldName = 'ID_MOVCCVTA'
            end
            object cxGrid2DBTableView2FECHA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA'
            end
            object cxGrid2DBTableView2CLIENTE: TcxGridDBColumn
              DataBinding.FieldName = 'CLIENTE'
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
      Left = 616
      Top = 18
      Width = 105
      Height = 21
      DisplayFormat = ',0.00.'
      Anchors = [akLeft, akBottom]
      ShowButton = False
      TabOrder = 2
      DecimalPlacesAlwaysShown = False
    end
    object edTotalActa: TJvCalcEdit
      Left = 1004
      Top = 17
      Width = 121
      Height = 21
      DisplayFormat = ',0.00.'
      Anchors = [akLeft, akBottom]
      ShowButton = False
      TabOrder = 3
      DecimalPlacesAlwaysShown = False
    end
    object cxDBSpinEdit1: TDBEdit
      Left = 857
      Top = 61
      Width = 121
      Height = 21
      Anchors = [akLeft, akBottom]
      DataField = 'ID_MOV'
      DataSource = DSACta
      Enabled = False
      TabOrder = 4
    end
    object cxDBDateEdit1: TDBEdit
      Left = 858
      Top = 102
      Width = 121
      Height = 21
      Anchors = [akLeft, akBottom]
      DataField = 'FECHA'
      DataSource = DSACta
      Enabled = False
      TabOrder = 5
    end
    object cxDBSpinEdit2: TDBEdit
      Left = 858
      Top = 141
      Width = 121
      Height = 21
      Anchors = [akLeft, akBottom]
      DataField = 'ID_CPBTE'
      DataSource = DSACta
      Enabled = False
      TabOrder = 6
    end
    object cxDBTextEdit1: TDBEdit
      Left = 1006
      Top = 102
      Width = 121
      Height = 21
      Anchors = [akLeft, akBottom]
      DataField = 'TIPOCPBTE'
      DataSource = DSACta
      Enabled = False
      TabOrder = 7
    end
    object cxDBTextEdit2: TDBEdit
      Left = 1005
      Top = 144
      Width = 121
      Height = 21
      Anchors = [akLeft, akBottom]
      DataField = 'CLASECPBTE'
      DataSource = DSACta
      Enabled = False
      TabOrder = 8
    end
    object cxDBTextEdit3: TDBEdit
      Left = 1006
      Top = 59
      Width = 121
      Height = 21
      Anchors = [akLeft, akBottom]
      DataField = 'NUMEROCPBTE'
      DataSource = DSACta
      Enabled = False
      TabOrder = 9
    end
    object btAplicar: TButton
      Left = 858
      Top = 199
      Width = 75
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Aplicar'
      TabOrder = 10
      OnClick = btAplicarClick
    end
    object btGravar: TBitBtn
      Left = 858
      Top = 239
      Width = 75
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Gravar'
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 11
      OnClick = btGravarClick
    end
    object btReset: TBitBtn
      Left = 858
      Top = 168
      Width = 75
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Reset'
      TabOrder = 12
      OnClick = btResetClick
    end
  end
  object pnSuperior: TPanel
    Left = 0
    Top = 0
    Width = 1138
    Height = 289
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'pnSuperior'
    TabOrder = 0
    ExplicitHeight = 282
    object Splitter1: TSplitter
      Left = 731
      Top = 21
      Width = 4
      Height = 267
      ExplicitLeft = 177
      ExplicitHeight = 249
    end
    object Splitter2: TSplitter
      Left = 735
      Top = 21
      Height = 267
      ExplicitLeft = 744
      ExplicitTop = 88
      ExplicitHeight = 100
    end
    object dbgAplicaciones: TJvDBGrid
      Left = 1
      Top = 21
      Width = 177
      Height = 267
      Align = alLeft
      DataSource = DSAplicacionXML
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
    object dbgMovCC: TJvDBGrid
      Left = 178
      Top = 21
      Width = 553
      Height = 267
      Align = alLeft
      DataSource = DSMovCC
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
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_MOVCCVTA'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPOCPBTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 31
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
          Width = 39
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
          Width = 119
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
          Width = 73
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
    object dbgACta: TJvDBGrid
      Left = 738
      Top = 21
      Width = 399
      Height = 267
      Align = alClient
      DataSource = DSACta
      TabOrder = 2
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
          FieldName = 'ID_MOV'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHA'
          Title.Alignment = taCenter
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE'
          Title.Alignment = taCenter
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPORTE'
          Title.Alignment = taCenter
          Width = 92
          Visible = True
        end>
    end
    object pnTituloa: TPanel
      Left = 1
      Top = 1
      Width = 1136
      Height = 20
      Align = alTop
      TabOrder = 3
      object Label9: TLabel
        Left = 8
        Top = 4
        Width = 80
        Height = 13
        Caption = 'Aplicaciones XML'
      end
      object Label8: TLabel
        Left = 852
        Top = 4
        Width = 89
        Height = 13
        Caption = 'Movimientos A Cta'
      end
      object Label7: TLabel
        Left = 293
        Top = 4
        Width = 103
        Height = 13
        Caption = 'Movimientos Cta Cte.'
      end
    end
  end
  object DSPAplicaciones: TDataSetProvider
    DataSet = QAplicaciones
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
    OnReconcileError = CDSAplicacionesReconcileError
    Left = 544
    Top = 94
    object CDSAplicacionesID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      Origin = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSAplicacionesID_MOVCCVTA: TIntegerField
      FieldName = 'ID_MOVCCVTA'
      Origin = 'ID_MOVCCVTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSAplicacionesFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSAplicacionesCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Required = True
      Size = 6
    end
    object CDSAplicacionesID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      Required = True
    end
    object CDSAplicacionesTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSAplicacionesCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSAplicacionesNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Origin = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object CDSAplicacionesAPLICA_ID_CPBTE: TIntegerField
      FieldName = 'APLICA_ID_CPBTE'
      Origin = 'APLICA_ID_CPBTE'
      Required = True
    end
    object CDSAplicacionesAPLICA_TIPOCPBTE: TStringField
      FieldName = 'APLICA_TIPOCPBTE'
      Origin = 'APLICA_TIPOCPBTE'
      Size = 2
    end
    object CDSAplicacionesAPLICA_CLASECPBTE: TStringField
      FieldName = 'APLICA_CLASECPBTE'
      Origin = 'APLICA_CLASECPBTE'
      Size = 2
    end
    object CDSAplicacionesAPLICA_NROCPBTE: TStringField
      FieldName = 'APLICA_NROCPBTE'
      Origin = 'APLICA_NROCPBTE'
      Size = 13
    end
    object CDSAplicacionesDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSAplicacionesCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Origin = 'CONCILIADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSAplicacionesIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
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
    Left = 80
    Top = 70
  end
  object DSAplicacionXML: TDataSource
    DataSet = CDSAplicacionXML
    Left = 160
    Top = 64
  end
  object DSAplicaciones: TDataSource
    DataSet = CDSAplicaciones
    Left = 624
    Top = 96
  end
  object DSPMovCC: TDataSetProvider
    DataSet = QMovCC
    UpdateMode = upWhereKeyOnly
    Left = 232
    Top = 176
  end
  object DSMovCC: TDataSource
    DataSet = CDSMovCC
    Left = 400
    Top = 176
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
    AfterPost = CDSACtaAfterOpen
    Left = 688
    Top = 160
    object CDSACtaID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      Origin = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSACtaFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSACtaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Required = True
      Size = 6
    end
    object CDSACtaID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      Required = True
    end
    object CDSACtaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSACtaCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSACtaNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Origin = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object CDSACtaDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSACtaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
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
    AfterOpen = CDSMovCCAfterOpen
    AfterPost = CDSMovCCAfterOpen
    Left = 312
    Top = 176
    object CDSMovCCID_MOVCCVTA: TIntegerField
      FieldName = 'ID_MOVCCVTA'
      Origin = 'ID_MOVCCVTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovCCID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CDSMovCCCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Required = True
      Size = 6
    end
    object CDSMovCCFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object CDSMovCCFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
    object CDSMovCCTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object CDSMovCCCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSMovCCNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSMovCCDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object CDSMovCCDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00'
    end
    object CDSMovCCHABER: TFloatField
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00'
    end
    object CDSMovCCSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      DisplayFormat = ',0.00'
    end
    object CDSMovCCNRO_CUOTA: TIntegerField
      FieldName = 'NRO_CUOTA'
      Origin = 'NRO_CUOTA'
      Required = True
    end
    object CDSMovCCID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Origin = 'ID_MONEDA'
    end
    object CDSMovCCCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
  end
  object DSPRecibo: TDataSetProvider
    DataSet = DMMain_2.QRecibo
    UpdateMode = upWhereKeyOnly
    Left = 936
    Top = 68
  end
  object CDSRecibo: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPRecibo'
    Left = 1008
    Top = 68
    object CDSReciboID_RC: TIntegerField
      FieldName = 'ID_RC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSReciboTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Size = 2
    end
    object CDSReciboCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Size = 2
    end
    object CDSReciboNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Size = 13
    end
    object CDSReciboCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSReciboLETRARC: TStringField
      FieldName = 'LETRARC'
      Size = 1
    end
    object CDSReciboSUCRC: TStringField
      FieldName = 'SUCRC'
      Size = 4
    end
    object CDSReciboNUMERORC: TStringField
      FieldName = 'NUMERORC'
      Size = 8
    end
    object CDSReciboNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 35
    end
    object CDSReciboRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Size = 35
    end
    object CDSReciboDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 35
    end
    object CDSReciboCPOSTAL: TStringField
      FieldName = 'CPOSTAL'
      Size = 8
    end
    object CDSReciboLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 15
    end
    object CDSReciboTIPOIVA: TIntegerField
      FieldName = 'TIPOIVA'
    end
    object CDSReciboCUIT: TStringField
      FieldName = 'CUIT'
      Size = 13
    end
    object CDSReciboFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSReciboANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object CDSReciboVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 6
    end
    object CDSReciboSALDO_APLICAR: TFMTBCDField
      FieldName = 'SALDO_APLICAR'
      Precision = 15
      Size = 3
    end
    object CDSReciboIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Size = 1
    end
    object CDSReciboOBSERVACION1: TStringField
      FieldName = 'OBSERVACION1'
      Size = 60
    end
    object CDSReciboOBSERVACION2: TStringField
      FieldName = 'OBSERVACION2'
      Size = 60
    end
    object CDSReciboSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
    end
    object CDSReciboZONA: TIntegerField
      FieldName = 'ZONA'
    end
    object CDSReciboTOTAL_NETO: TFMTBCDField
      FieldName = 'TOTAL_NETO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSReciboPORCENTAJE_DSCTO: TFMTBCDField
      FieldName = 'PORCENTAJE_DSCTO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSReciboIMPORTE_DSCTO: TFMTBCDField
      FieldName = 'IMPORTE_DSCTO'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSReciboTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      DisplayFormat = '0.00'
      EditFormat = '0.00'
      Precision = 15
      Size = 3
    end
    object CDSReciboUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object CDSReciboFECHA_HORA: TSQLTimeStampField
      FieldName = 'FECHA_HORA'
    end
    object CDSReciboCPBTE_MANUAL: TStringField
      FieldName = 'CPBTE_MANUAL'
      FixedChar = True
      Size = 1
    end
    object CDSReciboNC_ID: TIntegerField
      FieldName = 'NC_ID'
    end
    object CDSReciboNC_TIPOCPBTE: TStringField
      FieldName = 'NC_TIPOCPBTE'
      FixedChar = True
      Size = 2
    end
    object CDSReciboNC_CLASECPBTE: TStringField
      FieldName = 'NC_CLASECPBTE'
      FixedChar = True
      Size = 2
    end
    object CDSReciboNC_NROCOMPROB: TStringField
      FieldName = 'NC_NROCOMPROB'
      Size = 13
    end
    object CDSReciboN_OPERACION2: TFMTBCDField
      FieldName = 'N_OPERACION2'
      Precision = 15
      Size = 3
    end
    object CDSReciboMUESTRASUCURSAL: TStringField
      FieldName = 'MUESTRASUCURSAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSReciboMUESTRACOMPROBANTE: TStringField
      FieldName = 'MUESTRACOMPROBANTE'
      ProviderFlags = []
      Size = 15
    end
    object CDSReciboID_TIPOCOMPROBANTE: TIntegerField
      FieldName = 'ID_TIPOCOMPROBANTE'
      ProviderFlags = []
    end
    object CDSReciboMUESTRAVENDEDOR: TStringField
      FieldName = 'MUESTRAVENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object CDSReciboMUESTRAIVA: TStringField
      FieldName = 'MUESTRAIVA'
      ProviderFlags = []
      Size = 15
    end
    object CDSReciboNUMERO_OPERACION: TStringField
      FieldName = 'NUMERO_OPERACION'
      Size = 8
    end
    object CDSReciboNRO_RECIBO_INTERMO: TIntegerField
      FieldName = 'NRO_RECIBO_INTERMO'
    end
    object CDSReciboID_REC_CUPON: TIntegerField
      FieldName = 'ID_REC_CUPON'
    end
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
    Left = 288
    Top = 56
  end
  object QAplicaciones: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from MovAplicaCCVta'
      'where cliente=:codigo')
    Left = 352
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
      Origin = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAplicacionesID_MOVCCVTA: TIntegerField
      FieldName = 'ID_MOVCCVTA'
      Origin = 'ID_MOVCCVTA'
      Required = True
    end
    object QAplicacionesFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QAplicacionesCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Required = True
      Size = 6
    end
    object QAplicacionesID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      Required = True
    end
    object QAplicacionesTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QAplicacionesCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QAplicacionesNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Origin = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object QAplicacionesIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QAplicacionesAPLICA_ID_CPBTE: TIntegerField
      FieldName = 'APLICA_ID_CPBTE'
      Origin = 'APLICA_ID_CPBTE'
      Required = True
    end
    object QAplicacionesAPLICA_TIPOCPBTE: TStringField
      FieldName = 'APLICA_TIPOCPBTE'
      Origin = 'APLICA_TIPOCPBTE'
      Size = 2
    end
    object QAplicacionesAPLICA_CLASECPBTE: TStringField
      FieldName = 'APLICA_CLASECPBTE'
      Origin = 'APLICA_CLASECPBTE'
      Size = 2
    end
    object QAplicacionesAPLICA_NROCPBTE: TStringField
      FieldName = 'APLICA_NROCPBTE'
      Origin = 'APLICA_NROCPBTE'
      Size = 13
    end
    object QAplicacionesDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QAplicacionesCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Origin = 'CONCILIADO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QACta: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from MovACtaCCVta'
      'where cliente=:codigo and Importe<>0 and importe>0.001'
      'order by fecha,numerocpbte')
    Left = 568
    Top = 168
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QACtaID_MOV: TIntegerField
      FieldName = 'ID_MOV'
      Origin = 'ID_MOV'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QACtaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object QACtaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Required = True
      Size = 6
    end
    object QACtaID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
      Required = True
    end
    object QACtaTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QACtaCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QACtaNUMEROCPBTE: TStringField
      FieldName = 'NUMEROCPBTE'
      Origin = 'NUMEROCPBTE'
      Required = True
      Size = 13
    end
    object QACtaIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
    object QACtaDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
  end
  object QMovCC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from MovCCVta where'
      
        '(cliente=:codigo) and ( (tipoCpbte='#39'FC'#39') or (TipoCpbte='#39'ND'#39') or ' +
        '(TipoCpbte='#39'AJ'#39') or (TipoCpbte='#39'XR'#39')) and (haber=0)'
      'and (Saldo>0)'
      'order by FechaVta,NroCpbte')
    Left = 176
    Top = 176
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
    object QMovCCID_MOVCCVTA: TIntegerField
      FieldName = 'ID_MOVCCVTA'
      Origin = 'ID_MOVCCVTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovCCID_CPBTE: TIntegerField
      FieldName = 'ID_CPBTE'
      Origin = 'ID_CPBTE'
    end
    object QMovCCCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Required = True
      Size = 6
    end
    object QMovCCFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object QMovCCFECHAVTO: TSQLTimeStampField
      FieldName = 'FECHAVTO'
      Origin = 'FECHAVTO'
    end
    object QMovCCTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Size = 2
    end
    object QMovCCCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QMovCCNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object QMovCCDEBE: TFloatField
      FieldName = 'DEBE'
      Origin = 'DEBE'
    end
    object QMovCCHABER: TFloatField
      FieldName = 'HABER'
      Origin = 'HABER'
    end
    object QMovCCSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
    end
    object QMovCCDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QMovCCNRO_CUOTA: TIntegerField
      FieldName = 'NRO_CUOTA'
      Origin = 'NRO_CUOTA'
      Required = True
    end
    object QMovCCID_MONEDA: TIntegerField
      FieldName = 'ID_MONEDA'
      Origin = 'ID_MONEDA'
    end
    object QMovCCCOTIZACION: TFloatField
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
    end
  end
end

object FormRevisionMovChe3: TFormRevisionMovChe3
  Left = 93
  Top = 83
  Caption = 'Revision Mov Che3'
  ClientHeight = 605
  ClientWidth = 1102
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  DesignSize = (
    1102
    605)
  TextHeight = 13
  object DBStatusLabel1: TJvDBStatusLabel
    Left = 8
    Top = 582
    Width = 104
    Height = 15
    DataSetName = ' '
    DataSource = DSMovI
    Captions.Strings = (
      'Archivos Cerrados'
      'Browse'
      'Edicion'
      'Agregando')
    Style = lsRecordNo
    GlyphAlign = glGlyphRight
    ShadowSize = 2
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Anchors = [akRight, akBottom]
    ParentColor = False
    ParentFont = False
    ShadowColor = clInfoBk
    Transparent = True
    ExplicitTop = 573
  end
  object SpeedButton1: TSpeedButton
    Left = 854
    Top = 481
    Width = 23
    Height = 22
    Hint = 'Hacer Suma de Cheques'
    Anchors = [akRight, akBottom]
    Caption = '+'
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton1Click
    ExplicitTop = 451
  end
  object CtaCajaDestino: TLabel
    Left = 8
    Top = 485
    Width = 84
    Height = 18
    Anchors = [akRight, akBottom]
    Caption = 'Cta de Caja'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitTop = 455
  end
  object Label1: TLabel
    Left = 203
    Top = 512
    Width = 25
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Debe'
    ExplicitTop = 482
  end
  object Label4: TLabel
    Left = 328
    Top = 512
    Width = 29
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Haber'
    ExplicitTop = 482
  end
  object Label5: TLabel
    Left = 530
    Top = 512
    Width = 25
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Debe'
    ExplicitTop = 482
  end
  object Label6: TLabel
    Left = 655
    Top = 512
    Width = 29
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = 'Haber'
    ExplicitTop = 482
  end
  object Button1: TButton
    Left = 458
    Top = 481
    Width = 35
    Height = 25
    Hint = 'Ver los Movimientos de Caja'
    Anchors = [akRight, akBottom]
    Caption = 'Ver'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = Button1Click
  end
  object btRev: TButton
    Left = 534
    Top = 481
    Width = 75
    Height = 25
    Hint = 'Hacer el Control del Debe/Haber'
    Anchors = [akRight, akBottom]
    Caption = 'Revision'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = btRevClick
  end
  object edDebe: TJvCalcEdit
    Left = 200
    Top = 531
    Width = 105
    Height = 21
    DisplayFormat = ',0.00'
    Anchors = [akRight, akBottom]
    ShowButton = False
    TabOrder = 2
    DecimalPlacesAlwaysShown = False
  end
  object edHaber: TJvCalcEdit
    Left = 534
    Top = 531
    Width = 105
    Height = 21
    DisplayFormat = ',0.00'
    Anchors = [akRight, akBottom]
    ShowButton = False
    TabOrder = 3
    DecimalPlacesAlwaysShown = False
  end
  object edSaldo: TJvCalcEdit
    Left = 784
    Top = 531
    Width = 105
    Height = 21
    DisplayFormat = ',0.00'
    Anchors = [akRight, akBottom]
    ShowButton = False
    TabOrder = 4
    DecimalPlacesAlwaysShown = False
  end
  object edHaber_res: TJvCalcEdit
    Left = 655
    Top = 531
    Width = 105
    Height = 21
    DisplayFormat = ',0.00'
    Anchors = [akRight, akBottom]
    ShowButton = False
    TabOrder = 5
    DecimalPlacesAlwaysShown = False
  end
  object chConMovimiento: TCheckBox
    Left = 24
    Top = 533
    Width = 121
    Height = 17
    Anchors = [akRight, akBottom]
    Caption = 'chConMovimiento'
    TabOrder = 6
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1102
    Height = 474
    ActivePage = TabSheet1
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 7
    object TabSheet1: TTabSheet
      Caption = 'Listado'
      DesignSize = (
        1094
        446)
      object Label2: TLabel
        Left = 3
        Top = 5
        Width = 119
        Height = 13
        Caption = 'Movimientos de Ingresos'
      end
      object Label3: TLabel
        Left = 535
        Top = 5
        Width = 113
        Height = 13
        Caption = 'Movmientos de Egresos'
      end
      object dbgMovI: TJvDBGrid
        Left = 0
        Top = 24
        Width = 529
        Height = 409
        Anchors = [akLeft, akTop, akBottom]
        DataSource = DSMovI
        DefaultDrawing = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = dbgMovIDrawColumnCell
        OnTitleClick = dbgMovITitleClick
        TitleButtons = True
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_MOV_CAJA'
            Title.Alignment = taCenter
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_COMPROBANTE'
            Title.Alignment = taCenter
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_COMPROB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLASE_COMPROB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NRO_COMPROBANTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_OPERACION'
            Title.Alignment = taCenter
            Width = 41
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_COMPROB'
            Title.Alignment = taCenter
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEBE'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTROL'
            Width = 19
            Visible = True
          end>
      end
      object dbgMovE: TJvDBGrid
        Left = 535
        Top = 24
        Width = 554
        Height = 409
        Anchors = [akLeft, akTop, akBottom]
        DataSource = DSMovE
        DefaultDrawing = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = dbgMovEDrawColumnCell
        OnTitleClick = dbgMovETitleClick
        TitleButtons = True
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_MOV_CAJA'
            Title.Alignment = taCenter
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_COMPROBANTE'
            Title.Alignment = taCenter
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_OPERACION'
            Title.Alignment = taCenter
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_COMPROB'
            Title.Alignment = taCenter
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLASE_COMPROB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NRO_COMPROBANTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HABER'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_NEXO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTROL'
            Width = 21
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Ingresos'
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 1094
        Height = 404
        Align = alTop
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DSMovI
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGrid1DBTableView1ID_MOV_CAJA: TcxGridDBColumn
            DataBinding.FieldName = 'ID_MOV_CAJA'
            HeaderAlignmentHorz = taCenter
          end
          object cxGrid1DBTableView1ID_CAJA: TcxGridDBColumn
            DataBinding.FieldName = 'ID_CAJA'
            HeaderAlignmentHorz = taCenter
          end
          object cxGrid1DBTableView1FECHA_CAJA: TcxGridDBColumn
            DataBinding.FieldName = 'FECHA_CAJA'
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
          object cxGrid1DBTableView1FECHA_OPERACION: TcxGridDBColumn
            DataBinding.FieldName = 'FECHA_OPERACION'
            HeaderAlignmentHorz = taCenter
            Width = 101
          end
          object cxGrid1DBTableView1TIPO_OPERACION: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO_OPERACION'
            HeaderAlignmentHorz = taCenter
            Width = 38
          end
          object cxGrid1DBTableView1TIPO_COMPROB: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO_COMPROB'
            HeaderAlignmentHorz = taCenter
            Width = 27
          end
          object cxGrid1DBTableView1CLASE_COMPROB: TcxGridDBColumn
            DataBinding.FieldName = 'CLASE_COMPROB'
            HeaderAlignmentHorz = taCenter
            Width = 35
          end
          object cxGrid1DBTableView1ID_COMPROBANTE: TcxGridDBColumn
            DataBinding.FieldName = 'ID_COMPROBANTE'
            HeaderAlignmentHorz = taCenter
          end
          object cxGrid1DBTableView1NRO_COMPROBANTE: TcxGridDBColumn
            DataBinding.FieldName = 'NRO_COMPROBANTE'
            HeaderAlignmentHorz = taCenter
          end
          object cxGrid1DBTableView1HABER: TcxGridDBColumn
            DataBinding.FieldName = 'HABER'
            HeaderAlignmentHorz = taCenter
          end
          object cxGrid1DBTableView1DEBE: TcxGridDBColumn
            DataBinding.FieldName = 'DEBE'
            HeaderAlignmentHorz = taCenter
          end
          object cxGrid1DBTableView1ID_CUENTA_CAJA: TcxGridDBColumn
            DataBinding.FieldName = 'ID_CUENTA_CAJA'
            HeaderAlignmentHorz = taCenter
          end
          object cxGrid1DBTableView1VERIFICADO: TcxGridDBColumn
            Caption = 'Verif.'
            DataBinding.FieldName = 'VERIFICADO'
            DataBinding.IsNullValueType = True
            HeaderAlignmentHorz = taCenter
          end
          object cxGrid1DBTableView1ID_NEXO: TcxGridDBColumn
            DataBinding.FieldName = 'ID_NEXO'
            HeaderAlignmentHorz = taCenter
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  object edDebe_Res: TJvCalcEdit
    Left = 328
    Top = 531
    Width = 105
    Height = 21
    DisplayFormat = ',0.00'
    Anchors = [akRight, akBottom]
    ShowButton = False
    TabOrder = 8
    DecimalPlacesAlwaysShown = False
  end
  object dbcCajaDestino: TJvDBLookupCombo
    Left = 159
    Top = 481
    Width = 293
    Height = 25
    EmptyValue = '-1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Anchors = [akRight, akBottom]
    LookupField = 'ID_CUENTA'
    LookupDisplay = 'NOMBRE'
    LookupSource = DSCtasCaja
    ParentFont = False
    TabOrder = 9
  end
  object btAbort: TBitBtn
    Left = 624
    Top = 481
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Enabled = False
    Kind = bkAbort
    NumGlyphs = 2
    TabOrder = 10
    OnClick = btAbortClick
  end
  object DSPMov: TDataSetProvider
    DataSet = QMov
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 584
    Top = 160
  end
  object CDSMovI: TClientDataSet
    Aggregates = <>
    Filter = 'TIPO_OPERACION = '#39'I'#39
    Filtered = True
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMov'
    OnCalcFields = CDSMovICalcFields
    Left = 656
    Top = 160
    object CDSMovIID_MOV_CAJA: TIntegerField
      DisplayLabel = 'Id Mov caja'
      FieldName = 'ID_MOV_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovIID_CAJA: TIntegerField
      DisplayLabel = 'Id caja'
      FieldName = 'ID_CAJA'
      Required = True
    end
    object CDSMovIFECHA_CAJA: TSQLTimeStampField
      DisplayLabel = 'F.Caja'
      FieldName = 'FECHA_CAJA'
    end
    object CDSMovIFECHA_OPERACION: TSQLTimeStampField
      DisplayLabel = 'Fecha Op.'
      FieldName = 'FECHA_OPERACION'
    end
    object CDSMovITIPO_OPERACION: TStringField
      DisplayLabel = 'Tp.Op'
      FieldName = 'TIPO_OPERACION'
      Size = 1
    end
    object CDSMovITIPO_COMPROB: TStringField
      DisplayLabel = 'Tp.'
      FieldName = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSMovICLASE_COMPROB: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASE_COMPROB'
      Size = 2
    end
    object CDSMovIID_COMPROBANTE: TIntegerField
      DisplayLabel = 'Id Cpbte'
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object CDSMovINRO_COMPROBANTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NRO_COMPROBANTE'
      Required = True
      Size = 13
    end
    object CDSMovIID_CUENTA_CAJA: TIntegerField
      DisplayLabel = 'Cta Caja'
      FieldName = 'ID_CUENTA_CAJA'
    end
    object CDSMovIID_NEXO: TIntegerField
      DisplayLabel = 'Id Parent'
      FieldKind = fkInternalCalc
      FieldName = 'ID_NEXO'
    end
    object CDSMovICONTROL: TIntegerField
      DisplayLabel = 'V'
      FieldKind = fkInternalCalc
      FieldName = 'CONTROL'
    end
    object CDSMovIHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovIDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovIUNIDADES: TFloatField
      DisplayLabel = 'Unid'
      FieldName = 'UNIDADES'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSMovI: TDataSource
    DataSet = CDSMovI
    Left = 728
    Top = 160
  end
  object CDSMovE: TClientDataSet
    Aggregates = <>
    Filter = 'TIPO_OPERACION = '#39'E'#39
    Filtered = True
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMov'
    OnCalcFields = CDSMovECalcFields
    Left = 656
    Top = 232
    object CDSMovEID_MOV_CAJA: TIntegerField
      DisplayLabel = 'Id Mov Caja'
      FieldName = 'ID_MOV_CAJA'
      Origin = 'ID_MOV_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovEID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      Required = True
    end
    object CDSMovEFECHA_CAJA: TSQLTimeStampField
      FieldName = 'FECHA_CAJA'
      Origin = 'FECHA_CAJA'
    end
    object CDSMovEFECHA_OPERACION: TSQLTimeStampField
      FieldName = 'FECHA_OPERACION'
      Origin = 'FECHA_OPERACION'
    end
    object CDSMovETIPO_OPERACION: TStringField
      DisplayLabel = 'Tp.Op'
      FieldName = 'TIPO_OPERACION'
      Origin = 'TIPO_OPERACION'
      Size = 1
    end
    object CDSMovETIPO_COMPROB: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSMovECLASE_COMPROB: TStringField
      DisplayLabel = 'Cl.'
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Size = 2
    end
    object CDSMovEID_COMPROBANTE: TIntegerField
      DisplayLabel = 'Id Cpbte'
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      Required = True
    end
    object CDSMovENRO_COMPROBANTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NRO_COMPROBANTE'
      Origin = 'NRO_COMPROBANTE'
      Required = True
      Size = 13
    end
    object CDSMovEID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
      Required = True
    end
    object CDSMovEID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
      Required = True
    end
    object CDSMovEID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
    end
    object CDSMovEID_NEXO: TIntegerField
      DisplayLabel = 'id Parent'
      FieldKind = fkInternalCalc
      FieldName = 'ID_NEXO'
    end
    object CDSMovECONTROL: TIntegerField
      DisplayLabel = 'V'
      FieldKind = fkInternalCalc
      FieldName = 'CONTROL'
    end
    object CDSMovEHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00'
    end
    object CDSMovEDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00'
    end
    object CDSMovEUNIDADES: TFloatField
      DisplayLabel = 'Unidades'
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
      DisplayFormat = ',0.00'
    end
    object CDSMovECOTIZACION: TFloatField
      DisplayLabel = 'Cotizacion'
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      DisplayFormat = ',0.00'
    end
    object CDSMovEMONEDA: TIntegerField
      DisplayLabel = 'Moneda'
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
      DisplayFormat = ',0.00'
    end
  end
  object DSMovE: TDataSource
    DataSet = CDSMovE
    Left = 720
    Top = 232
  end
  object DSPCtasCaja: TDataSetProvider
    DataSet = QCtasCaja
    Left = 768
    Top = 384
  end
  object CDSCtasCaja: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCtasCaja'
    Left = 824
    Top = 384
    object CDSCtasCajaID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
      Origin = 'ID_CUENTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCtasCajaID_TIPO_CTA: TIntegerField
      FieldName = 'ID_TIPO_CTA'
      Origin = 'ID_TIPO_CTA'
      Required = True
    end
    object CDSCtasCajaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object CDSCtasCajaNRO_CUENTA: TStringField
      FieldName = 'NRO_CUENTA'
      Origin = 'NRO_CUENTA'
      Size = 15
    end
    object CDSCtasCajaID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
    end
    object CDSCtasCajaCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object CDSCtasCajaRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
  end
  object DSCtasCaja: TDataSource
    DataSet = CDSCtasCaja
    Left = 872
    Top = 384
  end
  object QMov: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cm.* from caja_mov cm'
      'where cm.id_cuenta_caja=:id and id_tpago=3')
    Left = 524
    Top = 160
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QCtasCaja: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.* from cuenta_caja c'
      'where c.id_tipo_cta=1'
      '')
    Left = 700
    Top = 384
  end
end

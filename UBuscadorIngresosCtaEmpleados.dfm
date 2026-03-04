object FormBuscadorIngresosEmpleados: TFormBuscadorIngresosEmpleados
  Left = 160
  Top = 203
  Caption = 'Buscador de Ingresos de Empleados'
  ClientHeight = 426
  ClientWidth = 650
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 650
    Height = 409
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 2
      Width = 47
      Height = 13
      Caption = 'Empleado'
    end
    object edNombreCliente: TEdit
      Left = 88
      Top = 15
      Width = 257
      Height = 21
      Color = clInfoBk
      Enabled = False
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 477
      Top = 368
      Width = 75
      Height = 28
      Caption = 'OK'
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
      TabOrder = 2
    end
    object BitBtn2: TBitBtn
      Left = 558
      Top = 368
      Width = 75
      Height = 28
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 3
    end
    object dbgMov: TJvDBGrid
      Left = 9
      Top = 43
      Width = 624
      Height = 319
      DataSource = DSMovCC
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbgMovDblClick
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'FECHA'
          Title.Alignment = taCenter
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLASECOMP'
          Title.Alignment = taCenter
          Width = 27
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NROCPBTE'
          Title.Alignment = taCenter
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE'
          Title.Alignment = taCenter
          Width = 285
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEBE'
          Title.Alignment = taCenter
          Width = 91
          Visible = True
        end>
    end
    object ceCliente: TJvComboEdit
      Left = 9
      Top = 16
      Width = 73
      Height = 21
      ButtonWidth = 16
      ClickKey = 16397
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000000A000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FFC000003300000033000000FFC00000}
      TabOrder = 0
      Text = ''
      OnButtonClick = BuscaEmpleadoExecute
      OnKeyPress = ceClienteKeyPress
    end
  end
  object DSMovCC: TDataSource
    DataSet = CDSMovCC
    Left = 96
    Top = 120
  end
  object DSPMovCC: TDataSetProvider
    DataSet = QMovCC
    Left = 272
    Top = 120
  end
  object ActionList1: TActionList
    Left = 184
    Top = 200
    object BuscaEmpleado: TAction
      Caption = 'BuscaEmpleado'
      OnExecute = BuscaEmpleadoExecute
    end
  end
  object CDSMovCC: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovCC'
    Left = 192
    Top = 120
    object CDSMovCCID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSMovCCIDADELANTO: TIntegerField
      FieldName = 'IDADELANTO'
      Origin = 'IDADELANTO'
    end
    object CDSMovCCCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 6
    end
    object CDSMovCCFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSMovCCCLASECOMP: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECOMP'
      Origin = 'CLASECOMP'
      Size = 2
    end
    object CDSMovCCNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Size = 13
    end
    object CDSMovCCDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object CDSMovCCDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00'
    end
    object CDSMovCCHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00'
    end
  end
  object CDSBuscaPersonal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPBuscaPersonal'
    Left = 66
    Top = 336
    object CDSBuscaPersonalNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 60
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSBuscaPersonalCODIGO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 15
      FieldName = 'CODIGO'
      Size = 6
    end
  end
  object DSPBuscaPersonal: TDataSetProvider
    DataSet = DMBuscadores.QBuscaPersonal
    Left = 138
    Top = 336
  end
  object ComBuscadorEmpleados: TComBuscador
    Data = CDSBuscaPersonal
    Campo = 'CODIGO'
    rOk = False
    Left = 328
    Top = 272
  end
  object QMovCC: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from ctactepersonal where'
      '(codigo=:codigo)  and debe<>0'
      'order by Fecha desc')
    Left = 344
    Top = 120
    ParamData = <
      item
        Position = 1
        Name = 'codigo'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object QPersonal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select p.cargo,p.categoria,p.ctacontable,p.domicilio,p.estado_ci' +
        'vil,'
      
        '       p.fecha_ingreso,p.fecha_nacimiento,p.codigo,p.localidad,p' +
        '.nombre,p.telefono_1,'
      
        '       p.telefono_2,c.detalle as MuestraCargo, ct.detalle as Mue' +
        'straCategoria,'
      '       cp.Detalle_Postal as MuestraLocalidad,'
      '       cp.codigo_postal as MuestraCPostal from personal p'
      'left join cargo c on c.id=p.cargo'
      'left join personal_categoria ct on ct.id=p.categoria'
      'left join c_postal cp on cp.id_Postal=p.localidad'
      'where p.codigo=:codigo'
      'order by nombre')
    Left = 216
    Top = 344
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QPersonalCARGO: TIntegerField
      FieldName = 'CARGO'
      Origin = 'CARGO'
    end
    object QPersonalCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
    end
    object QPersonalCTACONTABLE: TIntegerField
      FieldName = 'CTACONTABLE'
      Origin = 'CTACONTABLE'
    end
    object QPersonalDOMICILIO: TStringField
      FieldName = 'DOMICILIO'
      Origin = 'DOMICILIO'
      Size = 50
    end
    object QPersonalESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      Origin = 'ESTADO_CIVIL'
      FixedChar = True
      Size = 1
    end
    object QPersonalFECHA_INGRESO: TSQLTimeStampField
      FieldName = 'FECHA_INGRESO'
      Origin = 'FECHA_INGRESO'
    end
    object QPersonalFECHA_NACIMIENTO: TSQLTimeStampField
      FieldName = 'FECHA_NACIMIENTO'
      Origin = 'FECHA_NACIMIENTO'
    end
    object QPersonalCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QPersonalLOCALIDAD: TIntegerField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
    end
    object QPersonalNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
    object QPersonalTELEFONO_1: TStringField
      FieldName = 'TELEFONO_1'
      Origin = 'TELEFONO_1'
      Size = 15
    end
    object QPersonalTELEFONO_2: TStringField
      FieldName = 'TELEFONO_2'
      Origin = 'TELEFONO_2'
      Size = 15
    end
    object QPersonalMUESTRACARGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACARGO'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QPersonalMUESTRACATEGORIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACATEGORIA'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QPersonalMUESTRALOCALIDAD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRALOCALIDAD'
      Origin = 'DETALLE_POSTAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object QPersonalMUESTRACPOSTAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACPOSTAL'
      Origin = 'CODIGO_POSTAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 8
    end
  end
end

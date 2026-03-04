object FormResumenGralCajas: TFormResumenGralCajas
  Left = 0
  Top = 0
  Caption = 'Resumen de Cajas '
  ClientHeight = 627
  ClientWidth = 1037
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  Position = poOwnerFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1037
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      1037
      73)
    object Label1: TLabel
      Left = 16
      Top = 3
      Width = 120
      Height = 18
      Caption = 'Desde Caja Nro.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 160
      Top = 3
      Width = 112
      Height = 18
      Caption = 'Hasta Caja Nro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 304
      Top = 3
      Width = 119
      Height = 18
      Caption = 'A'#241'o de Consulta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 983
      Top = 18
      Width = 41
      Height = 40
      Anchors = [akTop, akRight]
      Flat = True
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
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
        0000000000000D0D0D381C1C1C78292929AE333333D83A3A3AF53A3A3AF53333
        33D8292929AE1C1C1C780D0D0D38000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001E1E1E7E00000000000000000000000000000000000000000E0E
        0E3D24242498383838EF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF383838EF242424980E0E0E3D00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF1E1E1E7E0000000000000000000000001919196A3333
        33D83C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF333333D81919196A000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF1E1E1E7E000000001C1C1C793A3A3AF83C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3A3A3AF81C1C1C790000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF2A2A2AB43A3A3AF83C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF2C2C2CB91B1B1B720D0D0D380404040F0404040F0D0D
        0D381B1B1B722C2C2CB93C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3A3A3AF81919
        196A000000000000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF343434DF1B1B1B730303030C000000000000000000000000000000000000
        0000000000000303030C1B1B1B73343434DF3C3C3CFF3C3C3CFF3C3C3CFF3333
        33D80E0E0E3D0000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3434
        34DF1616165C0000000000000000000000000000000000000000000000000000
        00000000000000000000000000001616165C343434DF3C3C3CFF3C3C3CFF3C3C
        3CFF242424980000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2B2B
        2BB8000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000001B1B1B733C3C3CFF3C3C3CFF3C3C
        3CFF383838EF0D0D0D3800000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF1E1E1E7E0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000303030C2C2C2CB93C3C3CFF3C3C
        3CFF3C3C3CFF1C1C1C7800000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
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
        0000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
        000000000000000000001C1C1C783C3C3CFF3C3C3CFF3C3C3CFF2C2C2CB90303
        030C000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
        000000000000000000000D0D0D38383838EF3C3C3CFF3C3C3CFF3C3C3CFF1B1B
        1B73000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000002B2B2BB83C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
        0000000000000000000000000000242424983C3C3CFF3C3C3CFF3C3C3CFF3434
        34DF1616165C0000000000000000000000000000000000000000000000000000
        00000000000000000000000000001616165C343434DF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
        00000000000000000000000000000E0E0E3D333333D83C3C3CFF3C3C3CFF3C3C
        3CFF343434DF1B1B1B730303030C000000000000000000000000000000000000
        0000000000000303030C1B1B1B73343434DF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
        0000000000000000000000000000000000001919196A3A3A3AF83C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF2C2C2CB91B1B1B720D0D0D380404040F0404040F0D0D
        0D381B1B1B722C2C2CB93C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3A3A3AF82A2A
        2AB43C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
        000000000000000000000000000000000000000000001C1C1C793A3A3AF83C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3A3A3AF81C1C1C790000
        00001E1E1E7E3C3C3CFF3C3C3CFF000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001919196A3333
        33D83C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF333333D81919196A000000000000
        0000000000001E1E1E7E3C3C3CFF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000E0E
        0E3D24242498383838EF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF383838EF242424980E0E0E3D00000000000000000000
        000000000000000000001E1E1E7E000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000D0D0D381C1C1C78292929AE333333D83A3A3AF53A3A3AF53333
        33D8292929AE1C1C1C780D0D0D38000000000000000000000000000000000000
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
        0000000000000000000000000000000000000000000000000000}
      OnClick = SpeedButton1Click
    end
    object edCaja: TJvDBLookupCombo
      Left = 688
      Top = 28
      Width = 289
      Height = 26
      DisplayEmpty = 'Todas las Cajas'
      EmptyValue = '-1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Anchors = [akTop, akRight]
      LookupField = 'ID_CUENTA'
      LookupDisplay = 'NOMBRE'
      LookupSource = DSCajas
      ParentFont = False
      TabOrder = 0
    end
    object edAnio: TJvCalcEdit
      Left = 304
      Top = 28
      Width = 121
      Height = 27
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxValue = 3000.000000000000000000
      MinValue = 1900.000000000000000000
      ParentFont = False
      ShowButton = False
      TabOrder = 1
      Value = 1900.000000000000000000
      DecimalPlacesAlwaysShown = False
    end
    object edHasta: TJvCalcEdit
      Left = 162
      Top = 28
      Width = 121
      Height = 27
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxValue = 9999.000000000000000000
      MinValue = 1.000000000000000000
      ParentFont = False
      ShowButton = False
      TabOrder = 2
      Value = 9999.000000000000000000
      DecimalPlacesAlwaysShown = False
    end
    object edDesde: TJvCalcEdit
      Left = 16
      Top = 28
      Width = 121
      Height = 27
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxValue = 3000.000000000000000000
      MinValue = 1.000000000000000000
      ParentFont = False
      ShowButton = False
      TabOrder = 3
      Value = 1.000000000000000000
      DecimalPlacesAlwaysShown = False
    end
    object UpDown1: TUpDown
      Left = 428
      Top = 28
      Width = 17
      Height = 25
      Min = -36800
      Max = 36800
      TabOrder = 4
      OnClick = UpDown1Click
    end
  end
  object cxDBPivotGrid1: TcxDBPivotGrid
    Left = 0
    Top = 73
    Width = 1037
    Height = 513
    Align = alClient
    DataSource = DSCajasGeneral
    Groups = <>
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Silver'
    TabOrder = 1
    OnMouseDown = cxDBPivotGrid1MouseDown
    OnMouseMove = cxDBPivotGrid1MouseMove
    OnMouseUp = cxDBPivotGrid1MouseUp
    ExplicitHeight = 539
    object cxDBPivotGrid1IDCAJA: TcxDBPivotGridField
      AreaIndex = 0
      DataBinding.FieldName = 'IDCAJA'
      UniqueName = 'IDCAJA'
    end
    object cxDBPivotGrid1NOMBRECTACAJA: TcxDBPivotGridField
      Area = faColumn
      AreaIndex = 0
      DataBinding.FieldName = 'NOMBRECTACAJA'
      Visible = True
      UniqueName = 'NOMBRECTACAJA'
    end
    object cxDBPivotGrid1NROCAJA: TcxDBPivotGridField
      AreaIndex = 1
      DataBinding.FieldName = 'NROCAJA'
      Visible = True
      UniqueName = 'NROCAJA'
    end
    object cxDBPivotGrid1FECHAINICIO: TcxDBPivotGridField
      AreaIndex = 2
      DataBinding.FieldName = 'FECHAINICIO'
      Visible = True
      UniqueName = 'FECHAINICIO'
    end
    object cxDBPivotGrid1FECHACIERRE: TcxDBPivotGridField
      AreaIndex = 3
      DataBinding.FieldName = 'FECHACIERRE'
      Visible = True
      UniqueName = 'FECHACIERRE'
    end
    object cxDBPivotGrid1ID_MOVIMIENTO: TcxDBPivotGridField
      AreaIndex = 4
      DataBinding.FieldName = 'ID_MOVIMIENTO'
      UniqueName = 'ID_MOVIMIENTO'
    end
    object cxDBPivotGrid1FECHA: TcxDBPivotGridField
      AreaIndex = 5
      DataBinding.FieldName = 'FECHA'
      Visible = True
      UniqueName = 'FECHA'
    end
    object cxDBPivotGrid1TIPO_COMPROB: TcxDBPivotGridField
      AreaIndex = 6
      DataBinding.FieldName = 'TIPO_COMPROB'
      Visible = True
      UniqueName = 'TIPO_COMPROB'
    end
    object cxDBPivotGrid1CLASE_COMPRO: TcxDBPivotGridField
      AreaIndex = 7
      DataBinding.FieldName = 'CLASE_COMPRO'
      Visible = True
      UniqueName = 'CLASE_COMPRO'
    end
    object cxDBPivotGrid1NROCOMPROB: TcxDBPivotGridField
      AreaIndex = 8
      DataBinding.FieldName = 'NROCOMPROB'
      Visible = True
      UniqueName = 'NROCOMPROB'
    end
    object cxDBPivotGrid1DEBE: TcxDBPivotGridField
      Area = faData
      AreaIndex = 0
      DataBinding.FieldName = 'DEBE'
      Visible = True
      UniqueName = 'DEBE'
    end
    object cxDBPivotGrid1HABER: TcxDBPivotGridField
      Area = faData
      AreaIndex = 1
      DataBinding.FieldName = 'HABER'
      Visible = True
      UniqueName = 'HABER'
    end
    object cxDBPivotGrid1ID_TPAGO: TcxDBPivotGridField
      AreaIndex = 9
      DataBinding.FieldName = 'ID_TPAGO'
      UniqueName = 'ID_TPAGO'
    end
    object cxDBPivotGrid1ID_FPAGO: TcxDBPivotGridField
      AreaIndex = 10
      DataBinding.FieldName = 'ID_FPAGO'
      UniqueName = 'ID_FPAGO'
    end
    object cxDBPivotGrid1MUESTRAFPAGO: TcxDBPivotGridField
      Area = faRow
      AreaIndex = 2
      DataBinding.FieldName = 'MUESTRAFPAGO'
      Visible = True
      UniqueName = 'MUESTRAFPAGO'
    end
    object cxDBPivotGrid1COTIZACION: TcxDBPivotGridField
      AreaIndex = 11
      DataBinding.FieldName = 'COTIZACION'
      Visible = True
      UniqueName = 'COTIZACION'
    end
    object cxDBPivotGrid1UNIDADES: TcxDBPivotGridField
      AreaIndex = 12
      DataBinding.FieldName = 'UNIDADES'
      Visible = True
      UniqueName = 'UNIDADES'
    end
    object cxDBPivotGrid1DESCRIPCION: TcxDBPivotGridField
      AreaIndex = 13
      DataBinding.FieldName = 'DESCRIPCION'
      Visible = True
      UniqueName = 'DESCRIPCION'
    end
    object cxDBPivotGrid1NOMBRE: TcxDBPivotGridField
      AreaIndex = 14
      DataBinding.FieldName = 'NOMBRE'
      Visible = True
      UniqueName = 'NOMBRE'
    end
    object cxDBPivotGrid1SIGNO: TcxDBPivotGridField
      AreaIndex = 15
      DataBinding.FieldName = 'SIGNO'
      Visible = True
      UniqueName = 'SIGNO'
    end
    object cxDBPivotGrid1ID_CTA_CAJA: TcxDBPivotGridField
      AreaIndex = 16
      DataBinding.FieldName = 'ID_CTA_CAJA'
      Visible = True
      UniqueName = 'ID_CTA_CAJA'
    end
    object cxDBPivotGrid1ANIO: TcxDBPivotGridField
      AreaIndex = 17
      DataBinding.FieldName = 'ANIO'
      Visible = True
      UniqueName = 'ANIO'
    end
    object cxDBPivotGrid1MES: TcxDBPivotGridField
      Area = faRow
      AreaIndex = 1
      DataBinding.FieldName = 'MES'
      UniqueName = 'MES'
    end
    object cxDBPivotGrid1Field1: TcxDBPivotGridField
      Area = faRow
      AreaIndex = 0
      DataBinding.FieldName = 'MUESTRAMES'
      Visible = True
      UniqueName = 'Mes'
    end
  end
  object pnTotales: TJvPanel
    Left = 16
    Top = 430
    Width = 320
    Height = 125
    Color = clTeal
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    ParentBackground = False
    TabOrder = 2
    Visible = False
    object Label6: TLabel
      Left = 11
      Top = 9
      Width = 113
      Height = 13
      Caption = 'Mostrar Los Totales'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 288
      Top = 5
      Width = 23
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
      OnClick = SpeedButton2Click
    end
    object chOpSumas: TCheckListBox
      Left = 11
      Top = 28
      Width = 300
      Height = 77
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        'Total General Columnas'
        'Totales por Columnas'
        'Total General Linea'
        'Totales Por Linea')
      ParentFont = False
      TabOrder = 0
      OnClick = chOpSumasClick
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 586
    Width = 1037
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 3
    ExplicitLeft = 544
    ExplicitTop = 568
    ExplicitWidth = 185
    DesignSize = (
      1037
      41)
    object Label4: TLabel
      Left = 16
      Top = 12
      Width = 76
      Height = 13
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = 'Muestra Totales'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = Label4Click
    end
    object Label5: TLabel
      Left = 115
      Top = 12
      Width = 76
      Height = 13
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = 'Mostrar Campos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = Label5Click
    end
    object btDatosCruzados: TBitBtn
      Left = 828
      Top = 6
      Width = 80
      Height = 25
      Caption = '&Imprimir'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btDatosCruzadosClick
    end
    object btExportarXLS: TBitBtn
      Left = 904
      Top = 6
      Width = 80
      Height = 25
      Caption = 'Excel'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF233F3F237F7F237F7F237F7F001F
        000F4B000F4B000F2C00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF237F7F47FFFF47FFFF47FFFF0F2C00005F3F1F97000F4B00FF00FF18233F
        4F88AF2F737F4F534F2F302FFF00FFFF00FF237F7F233F7F00007747BFBF237F
        7F237F7F1F97000F4B00FF00FF30477F9BD7FF63C0FF48B7FF30A3E34F93B733
        7797003F3F233F3F000077237F7F0F4B001F77001F97000F4B00FF00FF30477F
        77C8FFA7DBFF8FD0FF8FD0FF8FD0FF83CCFF0000770000EF0000AF0000777F14
        000F4B003F14003F0000FF00FF3B477F4BBBFFBFEFFF8FE7FF8FE7FF8FE7FF8F
        E7FF0000770000EF7F14007F1400BF28000F4B003F33007F1400FF00FF47477F
        67C0FFA3DFFF8FFFFF8FFFFF8FFFFF8FFFFF0000770000EF3F0037000037FF28
        00FF2800FF28007F1400FF00FF18577F77C8FF6FC7FFA7FFFF8FFFFF8FFFFF8F
        FFFF00003700007700007700003F7F14007F14007F14003F1400FF00FF285C7F
        77C8FF58BCFFCBF3FFCFFFFFBFFFFFAFFFFFAFFFFFAFFFFFAFFFFF93E3FFD0FF
        FF83C3DB171817FF00FFFF00FF30607F8BD0FF77C8FF5FBFFF77C8FF7FCCFF9B
        D7FFD3FFFFBFFFFFBFFFFFA7E7FFDFFFFFCFF3FF33575FFF00FFFF00FF30607F
        97FFFF8FFFFF8FFFFF8FFFFF8FFFFF83EFFF77DBFFA7DFFFC7EBFFCBEBFFF7FF
        FFF7FFFF7BAFC7FF00FFFF00FF30607F9FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8F
        FFFF8FFFFF8FFFFF83FFFF43BFF73B63833B647F435B7FFF00FFFF00FF30537F
        B7FBFF8FFFFF8FFFFFAFFFFFA3DBFF9BDBFF9FEBFFAFFBFFAFFFFF67D7FF3737
        37FF00FFFF00FFFF00FFFF00FFFF00FF93B7FF88D7FF7FD7FF87C7FF1C1F1CFF
        00FF23233F47477F3B477F30537FFF00FF000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00FFFF00
        FFFF00FF000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF000000000000000000FF00FF000000}
      TabOrder = 1
      OnClick = btExportarXLSClick
    end
  end
  object QCajasGen: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select m.* from detalle_mov_val_x_ctacaja (:id,:desde,:hasta,:an' +
        'io) m')
    Left = 200
    Top = 280
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'DESDE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'HASTA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'ANIO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QctasCaja: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select m.* from cuenta_caja m  where m.id_tipo_cta=1'
      'order by m.id_cuenta')
    Left = 416
    Top = 368
    object QctasCajaID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
      Origin = 'ID_CUENTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QctasCajaID_TIPO_CTA: TIntegerField
      FieldName = 'ID_TIPO_CTA'
      Origin = 'ID_TIPO_CTA'
      Required = True
    end
    object QctasCajaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 25
    end
    object QctasCajaNRO_CUENTA: TStringField
      FieldName = 'NRO_CUENTA'
      Origin = 'NRO_CUENTA'
      Size = 15
    end
    object QctasCajaID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
    end
    object QctasCajaCUIT: TStringField
      FieldName = 'CUIT'
      Origin = 'CUIT'
      Size = 13
    end
    object QctasCajaRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Size = 35
    end
  end
  object DSCajas: TDataSource
    DataSet = QctasCaja
    Left = 512
    Top = 376
  end
  object DSCajasGeneral: TDataSource
    DataSet = CDSCajasGeneral
    Left = 464
    Top = 272
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link2
    PreviewOptions.WindowState = wsMaximized
    Version = 0
    Left = 765
    Top = 360
    PixelsPerInch = 96
    object dxComponentPrinter1Link1: TcxPivotGridReportLink
      Active = True
      Component = cxDBPivotGrid1
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
      ReportDocument.CreationDate = 44648.637328912040000000
      OptionsView.ColumnFields = False
      OptionsView.DataFields = False
      OptionsView.ExpandButtons = False
      OptionsView.Prefilter = pfvNever
      OptionsView.RowFields = False
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object dxComponentPrinter1Link2: TdxGridReportLink
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
      ReportDocument.CreationDate = 43671.646178668980000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'XLS'
    Left = 576
    Top = 216
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    AutoFlush = True
    SubStorages = <>
    Left = 712
    Top = 168
  end
  object JvFormStorage: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    Options = [fpState, fpSize, fpLocation, fpActiveControl]
    StoredValues = <>
    Left = 640
    Top = 152
  end
  object DSPCajasGeneral: TDataSetProvider
    DataSet = QCajasGen
    Left = 304
    Top = 280
  end
  object CDSCajasGeneral: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'HASTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ANIO'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCajasGeneral'
    OnCalcFields = CDSCajasGeneralCalcFields
    Left = 376
    Top = 280
    object CDSCajasGeneralIDCAJA: TIntegerField
      FieldName = 'IDCAJA'
      Origin = 'IDCAJA'
    end
    object CDSCajasGeneralNOMBRECTACAJA: TStringField
      DisplayLabel = 'Nombre de Caja'
      FieldName = 'NOMBRECTACAJA'
      Origin = 'NOMBRECTACAJA'
      Size = 25
    end
    object CDSCajasGeneralNROCAJA: TIntegerField
      DisplayLabel = 'Nro de Caja'
      FieldName = 'NROCAJA'
      Origin = 'NROCAJA'
    end
    object CDSCajasGeneralID_MOVIMIENTO: TIntegerField
      FieldName = 'ID_MOVIMIENTO'
      Origin = 'ID_MOVIMIENTO'
    end
    object CDSCajasGeneralTIPO_COMPROB: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Size = 2
    end
    object CDSCajasGeneralCLASE_COMPRO: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASE_COMPRO'
      Origin = 'CLASE_COMPRO'
      Size = 2
    end
    object CDSCajasGeneralNROCOMPROB: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCOMPROB'
      Origin = 'NROCOMPROB'
      Size = 13
    end
    object CDSCajasGeneralDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      Origin = 'DEBE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCajasGeneralHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      Origin = 'HABER'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCajasGeneralID_TPAGO: TIntegerField
      FieldName = 'ID_TPAGO'
      Origin = 'ID_TPAGO'
    end
    object CDSCajasGeneralID_FPAGO: TIntegerField
      FieldName = 'ID_FPAGO'
      Origin = 'ID_FPAGO'
    end
    object CDSCajasGeneralMUESTRAFPAGO: TStringField
      DisplayLabel = 'Forma de Pago'
      FieldName = 'MUESTRAFPAGO'
      Origin = 'MUESTRAFPAGO'
    end
    object CDSCajasGeneralCOTIZACION: TFloatField
      DisplayLabel = 'Cotz'
      FieldName = 'COTIZACION'
      Origin = 'COTIZACION'
      DisplayFormat = ',0.000'
    end
    object CDSCajasGeneralUNIDADES: TFloatField
      DisplayLabel = 'Unid.'
      FieldName = 'UNIDADES'
      Origin = 'UNIDADES'
    end
    object CDSCajasGeneralDESCRIPCION: TStringField
      DisplayLabel = 'Descripcion'
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 15
    end
    object CDSCajasGeneralNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 100
    end
    object CDSCajasGeneralSIGNO: TStringField
      DisplayLabel = 'Sig.'
      FieldName = 'SIGNO'
      Origin = 'SIGNO'
      Size = 5
    end
    object CDSCajasGeneralID_CTA_CAJA: TIntegerField
      DisplayLabel = 'Id.Cta Caja'
      FieldName = 'ID_CTA_CAJA'
      Origin = 'ID_CTA_CAJA'
    end
    object CDSCajasGeneralANIO: TFloatField
      DisplayLabel = 'A'#241'o'
      FieldName = 'ANIO'
      Origin = 'ANIO'
    end
    object CDSCajasGeneralMES: TIntegerField
      FieldName = 'MES'
      Origin = 'MES'
    end
    object CDSCajasGeneralFECHAINICIO: TSQLTimeStampField
      DisplayLabel = 'Fecha Incio'
      FieldName = 'FECHAINICIO'
      Origin = 'FECHAINICIO'
    end
    object CDSCajasGeneralFECHACIERRE: TSQLTimeStampField
      DisplayLabel = 'Fecha Cierre'
      FieldName = 'FECHACIERRE'
      Origin = 'FECHACIERRE'
    end
    object CDSCajasGeneralFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
    end
    object CDSCajasGeneralMUESTRAMES: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'MUESTRAMES'
      Size = 12
    end
  end
end

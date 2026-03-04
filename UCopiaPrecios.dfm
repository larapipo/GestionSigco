object FormCopiaPrecios: TFormCopiaPrecios
  Left = 167
  Top = 97
  Caption = 'Copiador de Precios'
  ClientHeight = 524
  ClientWidth = 1044
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
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1044
    Height = 425
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    object Label1: TLabel
      Left = 185
      Top = 367
      Width = 323
      Height = 26
      Caption = 
        'Este procedimiento Copia los precios, de ciertos Item de Referen' +
        'cia'#13#10'a los Sustitutos'
    end
    object Label2: TLabel
      Left = 586
      Top = 367
      Width = 136
      Height = 13
      Caption = 'Lista de Precio de referencia'
    end
    object dbgStock: TJvDBGrid
      Left = 8
      Top = 8
      Width = 1025
      Height = 353
      DataSource = DSArticulosCopia
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnColEnter = dbgStockColEnter
      OnDblClick = dbgStockDblClick
      OnEditButtonClick = dbgStockEditButtonClick
      OnKeyPress = dbgStockKeyPress
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          ButtonStyle = cbsEllipsis
          Color = clInfoBk
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'DETALLE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'COD_COPIA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRAARTCOPIA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RECARGO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object Button1: TButton
      Left = 8
      Top = 376
      Width = 75
      Height = 25
      Caption = 'Buscar'
      TabOrder = 1
      OnClick = Button1Click
    end
    object cbLista: TJvDBLookupCombo
      Left = 736
      Top = 367
      Width = 289
      Height = 21
      DisplayEmpty = 'Lista de Precio'
      EmptyValue = '-1'
      EmptyItemColor = clWhite
      LookupField = 'ID'
      LookupDisplay = 'NOMBRE'
      LookupSource = DSLista
      TabOrder = 2
    end
    object Button2: TButton
      Left = 904
      Top = 394
      Width = 121
      Height = 25
      Caption = 'Ejecutar Proc.'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object spCopiarPrecios: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'COPIAR_PRECIOS'
    Left = 672
    Top = 103
    ParamData = <
      item
        Position = 1
        Name = 'LISTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QListas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select  *  from LISTAPRECIOESPECIALCAB')
    Left = 64
    Top = 120
  end
  object CDSLista: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPLista'
    Left = 216
    Top = 120
    object CDSListaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSListaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object CDSListaRECARGOBASE: TFloatField
      FieldName = 'RECARGOBASE'
    end
    object CDSListaFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object CDSListaPORDEFECTO: TStringField
      FieldName = 'PORDEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSListaF_PAGO: TIntegerField
      FieldName = 'F_PAGO'
    end
    object CDSListaUSO_ADMINISTRADOR: TStringField
      FieldName = 'USO_ADMINISTRADOR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSListaCLONADA: TStringField
      FieldName = 'CLONADA'
      FixedChar = True
      Size = 1
    end
    object CDSListaID_LISTA_CLONADA: TIntegerField
      FieldName = 'ID_LISTA_CLONADA'
    end
    object CDSListaCOEFICIENTE: TFloatField
      FieldName = 'COEFICIENTE'
    end
    object CDSListaEXCLUSIVO_EFECTIVO: TStringField
      FieldName = 'EXCLUSIVO_EFECTIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSPLista: TDataSetProvider
    DataSet = QListas
    Options = []
    Left = 128
    Top = 120
  end
  object DSLista: TDataSource
    DataSet = CDSLista
    Left = 320
    Top = 120
  end
  object QArticulosCopia: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.*, st.detalle_stk as MuestraArtCopia from stock_copia_p' +
        'recio s'
      'left join stock st on st.codigo_stk=s.cod_copia'
      '')
    Left = 48
    Top = 440
    object QArticulosCopiaCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 8
    end
    object QArticulosCopiaDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 50
    end
    object QArticulosCopiaCOD_COPIA: TStringField
      FieldName = 'COD_COPIA'
      Size = 8
    end
    object QArticulosCopiaRECARGO: TFloatField
      FieldName = 'RECARGO'
    end
    object QArticulosCopiaMUESTRAARTCOPIA: TStringField
      FieldName = 'MUESTRAARTCOPIA'
      ProviderFlags = []
      Size = 45
    end
  end
  object CDSArticulosCopia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPArticulosCopias'
    AfterPost = CDSArticulosCopiaAfterPost
    AfterDelete = CDSArticulosCopiaAfterPost
    Left = 240
    Top = 440
    object CDSArticulosCopiaCODIGO: TStringField
      DisplayLabel = 'Codigo'
      DisplayWidth = 14
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      OnSetText = CDSArticulosCopiaCODIGOSetText
      Size = 8
    end
    object CDSArticulosCopiaDETALLE: TStringField
      DisplayLabel = 'Detalle'
      DisplayWidth = 61
      FieldName = 'DETALLE'
      Size = 50
    end
    object CDSArticulosCopiaCOD_COPIA: TStringField
      DisplayLabel = 'Cod.Ref.'
      DisplayWidth = 14
      FieldName = 'COD_COPIA'
      OnSetText = CDSArticulosCopiaCOD_COPIASetText
      Size = 8
    end
    object CDSArticulosCopiaRECARGO: TFloatField
      DisplayLabel = 'Coef.'
      DisplayWidth = 9
      FieldName = 'RECARGO'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSArticulosCopiaMUESTRAARTCOPIA: TStringField
      DisplayLabel = 'Articulo de Referencia'
      DisplayWidth = 62
      FieldName = 'MUESTRAARTCOPIA'
      ProviderFlags = []
      Size = 45
    end
  end
  object DSArticulosCopia: TDataSource
    DataSet = CDSArticulosCopia
    Left = 336
    Top = 440
  end
  object DSPArticulosCopias: TDataSetProvider
    DataSet = QArticulosCopia
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 144
    Top = 440
  end
  object DSPStock: TDataSetProvider
    DataSet = DMMain_FD.QStock
    Options = []
    Left = 592
    Top = 438
  end
  object CDSStock: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    ProviderName = 'DSPStock'
    Left = 656
    Top = 440
    object CDSStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object CDSStockDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object CDSStockDETALLE_STK_ADICIONAL: TStringField
      FieldName = 'DETALLE_STK_ADICIONAL'
      Origin = 'DETALLE_STK_ADICIONAL'
      Size = 200
    end
    object CDSStockCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'CODIGO_BARRAS'
      Size = 25
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
    object CDSStockMARCA_STK: TStringField
      FieldName = 'MARCA_STK'
      Origin = 'MARCA_STK'
      Size = 4
    end
    object CDSStockTASA_IVA: TIntegerField
      FieldName = 'TASA_IVA'
      Origin = 'TASA_IVA'
      Required = True
    end
    object CDSStockSOBRETASA_IVA: TIntegerField
      FieldName = 'SOBRETASA_IVA'
      Origin = 'SOBRETASA_IVA'
    end
    object CDSStockCOSTO_EXENTO_STK: TFloatField
      FieldName = 'COSTO_EXENTO_STK'
      Origin = 'COSTO_EXENTO_STK'
      Required = True
    end
    object CDSStockCOSTO_GRAVADO_STK: TFloatField
      FieldName = 'COSTO_GRAVADO_STK'
      Origin = 'COSTO_GRAVADO_STK'
      Required = True
    end
    object CDSStockCOSTO_TOTAL_STK: TFloatField
      FieldName = 'COSTO_TOTAL_STK'
      Origin = 'COSTO_TOTAL_STK'
      Required = True
    end
    object CDSStockREEMPLAZO_STK: TStringField
      FieldName = 'REEMPLAZO_STK'
      Origin = 'REEMPLAZO_STK'
      Required = True
    end
    object CDSStockFIJACION_PRECIO_GRAVADO: TFloatField
      FieldName = 'FIJACION_PRECIO_GRAVADO'
      Origin = 'FIJACION_PRECIO_GRAVADO'
      Required = True
    end
    object CDSStockFIJACION_PRECIO_EXENTO: TFloatField
      FieldName = 'FIJACION_PRECIO_EXENTO'
      Origin = 'FIJACION_PRECIO_EXENTO'
      Required = True
    end
    object CDSStockFIJACION_PRECIO_TOTAL: TFloatField
      FieldName = 'FIJACION_PRECIO_TOTAL'
      Origin = 'FIJACION_PRECIO_TOTAL'
      Required = True
    end
    object CDSStockFUAP: TSQLTimeStampField
      FieldName = 'FUAP'
      Origin = 'FUAP'
    end
    object CDSStockUNIDAD: TStringField
      FieldName = 'UNIDAD'
      Origin = 'UNIDAD'
      Size = 3
    end
    object CDSStockCONTROLASTOCK: TStringField
      FieldName = 'CONTROLASTOCK'
      Origin = 'CONTROLASTOCK'
      Required = True
      Size = 1
    end
    object CDSStockCODIGO_PROVEEDOR: TStringField
      FieldName = 'CODIGO_PROVEEDOR'
      Origin = 'CODIGO_PROVEEDOR'
      Size = 10
    end
    object CDSStockCLASE_ARTICULO: TIntegerField
      FieldName = 'CLASE_ARTICULO'
      Origin = 'CLASE_ARTICULO'
    end
    object CDSStockMODO_GRAVAMEN: TStringField
      FieldName = 'MODO_GRAVAMEN'
      Origin = 'MODO_GRAVAMEN'
      Size = 1
    end
    object CDSStockCON_IMP_INT: TStringField
      FieldName = 'CON_IMP_INT'
      Origin = 'CON_IMP_INT'
      Size = 1
    end
    object CDSStockIMPUESTO_INTERNOS: TFloatField
      FieldName = 'IMPUESTO_INTERNOS'
      Origin = 'IMPUESTO_INTERNOS'
    end
    object CDSStockGRAVADO_IB: TStringField
      FieldName = 'GRAVADO_IB'
      Origin = 'GRAVADO_IB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockTASA_IB: TIntegerField
      FieldName = 'TASA_IB'
      Origin = 'TASA_IB'
      Required = True
    end
    object CDSStockACTUALIZACOSTO: TStringField
      FieldName = 'ACTUALIZACOSTO'
      Origin = 'ACTUALIZACOSTO'
      FixedChar = True
      Size = 1
    end
    object CDSStockDEPRODUCCION: TStringField
      FieldName = 'DEPRODUCCION'
      Origin = 'DEPRODUCCION'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockPRODUCCIONDIRECTA: TStringField
      FieldName = 'PRODUCCIONDIRECTA'
      Origin = 'PRODUCCIONDIRECTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockUNIDAD_COMPRA: TStringField
      FieldName = 'UNIDAD_COMPRA'
      Origin = 'UNIDAD_COMPRA'
      Size = 3
    end
    object CDSStockCONTENIDO_COMPRA: TFloatField
      FieldName = 'CONTENIDO_COMPRA'
      Origin = 'CONTENIDO_COMPRA'
      Required = True
    end
    object CDSStockCONTROL_SERIE: TStringField
      FieldName = 'CONTROL_SERIE'
      Origin = 'CONTROL_SERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockUSA_CODIGOBARRA: TStringField
      FieldName = 'USA_CODIGOBARRA'
      Origin = 'USA_CODIGOBARRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockUNIDAD_ULTIMAUSADA: TStringField
      FieldName = 'UNIDAD_ULTIMAUSADA'
      Origin = 'UNIDAD_ULTIMAUSADA'
      Size = 3
    end
    object CDSStockID_TABLAPRECIOS: TIntegerField
      FieldName = 'ID_TABLAPRECIOS'
      Origin = 'ID_TABLAPRECIOS'
    end
    object CDSStockID_TABLAPRECIOSDETALLE: TIntegerField
      FieldName = 'ID_TABLAPRECIOSDETALLE'
      Origin = 'ID_TABLAPRECIOSDETALLE'
    end
    object CDSStockCODIGO_PRECIO: TIntegerField
      FieldName = 'CODIGO_PRECIO'
      Origin = 'CODIGO_PRECIO'
    end
    object CDSStockFECHA_ALTA: TSQLTimeStampField
      FieldName = 'FECHA_ALTA'
      Origin = 'FECHA_ALTA'
    end
    object CDSStockCOSTO_GRAVADO_SOMBRA: TFloatField
      FieldName = 'COSTO_GRAVADO_SOMBRA'
      Origin = 'COSTO_GRAVADO_SOMBRA'
      Required = True
    end
    object CDSStockCOSTO_EXENTO_SOMBRA: TFloatField
      FieldName = 'COSTO_EXENTO_SOMBRA'
      Origin = 'COSTO_EXENTO_SOMBRA'
      Required = True
    end
    object CDSStockFECHA_ACT_SOMBRA: TSQLTimeStampField
      FieldName = 'FECHA_ACT_SOMBRA'
      Origin = 'FECHA_ACT_SOMBRA'
    end
    object CDSStockFECHA_ULTIMAVTA: TSQLTimeStampField
      FieldName = 'FECHA_ULTIMAVTA'
      Origin = 'FECHA_ULTIMAVTA'
    end
    object CDSStockMONEDA: TIntegerField
      FieldName = 'MONEDA'
      Origin = 'MONEDA'
      Required = True
    end
    object CDSStockCOSTO_GRAVADO_P: TFloatField
      FieldName = 'COSTO_GRAVADO_P'
      Origin = 'COSTO_GRAVADO_P'
      Required = True
    end
    object CDSStockCOSTO_EXENTO_P: TFloatField
      FieldName = 'COSTO_EXENTO_P'
      Origin = 'COSTO_EXENTO_P'
      Required = True
    end
    object CDSStockCOSTO_TOTAL_P: TFloatField
      FieldName = 'COSTO_TOTAL_P'
      Origin = 'COSTO_TOTAL_P'
      Required = True
    end
    object CDSStockPOSICION: TStringField
      FieldName = 'POSICION'
      Origin = 'POSICION'
      Size = 10
    end
    object CDSStockPRESENTACION_UNIDAD: TStringField
      FieldName = 'PRESENTACION_UNIDAD'
      Origin = 'PRESENTACION_UNIDAD'
      Size = 3
    end
    object CDSStockPRESENTACION_CANTIDAD: TFloatField
      FieldName = 'PRESENTACION_CANTIDAD'
      Origin = 'PRESENTACION_CANTIDAD'
      Required = True
    end
    object CDSStockEDITAPRECIO: TStringField
      FieldName = 'EDITAPRECIO'
      Origin = 'EDITAPRECIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockEDITADETALLE: TStringField
      FieldName = 'EDITADETALLE'
      Origin = 'EDITADETALLE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSStockURL: TStringField
      FieldName = 'URL'
      Origin = 'URL'
      Size = 250
    end
    object CDSStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField
      FieldName = 'FECHA_ULTIMA_COMPRA'
      Origin = 'FECHA_ULTIMA_COMPRA'
    end
    object CDSStockMUESTRARUBRO: TStringField
      FieldName = 'MUESTRARUBRO'
      Origin = 'DETALLE_RUBRO'
      ProviderFlags = []
      Size = 35
    end
    object CDSStockMUESTRASUBRUBRO: TStringField
      FieldName = 'MUESTRASUBRUBRO'
      Origin = 'DETALLE_SUBRUBRO'
      ProviderFlags = []
      Size = 45
    end
    object CDSStockMUESTRAMARCA: TStringField
      FieldName = 'MUESTRAMARCA'
      Origin = 'DESCRIPCION_MARCA'
      ProviderFlags = []
      Size = 25
    end
    object CDSStockMUESTRATASA: TStringField
      FieldName = 'MUESTRATASA'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 15
    end
    object CDSStockMUESTRATASAPORCENTAJE: TFloatField
      FieldName = 'MUESTRATASAPORCENTAJE'
      Origin = 'TASA'
      ProviderFlags = []
    end
    object CDSStockMUESTRASOBRETASA: TStringField
      FieldName = 'MUESTRASOBRETASA'
      Origin = 'DESCRIPCION'
      ProviderFlags = []
      Size = 15
    end
    object CDSStockMUESTRASOBRETASAPROCENTAJE: TFloatField
      FieldName = 'MUESTRASOBRETASAPROCENTAJE'
      Origin = 'TASA'
      ProviderFlags = []
    end
    object CDSStockMUESTRATASAIB: TFloatField
      FieldName = 'MUESTRATASAIB'
      Origin = 'TASA'
      ProviderFlags = []
    end
    object CDSStockMUESTRATABLAPRECIODETALLE: TStringField
      FieldName = 'MUESTRATABLAPRECIODETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 40
    end
    object CDSStockMUESTRATABLAPRECIO1: TFloatField
      FieldName = 'MUESTRATABLAPRECIO1'
      Origin = 'PRECIO1'
      ProviderFlags = []
    end
    object CDSStockMUESTRATABLAPRECIO2: TFloatField
      FieldName = 'MUESTRATABLAPRECIO2'
      Origin = 'PRECIO1'
      ProviderFlags = []
    end
  end
  object ActionList: TActionList
    Left = 672
    Top = 152
    object BuscarArticulos: TAction
      Caption = 'BuscarArticulos'
      OnExecute = BuscarArticulosExecute
    end
  end
end

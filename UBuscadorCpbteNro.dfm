object FormBuscadorComprobNro: TFormBuscadorComprobNro
  Left = 414
  Top = 182
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Buscador Comprobante'
  ClientHeight = 420
  ClientWidth = 595
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
  OnShow = FormShow
  TextHeight = 13
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 595
    Height = 297
    Align = alTop
    Color = clGradientActiveCaption
    ParentBackground = False
    TabOrder = 0
    object dbgComprobantes: TJvDBGrid
      Left = 1
      Top = 1
      Width = 593
      Height = 295
      Align = alClient
      DataSource = DSBuscador
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleButtons = True
      OnTitleBtnClick = dbgComprobantesTitleBtnClick
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_COMPROBANTE'
          Title.Alignment = taCenter
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_COMPROB'
          Title.Alignment = taCenter
          Width = 41
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLASE_COMPROB'
          Title.Alignment = taCenter
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LETRA'
          Title.Alignment = taCenter
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PREFIJO'
          Title.Alignment = taCenter
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Title.Alignment = taCenter
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MUESTRASUCURSAL'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 297
    Width = 595
    Height = 64
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 1
    object JvDBStatusLabel1: TJvDBStatusLabel
      Left = 495
      Top = 41
      Width = 96
      Height = 13
      DataSource = DSBuscador
      Style = lsRecordNo
      Transparent = True
    end
    object btBuscar: TBitBtn
      Left = 333
      Top = 10
      Width = 75
      Height = 25
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
      OnClick = btBuscarClick
    end
    object btCancelar: TBitBtn
      Left = 414
      Top = 10
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancelar'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      ModalResult = 2
      NumGlyphs = 2
      TabOrder = 1
    end
    object btAceptar: TBitBtn
      Left = 495
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Aceptar'
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
      TabOrder = 2
      OnClick = btAceptarClick
    end
    object dbcSucursal: TJvDBLookupCombo
      Left = 16
      Top = 14
      Width = 233
      Height = 21
      DisplayEmpty = 'Todas las Sucursales'
      EmptyValue = '-1'
      LookupField = 'CODIGO'
      LookupDisplay = 'DETALLE'
      LookupSource = DSSucursal
      TabOrder = 3
      OnChange = dbcSucursalChange
    end
    object chbTodos: TCheckBox
      Left = 333
      Top = 41
      Width = 97
      Height = 17
      Caption = 'Traer Todos'
      TabOrder = 4
      OnClick = chbTodosClick
    end
  end
  object CDSBuscadorComp: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Tipo'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'TipoComprob1'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'TipoComprob2'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBuscadorComp'
    Left = 325
    Top = 64
    object CDSBuscadorCompMUESTRASUCURSAL: TStringField
      DisplayLabel = 'Sucursal'
      DisplayWidth = 35
      FieldName = 'MUESTRASUCURSAL'
      Origin = 'DETALLE'
      ProviderFlags = []
      Size = 35
    end
    object CDSBuscadorCompTIPO_COMPROB: TStringField
      DisplayLabel = 'Tip.'
      DisplayWidth = 2
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object CDSBuscadorCompCLASE_COMPROB: TStringField
      DisplayLabel = 'Cla.'
      DisplayWidth = 2
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object CDSBuscadorCompDETALLE: TStringField
      DisplayLabel = 'Tipo Comp.'
      DisplayWidth = 20
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
    end
    object CDSBuscadorCompDENOMINACION: TStringField
      DisplayLabel = 'Denominaci'#243'n'
      DisplayWidth = 15
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object CDSBuscadorCompLETRA: TStringField
      Alignment = taCenter
      DisplayLabel = 'Letra'
      DisplayWidth = 5
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object CDSBuscadorCompPREFIJO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Prefijo'
      DisplayWidth = 4
      FieldName = 'PREFIJO'
      Origin = 'PREFIJO'
      Size = 4
    end
    object CDSBuscadorCompNUMERO: TStringField
      Alignment = taCenter
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 8
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object CDSBuscadorCompCOMPRA_VENTA: TStringField
      DisplayLabel = 'C / V'
      DisplayWidth = 1
      FieldName = 'COMPRA_VENTA'
      Origin = 'COMPRA_VENTA'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscadorCompID_COMPROBANTE: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object CDSBuscadorCompSUCURSAL: TIntegerField
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
      Visible = False
    end
    object CDSBuscadorCompNUMERARCION_PROPIA: TStringField
      FieldName = 'NUMERARCION_PROPIA'
      Origin = 'NUMERARCION_PROPIA'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscadorCompTOMA_NRO_DE: TIntegerField
      FieldName = 'TOMA_NRO_DE'
      Origin = 'TOMA_NRO_DE'
      Visible = False
    end
    object CDSBuscadorCompAFECTA_IVA: TStringField
      FieldName = 'AFECTA_IVA'
      Origin = 'AFECTA_IVA'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscadorCompAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Origin = 'AFECTA_CC'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscadorCompDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Origin = 'DESGLOZA_IVA'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscadorCompCOPIAS: TIntegerField
      FieldName = 'COPIAS'
      Origin = 'COPIAS'
      Visible = False
    end
    object CDSBuscadorCompREPORTE: TStringField
      FieldName = 'REPORTE'
      Origin = 'REPORTE'
      Visible = False
      Size = 100
    end
    object CDSBuscadorCompIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Origin = 'IMPRIME'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscadorCompFISCAL: TStringField
      FieldName = 'FISCAL'
      Origin = 'FISCAL'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscadorCompNOMBREIMPRESORA: TStringField
      FieldName = 'NOMBREIMPRESORA'
      Origin = 'NOMBREIMPRESORA'
      Visible = False
      Size = 15
    end
    object CDSBuscadorCompPENDIENTEIMPRESION: TStringField
      FieldName = 'PENDIENTEIMPRESION'
      Origin = 'PENDIENTEIMPRESION'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscadorCompLINEAS_DETALLE: TSmallintField
      FieldName = 'LINEAS_DETALLE'
      Origin = 'LINEAS_DETALLE'
      Required = True
      Visible = False
    end
    object CDSBuscadorCompCALCULA_IVA_ARTICULOS: TStringField
      FieldName = 'CALCULA_IVA_ARTICULOS'
      Origin = 'CALCULA_IVA_ARTICULOS'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
    object CDSBuscadorCompDEFECTO: TStringField
      FieldName = 'DEFECTO'
      Origin = 'DEFECTO'
      Required = True
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object DSPBuscadorComp: TDataSetProvider
    DataSet = QBuscadorCo
    Left = 237
    Top = 80
  end
  object DSBuscador: TDataSource
    DataSet = CDSBuscadorComp
    Left = 392
    Top = 112
  end
  object DSSucursal: TDataSource
    DataSet = QSucursal
    Left = 176
    Top = 312
  end
  object QSucursal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from sucursal ')
    Left = 80
    Top = 312
    object QSucursalCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QSucursalDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 35
    end
    object QSucursalDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
    end
    object QSucursalLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Origin = 'LOCALIDAD'
    end
  end
  object QBuscadorCo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.*, s.detalle as MuestraSucursal,t.detalle from comproba' +
        'ntes c'
      'left join sucursal s on s.codigo=c.sucursal'
      'left join tipo_comprobante t on t.sigla=c.tipo_comprob'
      'where c.id_comprobante<>:id and c.compra_venta=:Tipo and '
      
        '((c.Tipo_comprob = :TipoComprob1 or :tipoComprob1='#39'XX'#39') or (c.Ti' +
        'po_comprob = :TipoComprob2 or :tipoComprob2='#39'XX'#39' ))'
      'and c.NUMERARCION_PROPIA='#39'S'#39
      'order by c.sucursal, c.compra_venta,c.tipo_comprob')
    Left = 80
    Top = 104
    ParamData = <
      item
        Position = 1
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 2
        Name = 'Tipo'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'TipoComprob1'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Position = 4
        Name = 'TipoComprob2'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end>
  end
end

object FormBuscadorComprobantes: TFormBuscadorComprobantes
  Left = 464
  Top = 139
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Buscador de Comprobantes'
  ClientHeight = 559
  ClientWidth = 814
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = BuscarExecute
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 8
    Width = 809
    Height = 425
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object dbgComprobantes: TJvDBGrid
      Left = 1
      Top = 65
      Width = 807
      Height = 311
      Align = alClient
      DataSource = DSComprobantes
      DefaultDrawing = False
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawDataCell = dbgComprobantesDrawDataCell
      OnDrawColumnCell = dbgComprobantesDrawColumnCell
      OnDblClick = AceptarExecute
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      OnCheckIfBooleanField = dbgComprobantesCheckIfBooleanField
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_COMPROBANTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'SUCURSAL'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_AFIP'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 52
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DETALLE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 119
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DENOMINACION'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_COMPROB'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 32
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLASE_COMPROB'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 29
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LETRA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PREFIJO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FISCAL'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FACTURAELECTRONICA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EN_USO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 41
          Visible = True
        end>
    end
    object pnPie: TPanel
      Left = 1
      Top = 376
      Width = 807
      Height = 48
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 1
      object BitBtn1: TBitBtn
        Left = 556
        Top = 12
        Width = 75
        Height = 25
        Action = Buscar
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
      end
      object BitBtn2: TBitBtn
        Left = 637
        Top = 12
        Width = 75
        Height = 25
        Action = Cancelar
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
      object BitBtn3: TBitBtn
        Left = 718
        Top = 12
        Width = 75
        Height = 25
        Action = Aceptar
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
      end
    end
    object pnCabecera: TPanel
      Left = 1
      Top = 1
      Width = 807
      Height = 64
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 2
      object Label1: TLabel
        Left = 18
        Top = 8
        Width = 67
        Height = 16
        Caption = 'Sucursales'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 217
        Top = 8
        Width = 146
        Height = 16
        Caption = 'Tipos de Comprobantes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dbcSucursales: TJvDBLookupCombo
        Left = 18
        Top = 27
        Width = 183
        Height = 21
        DropDownCount = 15
        DropDownWidth = 200
        DisplayEmpty = 'Todas Las Sucursales'
        EmptyValue = '-1'
        LookupField = 'CODIGO'
        LookupDisplay = 'DETALLE'
        LookupSource = DSSucursal
        TabOrder = 0
        OnClick = BuscarExecute
      end
      object dbcTipos: TJvDBLookupCombo
        Left = 217
        Top = 27
        Width = 189
        Height = 21
        DropDownCount = 15
        DropDownWidth = 200
        DisplayEmpty = 'Todos Los Tipo'
        EmptyValue = '**'
        LookupField = 'SIGLA'
        LookupDisplay = 'DETALLE'
        LookupSource = DSTipo
        TabOrder = 1
        OnClick = BuscarExecute
      end
      object rgTipo: TAdvOfficeRadioGroup
        Left = 534
        Top = 2
        Width = 155
        Height = 57
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -12
        CaptionFont.Name = 'Segoe UI'
        CaptionFont.Style = []
        Version = '1.8.4.2'
        Caption = 'Compra / Venta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentCtl3D = True
        ParentFont = False
        TabOrder = 2
        OnClick = BuscarExecute
        Items.Strings = (
          'Compra'
          'Venta')
        Themed = True
        Ellipsis = False
      end
    end
  end
  object DSComprobantes: TDataSource
    DataSet = QComprobantes
    Left = 128
    Top = 216
  end
  object DSSucursal: TDataSource
    DataSet = QSucursal
    Left = 384
    Top = 240
  end
  object DSTipo: TDataSource
    DataSet = QTipo
    Left = 384
    Top = 176
  end
  object ActionList1: TActionList
    Left = 480
    Top = 160
    object Buscar: TAction
      Caption = 'Buscar'
      OnExecute = BuscarExecute
    end
    object Cancelar: TAction
      Caption = 'Cancelar'
      OnExecute = CancelarExecute
    end
    object Aceptar: TAction
      Caption = 'Aceptar'
      OnExecute = AceptarExecute
    end
  end
  object QComprobantes: TFDQuery
    OnCalcFields = QComprobantesCalcFields
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select c.sucursal,s.detalle,c.tipo_comprob,c.clase_comprob,c.den' +
        'ominacion,'
      
        ' c.letra,c.prefijo,c.numero,c.fiscal,c.compra_venta,c.id_comprob' +
        'ante,c.defecto,'
      ' c.en_uso,c.facturaelectronica,c.codigo_afip from comprobantes c'
      'left join sucursal s on s.codigo=c.sucursal'
      'where ((c.sucursal=:sucursal) or (:sucursal = -1)) and'
      '      ((c.tipo_comprob=:tipo) or (:tipo = '#39'**'#39')) and'
      '      (c.compra_venta= :compra_vta)'
      
        'order by c.sucursal,c.compra_venta,c.tipo_comprob,c.clase_compro' +
        'b')
    Left = 56
    Top = 216
    ParamData = <
      item
        Name = 'SUCURSAL'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TIPO'
        DataType = ftString
        ParamType = ptInput
        Size = 2
      end
      item
        Name = 'COMPRA_VTA'
        DataType = ftString
        ParamType = ptInput
        Size = 1
        Value = Null
      end>
    object QComprobantesSUCURSAL: TIntegerField
      DisplayLabel = 'Suc.'
      FieldName = 'SUCURSAL'
      Origin = 'SUCURSAL'
    end
    object QComprobantesDETALLE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object QComprobantesTIPO_COMPROB: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tp'
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QComprobantesCLASE_COMPROB: TStringField
      Alignment = taCenter
      DisplayLabel = 'Cl'
      FieldName = 'CLASE_COMPROB'
      Origin = 'CLASE_COMPROB'
      Required = True
      Size = 2
    end
    object QComprobantesDENOMINACION: TStringField
      DisplayLabel = 'Denominacion'
      FieldName = 'DENOMINACION'
      Origin = 'DENOMINACION'
      Size = 15
    end
    object QComprobantesLETRA: TStringField
      Alignment = taCenter
      DisplayLabel = 'Letra'
      FieldName = 'LETRA'
      Origin = 'LETRA'
      FixedChar = True
      Size = 1
    end
    object QComprobantesPREFIJO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Suc'
      FieldName = 'PREFIJO'
      Origin = 'PREFIJO'
      Size = 4
    end
    object QComprobantesNUMERO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Numero'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 8
    end
    object QComprobantesFISCAL: TStringField
      Alignment = taCenter
      DisplayLabel = 'Fiscal'
      FieldName = 'FISCAL'
      Origin = 'FISCAL'
      Required = True
      OnGetText = QComprobantesFISCALGetText
      FixedChar = True
      Size = 1
    end
    object QComprobantesCOMPRA_VENTA: TStringField
      FieldName = 'COMPRA_VENTA'
      Origin = 'COMPRA_VENTA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesID_COMPROBANTE: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QComprobantesDEFECTO: TStringField
      Alignment = taCenter
      FieldName = 'DEFECTO'
      Origin = 'DEFECTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QComprobantesEN_USO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Activo'
      FieldName = 'EN_USO'
      Origin = 'EN_USO'
      Required = True
      OnGetText = QComprobantesEN_USOGetText
      FixedChar = True
      Size = 1
    end
    object QComprobantesFACTURAELECTRONICA: TStringField
      Alignment = taCenter
      DisplayLabel = 'Electr.'
      FieldName = 'FACTURAELECTRONICA'
      Origin = 'FACTURAELECTRONICA'
      Required = True
      OnGetText = QComprobantesFACTURAELECTRONICAGetText
      FixedChar = True
      Size = 1
    end
    object QComprobantesCODIGO_AFIP: TStringField
      Alignment = taCenter
      DisplayLabel = 'Cd.Afip'
      FieldName = 'CODIGO_AFIP'
      Origin = 'CODIGO_AFIP'
      Size = 3
    end
    object QComprobantesENUSOBOOLEAN: TBooleanField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = 'ENUSOBOOLEAN'
      Calculated = True
    end
  end
  object QSucursal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.* from sucursal s ')
    Left = 312
    Top = 248
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
    object QSucursalTELEFONO1: TStringField
      FieldName = 'TELEFONO1'
      Origin = 'TELEFONO1'
      Size = 15
    end
    object QSucursalTELEFONO2: TStringField
      FieldName = 'TELEFONO2'
      Origin = 'TELEFONO2'
      Size = 15
    end
  end
  object QTipo: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.* from Tipo_comprobante t order by t.detalle')
    Left = 304
    Top = 168
    object QTipoID_TIPO: TIntegerField
      FieldName = 'ID_TIPO'
      Origin = 'ID_TIPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTipoDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
    end
    object QTipoSIGLA: TStringField
      FieldName = 'SIGLA'
      Origin = 'SIGLA'
      Size = 2
    end
    object QTipoDESGLOZA_IVA: TStringField
      FieldName = 'DESGLOZA_IVA'
      Origin = 'DESGLOZA_IVA'
      FixedChar = True
      Size = 1
    end
    object QTipoAFECTA_CC: TStringField
      FieldName = 'AFECTA_CC'
      Origin = 'AFECTA_CC'
      FixedChar = True
      Size = 1
    end
    object QTipoAFECTA_LIBRO_IVA: TStringField
      FieldName = 'AFECTA_LIBRO_IVA'
      Origin = 'AFECTA_LIBRO_IVA'
      FixedChar = True
      Size = 1
    end
    object QTipoTIPO_DE_OPERACION: TStringField
      FieldName = 'TIPO_DE_OPERACION'
      Origin = 'TIPO_DE_OPERACION'
      FixedChar = True
      Size = 1
    end
  end
end

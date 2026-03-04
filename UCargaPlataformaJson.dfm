object FormCargaPlataformaJSon: TFormCargaPlataformaJSon
  Left = 0
  Top = 0
  Caption = 'Carga Plataforma JSon'
  ClientHeight = 657
  ClientWidth = 658
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  Position = poOwnerFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 658
    Height = 657
    ActivePage = pagMovimientos
    Align = alClient
    TabOrder = 0
    object pagMovimientos: TTabSheet
      Caption = 'Movimientos'
      object sgCajaJson: TStringGrid
        Left = 0
        Top = 49
        Width = 650
        Height = 415
        Align = alClient
        ColCount = 2
        FixedCols = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goFixedRowDefAlign]
        TabOrder = 0
        ColWidths = (
          305
          294)
      end
      object pnPieMov: TPanel
        Left = 0
        Top = 464
        Width = 650
        Height = 163
        Align = alBottom
        TabOrder = 1
        DesignSize = (
          650
          163)
        object Label1: TLabel
          Left = 8
          Top = 6
          Width = 73
          Height = 17
          Caption = 'Cta. de Caja'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LeeArchivo: TButton
          Left = 520
          Top = 6
          Width = 112
          Height = 27
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Leer Archivo'
          TabOrder = 0
          OnClick = LeeArchivoClick
        end
        object dbcCtas: TJvDBLookupCombo
          Left = 8
          Top = 29
          Width = 258
          Height = 25
          DropDownWidth = 300
          DisplayEmpty = 'Seleccionar caja'
          EmptyValue = '-1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'ID_CUENTA_CAJA'
          LookupDisplay = 'MUESTRACAJA;NUMEROCAJA'
          LookupSource = DSCaja
          ParentFont = False
          TabOrder = 1
        end
        object BitBtn1: TBitBtn
          Left = 432
          Top = 96
          Width = 200
          Height = 49
          Action = AgregarFactura
          Caption = 'Agregar ZETA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
      object pnCabMov: TPanel
        Left = 0
        Top = 0
        Width = 650
        Height = 49
        Align = alTop
        BevelOuter = bvNone
        Color = clMenuHighlight
        ParentBackground = False
        TabOrder = 2
        object Label2: TLabel
          Left = 236
          Top = 15
          Width = 123
          Height = 20
          Caption = 'Sucursal de Venta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbcSucursal: TJvDBLookupCombo
          Left = 374
          Top = 14
          Width = 258
          Height = 25
          DropDownWidth = 300
          DisplayEmpty = 'Seleccionar Sucursal'
          EmptyValue = '-1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'CODIGO'
          LookupDisplay = 'DETALLE'
          LookupSource = DSSucursal
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object pagConfiguracion: TTabSheet
      Caption = 'Configuracion'
      ImageIndex = 1
      object Label3: TLabel
        Left = 14
        Top = 24
        Width = 57
        Height = 15
        Caption = 'Cliente C.F'
        ParentShowHint = False
        ShowHint = True
      end
      object ceCliente: TJvComboEdit
        Left = 14
        Top = 41
        Width = 73
        Height = 23
        ButtonWidth = 16
        ClickKey = 16397
        Glyph.Data = {
          4E000000424D4E000000000000003E000000280000000A000000040000000100
          010000000000100000000000000000000000020000000200000000000000FFFF
          FF00FFC000003300000033000000FFC00000}
        TabOrder = 0
        Text = ''
        OnButtonClick = ceClienteButtonClick
      end
      object edNombreCliente: TEdit
        Left = 93
        Top = 41
        Width = 257
        Height = 23
        Color = clInfoBk
        Enabled = False
        TabOrder = 1
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 816
    Top = 280
  end
  object DSCaja: TDataSource
    DataSet = QCajas
    Left = 532
    Top = 200
  end
  object QCajas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'Select c.id_caja, c.id_cuenta_caja,c.numerocaja,cta.nombre as Mu' +
        'estraCaja from caja_cab c'
      'left join cuenta_caja cta on cta.id_cuenta=c.id_cuenta_caja'
      'where estado=0 and cta.id_tipo_cta=1')
    Left = 384
    Top = 312
    object QCajasID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Origin = 'ID_CAJA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCajasID_CUENTA_CAJA: TIntegerField
      FieldName = 'ID_CUENTA_CAJA'
      Origin = 'ID_CUENTA_CAJA'
      Required = True
    end
    object QCajasNUMEROCAJA: TIntegerField
      FieldName = 'NUMEROCAJA'
      Origin = 'NUMEROCAJA'
    end
    object QCajasMUESTRACAJA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACAJA'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
  end
  object QSucursal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select codigo,detalle from sucursal')
    Left = 156
    Top = 290
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
  end
  object DSSucursal: TDataSource
    DataSet = QSucursal
    Left = 236
    Top = 250
  end
  object QReferencias: TFDQuery
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.tarjeta,t.tc_gestion from tabla_referencia_plataforma t')
    Left = 152
    Top = 376
    object QReferenciasTARJETA: TStringField
      FieldName = 'TARJETA'
      Origin = 'TARJETA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object QReferenciasTC_GESTION: TIntegerField
      FieldName = 'TC_GESTION'
      Origin = 'TC_GESTION'
      Required = True
    end
  end
  object QClientes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select c.codigo,c.nombre from  clientes c where c.codigo=:codigo')
    Left = 548
    Top = 416
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QClientesCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QClientesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
  end
  object QConceptos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from TABLA_CONCEPTOS_PLATAFORMA')
    Left = 420
    Top = 434
    object QConceptosCONCEPTO: TStringField
      FieldName = 'CONCEPTO'
      Origin = 'CONCEPTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object QConceptosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
  end
  object ActionList1: TActionList
    Left = 556
    Top = 290
    object AgregarFactura: TAction
      Caption = 'Agregar Factura'
      OnExecute = AgregarFacturaExecute
    end
  end
end

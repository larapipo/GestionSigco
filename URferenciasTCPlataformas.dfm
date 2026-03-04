inherited FormRef_TCPlataformas: TFormRef_TCPlataformas
  Caption = 'Referencias de T.Credito Plataformas'
  ClientHeight = 799
  ClientWidth = 1222
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1240
  ExplicitHeight = 840
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1222
    Height = 633
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1222
    ExplicitHeight = 633
    object Splitter1: TSplitter
      Left = 540
      Top = 41
      Height = 592
      ExplicitLeft = 1048
      ExplicitTop = 105
    end
    object pnTarjetas: TPanel
      Left = 0
      Top = 41
      Width = 540
      Height = 592
      Align = alLeft
      TabOrder = 0
      object dbgReferencias: TDBGrid
        Left = 1
        Top = 1
        Width = 538
        Height = 568
        Align = alTop
        DataSource = DSReferencias
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'TARJETA'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 315
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MUESTRATARJETA'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 187
            Visible = True
          end>
      end
    end
    object pnConceptos: TPanel
      Left = 543
      Top = 41
      Width = 679
      Height = 592
      Align = alClient
      TabOrder = 1
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 677
        Height = 24
        Align = alTop
        Caption = 'Conceptos'
        TabOrder = 0
      end
      object dbgArticulos: TDBGrid
        Left = 1
        Top = 25
        Width = 677
        Height = 120
        Align = alTop
        DataSource = DSConceptos
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnEditButtonClick = dbgArticulosEditButtonClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CONCEPTO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'CODIGO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DETALLE_STK'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 1222
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Configuraciones de Plataformas'
      Color = clMenuHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
    end
  end
  inherited ToolBar1: TToolBar
    Top = 633
    Width = 1222
    ButtonHeight = 27
    ExplicitTop = 633
    ExplicitWidth = 1222
    inherited btConfirma: TBitBtn
      Height = 27
      DoubleBuffered = True
      Visible = False
      ExplicitHeight = 27
    end
    inherited btNuevo: TBitBtn
      Height = 27
      DoubleBuffered = True
      Visible = False
      ExplicitHeight = 27
    end
    inherited btCancelar: TBitBtn
      Height = 27
      DoubleBuffered = True
      Visible = False
      ExplicitHeight = 27
    end
    inherited btModificar: TBitBtn
      Height = 27
      DoubleBuffered = True
      Visible = False
      ExplicitHeight = 27
    end
    inherited Pr: TSpeedButton
      Height = 27
      Visible = False
      ExplicitHeight = 27
    end
    inherited btBuscar: TBitBtn
      Height = 27
      DoubleBuffered = True
      Visible = False
      ExplicitHeight = 27
    end
    inherited Ne: TSpeedButton
      Height = 27
      Visible = False
      ExplicitHeight = 27
    end
    inherited btBorrar: TBitBtn
      Height = 27
      DoubleBuffered = True
      Visible = False
      ExplicitHeight = 27
    end
    inherited btSalir: TBitBtn
      Height = 27
      DoubleBuffered = True
      ExplicitHeight = 27
    end
  end
  inherited Panel1: TPanel
    Top = 663
    Width = 1222
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 663
    ExplicitWidth = 1222
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 1133
      ExplicitWidth = 1133
    end
  end
  inherited ActionList1: TActionList
    Left = 424
    Top = 32
  end
  inherited DSBase: TDataSource
    Left = 136
    Top = 224
  end
  inherited ImageList1: TImageList
    Left = 176
    Top = 24
  end
  inherited QBrowse: TSQLQuery
    Top = 736
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 96
    Top = 752
  end
  inherited ComBuscadorBase: TComBuscador
    Left = 312
    Top = 208
  end
  inherited QBrowse2: TFDQuery
    Left = 176
    Top = 736
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 104
    Top = 688
  end
  object QReferencias: TFDQuery
    AfterPost = QReferenciasAfterPost
    AfterDelete = QReferenciasAfterDelete
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.tarjeta,t.tc_gestion from tabla_referencia_plataforma t')
    Left = 160
    Top = 360
    object QReferenciasTARJETA: TStringField
      DisplayLabel = 'Detalle de Referencia'
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
    object QReferenciasMUESTRATARJETA: TStringField
      DisplayLabel = 'Tarjeta de Credto'
      FieldKind = fkLookup
      FieldName = 'MUESTRATARJETA'
      LookupDataSet = QTarjetas
      LookupKeyFields = 'ID_TC'
      LookupResultField = 'DESCRIPCION'
      KeyFields = 'TC_GESTION'
      Size = 15
      Lookup = True
    end
  end
  object QTarjetas: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.id_tc,t.descripcion,t.visible from t_credito t '
      'order by t.descripcion')
    Left = 416
    Top = 360
    object QTarjetasID_TC: TIntegerField
      FieldName = 'ID_TC'
      Origin = 'ID_TC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTarjetasDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 15
    end
    object QTarjetasVISIBLE: TStringField
      FieldName = 'VISIBLE'
      Origin = 'VISIBLE'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSReferencias: TDataSource
    DataSet = QReferencias
    Left = 336
    Top = 360
  end
  object QConceptos: TFDQuery
    AfterPost = QConceptosAfterPost
    AfterDelete = QConceptosAfterDelete
    CachedUpdates = True
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select t.concepto,t.codigo,s.detalle_stk from TABLA_CONCEPTOS_PL' +
        'ATAFORMA t'
      'left join stock s on s.codigo_stk=t.codigo')
    Left = 160
    Top = 448
    object QConceptosCONCEPTO: TStringField
      DisplayLabel = 'Concepto'
      FieldName = 'CONCEPTO'
      Origin = 'CONCEPTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object QConceptosCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      OnSetText = QConceptosCODIGOSetText
      Size = 8
    end
    object QConceptosDETALLE_STK: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Detalle Arti./Concpeto'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
  end
  object QArticulos_: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select t.id_tc,t.descripcion,t.visible from t_credito t '
      'order by t.descripcion')
    Left = 1040
    Top = 424
    object IntegerField2: TIntegerField
      FieldName = 'ID_TC'
      Origin = 'ID_TC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField3: TStringField
      FieldName = 'DESCRIPCION'
      Origin = 'DESCRIPCION'
      Size = 15
    end
    object StringField4: TStringField
      FieldName = 'VISIBLE'
      Origin = 'VISIBLE'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSConceptos: TDataSource
    DataSet = QConceptos
    Left = 248
    Top = 440
  end
end

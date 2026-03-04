inherited FormCambioPrecioExpres: TFormCambioPrecioExpres
  Caption = 'Cambio de Precio Express'
  ClientHeight = 633
  ClientWidth = 870
  StyleElements = [seFont, seClient, seBorder]
  OnResize = FormResize
  ExplicitWidth = 888
  ExplicitHeight = 674
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 870
    Height = 580
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 768
    ExplicitHeight = 580
    object pnCabecera: TPanel
      Left = 0
      Top = 0
      Width = 870
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 768
      object Label1: TLabel
        Left = 9
        Top = 12
        Width = 383
        Height = 29
        Caption = 'Modificacion de Precios Express'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -23
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 601
        Top = 5
        Width = 155
        Height = 13
        Caption = 'Lista de Precio por defecto'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object dbcListas: TJvDBLookupCombo
        Left = 454
        Top = 24
        Width = 302
        Height = 20
        DisplayEmpty = 'Sin Lista Seleccionada'
        EmptyValue = 'null'
        LookupField = 'ID'
        LookupDisplay = 'NOMBRE'
        LookupSource = DSLista
        TabOrder = 0
      end
    end
    object dbgStock: TDBGrid
      Left = 0
      Top = 57
      Width = 870
      Height = 503
      Align = alClient
      DataSource = DSStock
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnColEnter = dbgStockColEnter
      OnKeyPress = dbgStockKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 148
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 343
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PGRAVADO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 129
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECIO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 184
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 0
      Top = 560
      Width = 870
      Height = 20
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 2
      ExplicitLeft = -1
      ExplicitTop = 566
    end
  end
  inherited ToolBar1: TToolBar
    Top = 580
    Width = 870
    Align = alBottom
    ButtonHeight = 28
    ExplicitTop = 580
    ExplicitWidth = 768
    inherited btConfirma: TBitBtn
      Height = 28
      Visible = False
      ExplicitHeight = 28
    end
    inherited btNuevo: TBitBtn
      Height = 28
      Visible = False
      ExplicitHeight = 28
    end
    inherited btCancelar: TBitBtn
      Width = 33
      Height = 28
      Visible = False
      ExplicitWidth = 33
      ExplicitHeight = 28
    end
    inherited btModificar: TBitBtn
      Left = 185
      Width = 24
      Height = 28
      Visible = False
      ExplicitLeft = 185
      ExplicitWidth = 24
      ExplicitHeight = 28
    end
    inherited Pr: TSpeedButton
      Left = 209
      Height = 28
      Visible = False
      ExplicitLeft = 209
      ExplicitHeight = 28
    end
    inherited btBuscar: TBitBtn
      Left = 224
      Height = 28
      Visible = False
      ExplicitLeft = 224
      ExplicitHeight = 28
    end
    inherited Ne: TSpeedButton
      Left = 299
      Height = 28
      Visible = False
      ExplicitLeft = 299
      ExplicitHeight = 28
    end
    inherited btBorrar: TBitBtn
      Left = 314
      Width = 26
      Height = 28
      Visible = False
      ExplicitLeft = 314
      ExplicitWidth = 26
      ExplicitHeight = 28
    end
    inherited btSalir: TBitBtn
      Left = 340
      Height = 28
      ExplicitLeft = 340
      ExplicitHeight = 28
    end
    object ToolButton1: TToolButton
      Left = 415
      Top = 0
      Width = 44
      Caption = 'ToolButton1'
      Style = tbsSeparator
    end
    object btImportar: TBitBtn
      Left = 459
      Top = 0
      Width = 83
      Height = 28
      Caption = 'Actualiza'
      Glyph.Data = {
        06020000424D0602000000000000760000002800000028000000140000000100
        0400000000009001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFFFFF333FFFFF3330000000033300000333377777777F337777
        7FF330EFEFEF03307333703337F3FFFF7F37733377F330F4444E033333333033
        37F777737F333333F7F33099999903333330703337F333337F33333777FF309F
        FFF903333330000337F333337F33333777733099999903333330003337F3FF3F
        7F333337773330F44E0003333330033337F7737773333337733330EFEF003333
        3330333337FFFF7733333337333330000003333333333333377777733333FFFF
        FFFF3333333333300000000333333F3333377777777F333303333330EFEFEF03
        33337F333337F3FFFF7F333003333330F4444E0333377F333337F777737F3300
        03333330EFEFEF0333777F333337F3FFFF7F300003333330F4444E0337777F33
        3337F777737F330703333330EFEFEF03337773333337F3FF3F7F330333333330
        F44E0003337FF333FF37F7737773330733370330EFEF00333377FFF77337FFFF
        7733333000003330000003333337777733377777733333333333333333333333
        33333333333333333333}
      NumGlyphs = 2
      TabOrder = 7
      OnClick = btImportarClick
    end
  end
  inherited Panel1: TPanel
    Top = 610
    Width = 870
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 610
    ExplicitWidth = 768
    inherited sbEstado: TStatusBar
      Width = 781
      ExplicitWidth = 679
    end
  end
  inherited ActionList1: TActionList
    object ActualizaPrecio: TAction
      Caption = 'ActualizaPrecio'
      OnExecute = ActualizaPrecioExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 360
    Top = 72
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
  end
  object QStock: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select s.codigo_stk, s.detalle_stk,g.tasa,s.fijacion_precio_grav' +
        'ado, l.precio from stock s'
      
        'left join listaprecioespecialart l on l.codigoarticulo=s.codigo_' +
        'stk and l.id_cab=:lista'
      'left join gravamen g on g.codigo=s.tasa_iva'
      'where s.codigo_stk=:codigo')
    Left = 560
    Top = 472
    ParamData = <
      item
        Name = 'LISTA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end>
    object QStockDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      Size = 45
    end
    object QStockPRECIO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'PRECIO'
      Origin = 'PRECIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QStockCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 8
    end
    object QStockTASA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TASA'
      Origin = 'TASA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QStockFIJACION_PRECIO_GRAVADO: TFloatField
      FieldName = 'FIJACION_PRECIO_GRAVADO'
      Origin = 'FIJACION_PRECIO_GRAVADO'
      Required = True
    end
  end
  object mStock: TFDMemTable
    AfterInsert = mStockAfterInsert
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 552
    Top = 384
    object mStockCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      OnSetText = mStockCODIGOSetText
    end
    object mStockDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Size = 50
    end
    object mStockPRECIO: TFloatField
      DisplayLabel = 'Precio'
      FieldName = 'PRECIO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object mStockIVA: TFloatField
      FieldName = 'IVA'
    end
    object mStockPGRAVADO: TFloatField
      DisplayLabel = 'Costo'
      FieldName = 'PGRAVADO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSStock: TDataSource
    DataSet = mStock
    Left = 616
    Top = 392
  end
  object QLista: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select id,nombre from listaprecioespecialcab l ')
    Left = 600
    Top = 208
    object QListaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QListaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
  end
  object DSLista: TDataSource
    DataSet = QLista
    Left = 648
    Top = 208
  end
  object spActualiza: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDate
      end>
    StoredProcName = 'ACTULIZA_PRECIO_COSTOVTA'
    Left = 344
    Top = 432
    ParamData = <
      item
        Position = 1
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
      end
      item
        Position = 2
        Name = 'COSTO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'PRECIO'
        DataType = ftFloat
        NumericScale = 3
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'LISTA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'CODIGO_REEMPLAZO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Position = 6
        Name = 'FECHA'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
end

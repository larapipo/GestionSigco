inherited FormBorradorInventarioConsulta: TFormBorradorInventarioConsulta
  Caption = 'Borrador Toma Inventario'
  ClientHeight = 604
  ClientWidth = 1156
  StyleElements = [seFont, seClient, seBorder]
  OnResize = FormResize
  ExplicitWidth = 1174
  ExplicitHeight = 645
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1156
    Height = 551
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1132
    ExplicitHeight = 554
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 1156
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 0
      ExplicitWidth = 1132
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 240
        Height = 25
        Caption = 'Borrador de Inventario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 559
        Top = 16
        Width = 49
        Height = 16
        Caption = 'Deposito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object dbcDeposito: TJvDBLookupCombo
        Left = 614
        Top = 14
        Width = 289
        Height = 21
        DisplayEmpty = 'Sin Seleccion'
        EmptyValue = '-1'
        LookupField = 'ID'
        LookupDisplay = 'NOMBRE'
        LookupSource = DSDepositos
        TabOrder = 0
        OnClick = dbcDepositoClick
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 41
      Width = 1156
      Height = 469
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 1132
      ExplicitHeight = 472
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 1156
        Height = 469
        Align = alClient
        DataSource = DSBorrador
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'FECHA'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MUESTRASTOCK'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 328
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DETALLE_RUBRO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 208
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MUESTRADEPOSITO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 148
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CANTIDAD'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 107
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CLASE_ARTICULO'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 65
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CONTROLASTOCK'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clGreen
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 510
      Width = 1156
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      Color = clMenuHighlight
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentBackground = False
      TabOrder = 2
      ExplicitTop = 513
      ExplicitWidth = 1132
      object JvDBStatusLabel1: TJvDBStatusLabel
        Left = 984
        Top = 12
        Width = 96
        Height = 13
        DataSource = DSBorrador
        Style = lsRecordNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 551
    Width = 1156
    Align = alBottom
    ExplicitTop = 554
    ExplicitWidth = 1132
    inherited btConfirma: TBitBtn
      Visible = False
    end
    inherited btNuevo: TBitBtn
      Visible = False
    end
    inherited btCancelar: TBitBtn
      Visible = False
    end
    inherited btModificar: TBitBtn
      Visible = False
    end
    inherited Pr: TSpeedButton
      Visible = False
    end
    inherited btBuscar: TBitBtn
      Visible = False
    end
    inherited Ne: TSpeedButton
      Visible = False
    end
  end
  inherited Panel1: TPanel
    Top = 581
    Width = 1156
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 584
    ExplicitWidth = 1132
    inherited sbEstado: TStatusBar
      Width = 1067
      ExplicitWidth = 1043
    end
  end
  inherited ImageList1: TImageList
    Left = 192
    Top = 64
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
  end
  inherited QUltimoCodigo: TSQLQuery
    Left = 32
    Top = 392
  end
  inherited QBrowse2: TFDQuery
    Left = 88
    Top = 336
  end
  inherited QUltimoCodigo2: TFDQuery
    Left = 120
    Top = 392
  end
  object CDSBorrador: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'DEPOSITO'
        ParamType = ptInput
      end>
    ProviderName = 'DSPBorrador'
    Left = 224
    Top = 105
    object CDSBorradorDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
    end
    object CDSBorradorCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Size = 8
    end
    object CDSBorradorCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSBorradorMUESTRASTOCK: TStringField
      DisplayLabel = 'Descripcion'
      FieldName = 'MUESTRASTOCK'
      ReadOnly = True
      Size = 45
    end
    object CDSBorradorDETALLE_RUBRO: TStringField
      DisplayLabel = 'Rubro'
      FieldName = 'DETALLE_RUBRO'
      ReadOnly = True
      Size = 35
    end
    object CDSBorradorDETALLE_SUBRUBRO: TStringField
      DisplayLabel = 'Sub Rub'
      FieldName = 'DETALLE_SUBRUBRO'
      ReadOnly = True
      Size = 45
    end
    object CDSBorradorMUESTRADEPOSITO: TStringField
      DisplayLabel = 'Deposito'
      FieldName = 'MUESTRADEPOSITO'
      ReadOnly = True
      Size = 25
    end
    object CDSBorradorCLASE_ARTICULO: TIntegerField
      DisplayLabel = 'Clase'
      FieldName = 'CLASE_ARTICULO'
      ProviderFlags = []
    end
    object CDSBorradorFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      DisplayWidth = 16
      FieldName = 'FECHA'
    end
    object CDSBorradorCONTROLASTOCK: TStringField
      DisplayLabel = 'Ctr.Stk'
      FieldName = 'CONTROLASTOCK'
      ReadOnly = True
      Size = 1
    end
  end
  object QLimpiarTemporal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'delete from borrador_inventario b where b.deposito=:deposito or ' +
        ':deposito=-1')
    Left = 624
    Top = 217
    ParamData = <
      item
        Name = 'DEPOSITO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object CDSDepositos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPDepositos'
    Left = 216
    Top = 217
    object CDSDepositosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSDepositosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 25
    end
  end
  object DSDepositos: TDataSource
    DataSet = CDSDepositos
    Left = 320
    Top = 217
  end
  object DSBorrador: TDataSource
    DataSet = CDSBorrador
    Left = 304
    Top = 105
  end
  object DSPBorrador: TDataSetProvider
    DataSet = QBorrador
    Options = []
    Left = 136
    Top = 105
  end
  object DSPDepositos: TDataSetProvider
    DataSet = QDeposito
    Options = []
    Left = 128
    Top = 217
  end
  object QDeposito: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from depositos')
    Left = 48
    Top = 209
  end
  object QBorrador: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select b.fecha, b.deposito,b.codigo,s.detalle_stk as MuestraStoc' +
        'k,r.detalle_rubro,sr.detalle_subrubro, d.nombre as MuestraDeposi' +
        'to,sum(b.cantidad) as Cantidad ,'
      's.clase_articulo,s.controlastock from  borrador_Inventario b'
      'left join stock s on s.codigo_stk=b.codigo'
      'left join depositos d on d.id=b.deposito'
      'left join rubros r on r.codigo_rubro=s.rubro_stk'
      'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk'
      'where d.id = :deposito or :deposito=-1'
      'group by'
      
        'b.fecha,b.deposito,b.codigo,s.detalle_stk,r.detalle_rubro,sr.det' +
        'alle_subrubro,d.nombre,s.clase_articulo,controlastock')
    Left = 48
    Top = 105
    ParamData = <
      item
        Position = 1
        Name = 'DEPOSITO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object FDQuery1: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'delete from borrador_inventario b where b.id=:id')
    Left = 752
    Top = 385
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end

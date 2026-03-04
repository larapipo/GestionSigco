object FormListaLotes: TFormListaLotes
  Left = 0
  Top = 0
  Caption = 'Listado de Lotes'
  ClientHeight = 387
  ClientWidth = 745
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 745
    Height = 305
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 184
    ExplicitTop = 136
    ExplicitWidth = 185
    ExplicitHeight = 41
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 743
      Height = 303
      Align = alClient
      DataSource = DSLotes
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHA_ENTRADA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHA_VTO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 119
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CANTIDAD'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SALDO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBREDEPOSITO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 745
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 192
    ExplicitTop = 144
    ExplicitWidth = 185
    object Label1: TLabel
      Left = 32
      Top = 9
      Width = 57
      Height = 20
      Caption = 'Lotes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 346
    Width = 745
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = 192
    ExplicitTop = 208
    ExplicitWidth = 185
    DesignSize = (
      745
      41)
    object BitBtn1: TBitBtn
      Left = 626
      Top = 6
      Width = 83
      Height = 25
      Anchors = [akTop, akRight]
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      ExplicitLeft = 504
    end
  end
  object QLotes: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select l.*,d.nombre as NombreDeposito from stock_lotes_impo l'
      'left join depositos d on d.id= l.deposito'
      'where l.codigo = :codigo')
    Left = 360
    Top = 241
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
    object QLotesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QLotesID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Origin = 'ID_COMPROBANTE'
      Required = True
    end
    object QLotesCODIGO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 8
    end
    object QLotesID_DETALLE_CPBTE: TIntegerField
      FieldName = 'ID_DETALLE_CPBTE'
      Origin = 'ID_DETALLE_CPBTE'
      Required = True
    end
    object QLotesFECHA_ENTRADA: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha Entrada'
      FieldName = 'FECHA_ENTRADA'
      Origin = 'FECHA_ENTRADA'
    end
    object QLotesFECHA_VTO: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fcha Vto'
      FieldName = 'FECHA_VTO'
      Origin = 'FECHA_VTO'
    end
    object QLotesLOTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Lote'
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 15
    end
    object QLotesDESPACHO: TStringField
      DisplayLabel = 'Despacho'
      FieldName = 'DESPACHO'
      Origin = 'DESPACHO'
    end
    object QLotesCANTIDAD: TFloatField
      DisplayLabel = 'Cantidad'
      FieldName = 'CANTIDAD'
      Origin = 'CANTIDAD'
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object QLotesTIPO_COMPROB: TStringField
      FieldName = 'TIPO_COMPROB'
      Origin = 'TIPO_COMPROB'
      Required = True
      Size = 2
    end
    object QLotesDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Origin = 'DEPOSITO'
      Required = True
    end
    object QLotesSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = 'SALDO'
      Required = True
      DisplayFormat = ',0.000;-,0.000;-'
    end
    object QLotesNOMBREDEPOSITO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deposito'
      FieldName = 'NOMBREDEPOSITO'
      Origin = 'NOMBRE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
  end
  object DSLotes: TDataSource
    DataSet = QLotes
    Left = 424
    Top = 185
  end
end

object FormBorradorInventario: TFormBorradorInventario
  Left = 0
  Top = 0
  Caption = 'Borrador Inventario'
  ClientHeight = 579
  ClientWidth = 932
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
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 932
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
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
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 932
    Height = 497
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 932
      Height = 497
      Align = alClient
      DataSource = DSBorrador
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawDataCell = DBGrid1DrawDataCell
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      Columns = <
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
          Width = 378
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
          Width = 160
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
          Width = 134
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
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 51
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 538
    Width = 932
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
    object JvDBStatusLabel1: TJvDBStatusLabel
      Left = 24
      Top = 16
      Width = 96
      Height = 13
      DataSource = DSBorrador
      Style = lsRecordNo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Pasar: TButton
      Left = 822
      Top = 5
      Width = 105
      Height = 31
      Align = alRight
      Caption = 'Pasar'
      TabOrder = 0
      OnClick = PasarClick
    end
  end
  object QBorrador: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select b.deposito,b.codigo,s.detalle_stk as MuestraStock,d.nombr' +
        'e as MuestraDeposito,sum(b.cantidad) as Cantidad ,s.clase_articu' +
        'lo,s.controlastock from  borrador_Inventario b'
      'left join stock s on s.codigo_stk=b.codigo'
      'left join depositos d on d.id=b.deposito'
      'where d.id = :deposito or :deposito=-1'
      'group by'
      
        'b.deposito,b.codigo,s.detalle_stk,d.nombre,s.clase_articulo,s.co' +
        'ntrolastock ')
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
    object CDSBorradorCONTROLASTOCK: TStringField
      DisplayLabel = 'Ct.Stk'
      FieldName = 'CONTROLASTOCK'
      ReadOnly = True
      Size = 1
    end
  end
  object DSPBorrador: TDataSetProvider
    DataSet = QBorrador
    Options = []
    Left = 136
    Top = 105
  end
  object DSBorrador: TDataSource
    DataSet = CDSBorrador
    Left = 320
    Top = 113
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
  object QDeposito: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from depositos')
    Left = 48
    Top = 209
  end
  object DSPDepositos: TDataSetProvider
    DataSet = QDeposito
    Options = []
    Left = 128
    Top = 217
  end
  object QLimpiarTemporal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'delete from borrador_inventario b where b.deposito=:deposito or ' +
        ':deposito=-1')
    Left = 64
    Top = 313
    ParamData = <
      item
        Name = 'DEPOSITO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
end

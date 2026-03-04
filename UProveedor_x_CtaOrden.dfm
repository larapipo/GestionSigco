object FormProveedor_x_CtaOrden: TFormProveedor_x_CtaOrden
  Left = 277
  Top = 268
  BorderStyle = bsSingle
  Caption = 'Proveedor'
  ClientHeight = 203
  ClientWidth = 438
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 438
    Height = 105
    Align = alTop
    TabOrder = 0
    object Proveedor: TLabel
      Left = 16
      Top = 10
      Width = 50
      Height = 13
      Caption = 'Proveedor'
    end
    object btOk: TBitBtn
      Left = 321
      Top = 64
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btOkClick
    end
    object btCancelar: TBitBtn
      Left = 232
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btCancelarClick
    end
    object edNombre: TEdit
      Left = 95
      Top = 27
      Width = 301
      Height = 21
      Color = clInfoBk
      Enabled = False
      TabOrder = 3
      Text = 'edNombre'
    end
    object ceProveedor: TJvComboEdit
      Left = 16
      Top = 27
      Width = 73
      Height = 21
      Margins.Left = 1
      Margins.Top = 1
      Action = BuscarProveedor
      ButtonWidth = 15
      ClickKey = 16397
      Glyph.Data = {
        4E000000424D4E000000000000003E0000002800000009000000040000000100
        010000000000100000000000000000000000020000000200000000000000FFFF
        FF00FF8000002480000024800000FF800000}
      TabOrder = 0
      Text = 'ceProveedor'
      OnButtonClick = BuscarProveedorExecute
      OnKeyPress = ceProveedorKeyPress
    end
  end
  object ActionList: TActionList
    Left = 304
    Top = 128
    object BuscarProveedor: TAction
      Caption = 'BuscarProveedor'
      ShortCut = 16397
      OnExecute = BuscarProveedorExecute
    end
  end
  object QProveedores: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'SELECT P.codigo,p.nombre FROM Poveedor P'
      'where P.Codigo=:Codigo')
    Left = 88
    Top = 120
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
        Value = Null
      end>
    object QProveedoresCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object QProveedoresNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Required = True
      Size = 35
    end
  end
end

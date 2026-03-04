object FormMuestraListaCodigoBarra: TFormMuestraListaCodigoBarra
  AlignWithMargins = True
  Left = 228
  Top = 95
  BorderIcons = [biSystemMenu]
  Caption = 'Codigos de Barra'
  ClientHeight = 524
  ClientWidth = 715
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poOwnerFormCenter
  StyleName = 'Windows'
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pnBase: TPanel
    Left = 0
    Top = 0
    Width = 715
    Height = 524
    Align = alClient
    Color = clBlue
    Padding.Left = 5
    Padding.Top = 20
    Padding.Right = 5
    Padding.Bottom = 30
    ParentBackground = False
    TabOrder = 0
    StyleName = 'Windows'
    object dbgArticulos: TDBGrid
      Left = 6
      Top = 21
      Width = 703
      Height = 472
      Align = alClient
      DataSource = DSArticulos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlue
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDblClick = dbgArticulosDblClick
      OnKeyPress = dbgArticulosKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO_STK'
          Title.Alignment = taCenter
          Width = 114
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE_STK'
          Title.Alignment = taCenter
          Width = 373
          Visible = True
        end>
    end
  end
  object DSArticulos: TDataSource
    DataSet = QArticulos
    Left = 392
    Top = 168
  end
  object QArticulos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cb.codigo_stk,s.detalle_stk from codigobarra cb'
      'left join stock s on s.codigo_stk=cb.codigo_stk'
      'where cb.codigobarra=:codigoBarra')
    Left = 240
    Top = 168
    ParamData = <
      item
        Name = 'CODIGOBARRA'
        DataType = ftString
        ParamType = ptInput
        Size = 50
        Value = Null
      end>
    object QArticulosCODIGO_STK: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      Required = True
      Size = 8
    end
    object QArticulosDETALLE_STK: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
  end
end

object FormBuscaComprobantes: TFormBuscaComprobantes
  Left = 395
  Top = 150
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Buscador de Comprobantes'
  ClientHeight = 419
  ClientWidth = 535
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
    Width = 535
    Height = 300
    Align = alTop
    BevelOuter = bvNone
    Caption = 'pnCabecera'
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object JvDBStatusLabel1: TJvDBStatusLabel
      Left = 341
      Top = 281
      Width = 96
      Height = 13
      DataSource = DSComp
      Style = lsRecordNo
      Transparent = True
    end
    object lbSucursal: TLabel
      Left = 68
      Top = 12
      Width = 62
      Height = 14
      Caption = 'lbSucursal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 10
      Top = 12
      Width = 52
      Height = 14
      Caption = 'Sucursal.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object dbgComprobantes: TDBGrid
      Left = 0
      Top = 32
      Width = 529
      Height = 243
      DataSource = DSComp
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = dbgComprobantesDrawColumnCell
      OnDblClick = dbgComprobantesDblClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CODIGO_AFIP'
          Title.Alignment = taCenter
          Title.Caption = 'C.Comp.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_COMPROB'
          Title.Alignment = taCenter
          Title.Color = clBlue
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLASE_COMPROB'
          Title.Alignment = taCenter
          Title.Color = clBlue
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DENOMINACION'
          Title.Alignment = taCenter
          Title.Color = clBlue
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 119
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LETRA'
          Title.Alignment = taCenter
          Title.Color = clBlue
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PREFIJO'
          Title.Alignment = taCenter
          Title.Color = clBlue
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Title.Alignment = taCenter
          Title.Color = clBlue
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 77
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FISCAL'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FACTURAELECTRONICA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 38
          Visible = True
        end>
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 300
    Width = 535
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 1
    object btOk: TBitBtn
      Left = 327
      Top = 10
      Width = 75
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btOkClick
    end
    object btCancelar: TBitBtn
      Left = 235
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btCancelarClick
      OnKeyDown = btCancelarKeyDown
    end
    object chEnUso: TAdvOfficeCheckBox
      Left = 10
      Top = 16
      Width = 185
      Height = 17
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = chEnUsoClick
      Alignment = taLeftJustify
      Caption = 'Solo los que estan en Uso'
      ReturnIsTab = False
      Themed = True
      Version = '1.8.4.2'
    end
  end
  object DSComp: TDataSource
    Left = 248
    Top = 160
  end
  object QSucursal: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select s.detalle from sucursal s where s.codigo = :codigo')
    Left = 168
    Top = 160
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end

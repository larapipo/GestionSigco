object FormBusdadorDetIngEgr: TFormBusdadorDetIngEgr
  Left = 0
  Top = 0
  Caption = 'Buscador por detalle'
  ClientHeight = 534
  ClientWidth = 950
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnDetalle: TPanel
    Left = 0
    Top = 65
    Width = 950
    Height = 296
    Align = alTop
    Caption = 'pnDetalle'
    TabOrder = 0
    object dbgResultado: TDBGrid
      Left = 1
      Top = 1
      Width = 948
      Height = 294
      Align = alClient
      DataSource = DSMovimientos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbgResultadoDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'FECHA'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha'
          Title.Color = clWhite
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -12
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NROCPBTE'
          Title.Alignment = taCenter
          Title.Caption = 'Nro.Cpbte'
          Title.Color = clWhite
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -12
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 114
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE'
          Title.Alignment = taCenter
          Title.Caption = 'Detalle'
          Title.Color = clWhite
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -12
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 635
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPORTE'
          Title.Alignment = taCenter
          Title.Caption = 'Importe'
          Title.Color = clWhite
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -12
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 87
          Visible = True
        end>
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 361
    Width = 950
    Height = 72
    Align = alTop
    Color = clHighlight
    ParentBackground = False
    TabOrder = 1
    object Label2: TLabel
      Left = 24
      Top = 6
      Width = 111
      Height = 18
      Caption = 'Datos A buscar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edFind: TJvDBFindEdit
      Left = 24
      Top = 28
      Width = 561
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Flat = False
      ParentFlat = False
      ParentFont = False
      TabOrder = 0
      Text = ''
      OnKeyDown = edFindKeyDown
      DataField = 'DETALLE'
      DataSource = DSMovimientos
      FindStyle = fsFilter
      FindMode = fmAnyPos
    end
    object btCancelar: TBitBtn
      Left = 695
      Top = 24
      Width = 107
      Height = 33
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = btCancelarClick
    end
    object btOk: TBitBtn
      Left = 808
      Top = 24
      Width = 107
      Height = 33
      Caption = 'OK'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 2
      OnClick = btOkClick
    end
  end
  object pnCabecera: TPanel
    Left = 0
    Top = 0
    Width = 950
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    Color = clHighlight
    ParentBackground = False
    TabOrder = 2
    object lbTitulo: TLabel
      Left = 16
      Top = 16
      Width = 315
      Height = 25
      Caption = 'Buscador x Detalle de Egresos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object QMovimientosEgre: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select  c.id_egreso,tipocpbte,c.clasecpbte,c.fecha,'
      'c.nrocpbte,c.detalle,c.importe from  egr_caja c')
    Left = 424
    Top = 273
    object QMovimientosEgreCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QMovimientosEgreFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object QMovimientosEgreNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Required = True
      EditMask = 'a-0000-00000000;0'
      Size = 13
    end
    object QMovimientosEgreDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object QMovimientosEgreIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object QMovimientosEgreID_EGRESO: TIntegerField
      FieldName = 'ID_EGRESO'
      Origin = 'ID_EGRESO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovimientosEgreTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
  end
  object DSMovimientos: TDataSource
    DataSet = QMovimientosEgre
    Left = 528
    Top = 273
  end
  object QMovimientosIngr: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select  c.id_ingreso,tipocpbte,c.clasecpbte,c.fecha,c.nrocpbte,c' +
        '.detalle,c.importe from  ing_caja c ')
    Left = 424
    Top = 329
    object QMovimientosIngrID_INGRESO: TIntegerField
      FieldName = 'ID_INGRESO'
      Origin = 'ID_INGRESO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovimientosIngrTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object QMovimientosIngrCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object QMovimientosIngrFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object QMovimientosIngrNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object QMovimientosIngrDETALLE: TStringField
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object QMovimientosIngrIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
    end
  end
end

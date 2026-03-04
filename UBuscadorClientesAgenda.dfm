object FormBuscadorClientesAgenda: TFormBuscadorClientesAgenda
  Left = 201
  Top = 140
  Caption = 'Buscador Clientes Agenda'
  ClientHeight = 551
  ClientWidth = 806
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 13
  object pnBuscador: TPanel
    Left = 0
    Top = 0
    Width = 806
    Height = 551
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 758
    ExplicitHeight = 425
    DesignSize = (
      806
      551)
    object Label3: TLabel
      Left = 8
      Top = 455
      Width = 191
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Columnas a Mostrar en Resultado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 328
      Top = 463
      Width = 102
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = 'Registro Encontrados'
      ExplicitTop = 328
    end
    object DBStatusLabel1: TJvDBStatusLabel
      Left = 430
      Top = 463
      Width = 102
      Height = 13
      DataSource = DSClientes
      Style = lsRecordNo
      CalcRecCount = True
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Anchors = [akLeft, akBottom]
      ParentFont = False
      ShadowPos = spLeftTop
      Transparent = True
      ExplicitTop = 403
    end
    object dbgResultado: TDBGrid
      Left = 1
      Top = 65
      Width = 804
      Height = 384
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = DSClientes
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = AceptarExecute
      OnKeyPress = dbgResultadoKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Title.Alignment = taCenter
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 234
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DIRECCION'
          Title.Alignment = taCenter
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'TELEFONO_1'
          Title.Alignment = taCenter
          Title.Caption = 'Telef.1'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'TELEFONO_2'
          Title.Alignment = taCenter
          Title.Caption = 'Telef.2'
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CAMPO_1'
          Title.Alignment = taCenter
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CAMPO_2'
          Title.Alignment = taCenter
          Title.Color = clNavy
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMaroon
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REFERENCIA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object chbCampos: TCheckListBox
      Left = 8
      Top = 471
      Width = 193
      Height = 72
      Anchors = [akLeft, akBottom]
      IntegralHeight = True
      ItemHeight = 17
      TabOrder = 1
      OnClickCheck = chbCamposClickCheck
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 804
      Height = 64
      Align = alTop
      TabOrder = 2
      ExplicitWidth = 756
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 99
        Height = 16
        Caption = 'Dato a Buscar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 536
        Top = 6
        Width = 99
        Height = 13
        Caption = 'Campo de Busqueda'
      end
      object edDato: TEdit
        Left = 8
        Top = 24
        Width = 297
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        OnClick = edDatoClick
        OnEnter = edDatoEnter
        OnKeyPress = edDatoKeyPress
      end
      object cbCampos: TComboBox
        Left = 536
        Top = 22
        Width = 161
        Height = 21
        Style = csDropDownList
        TabOrder = 1
        OnChange = cbCamposChange
      end
    end
    object btCancelar: TBitBtn
      Left = 496
      Top = 503
      Width = 75
      Height = 25
      Action = Cancelar
      Anchors = [akLeft, akBottom]
      Cancel = True
      Caption = '&Cancelar'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      ModalResult = 2
      NumGlyphs = 2
      TabOrder = 3
      ExplicitTop = 368
    end
    object btAceptar: TBitBtn
      Left = 576
      Top = 503
      Width = 75
      Height = 25
      Action = Aceptar
      Anchors = [akLeft, akBottom]
      Caption = '&Aceptar'
      Glyph.Data = {
        F2010000424DF201000000000000760000002800000024000000130000000100
        0400000000007C01000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
        3333333333388F3333333333000033334224333333333333338338F333333333
        0000333422224333333333333833338F33333333000033422222243333333333
        83333338F3333333000034222A22224333333338F33F33338F33333300003222
        A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
        38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
        2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
        0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
        333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
        33333A2224A2233333333338F338F83300003333333333A2224A333333333333
        8F338F33000033333333333A222433333333333338F338F30000333333333333
        A224333333333333338F38F300003333333333333A223333333333333338F8F3
        000033333333333333A3333333333333333383330000}
      ModalResult = 8
      NumGlyphs = 2
      TabOrder = 4
      ExplicitTop = 368
    end
  end
  object DSClientes: TDataSource
    DataSet = CDSClientes
    Left = 328
    Top = 184
  end
  object ActionList1: TActionList
    Left = 392
    Top = 160
    object Aceptar: TAction
      Caption = '&Aceptar'
      OnExecute = AceptarExecute
    end
    object Cancelar: TAction
      Caption = '&Cancelar'
      OnExecute = CancelarExecute
    end
    object Buscar: TAction
      Caption = 'Buscar'
      OnExecute = BuscarExecute
    end
  end
  object MainMenu: TMainMenu
    Left = 160
    Top = 112
    object Opciones1: TMenuItem
      Caption = '&Opciones'
      RadioItem = True
      object BExacta: TMenuItem
        Caption = 'Busqueda Exacta'
        OnClick = BExactaClick
      end
      object BComienzaCon: TMenuItem
        Caption = 'Comienza Con'
        OnClick = BComienzaConClick
      end
      object BIncluye: TMenuItem
        Caption = 'Incluye '
        Checked = True
        OnClick = BIncluyeClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object LeftCero: TMenuItem
        Caption = 'Justifica con ceros'
        OnClick = LeftCeroClick
      end
    end
  end
  object CDSClientes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'dato'
        ParamType = ptInput
      end>
    ProviderName = 'DSPClientes'
    Left = 216
    Top = 184
    object CDSClientesCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 6
    end
    object CDSClientesNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 50
    end
    object CDSClientesDIRECCION: TStringField
      DisplayLabel = 'Direccion'
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      Size = 50
    end
    object CDSClientesTELEFONO_1: TStringField
      DisplayLabel = 'Telef 1'
      FieldName = 'TELEFONO_1'
      Origin = 'TELEFONO_1'
      Size = 10
    end
    object CDSClientesTELEFONO_2: TStringField
      DisplayLabel = 'Telef 2'
      FieldName = 'TELEFONO_2'
      Origin = 'TELEFONO_2'
      Size = 10
    end
    object CDSClientesCAMPO_1: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'CAMPO_1'
      Origin = 'CAMPO_1'
      Size = 40
    end
    object CDSClientesCAMPO_2: TStringField
      DisplayLabel = 'Patente'
      FieldName = 'CAMPO_2'
      Origin = 'CAMPO_2'
      Size = 50
    end
    object CDSClientesREFERENCIA: TStringField
      DisplayLabel = 'Referencia'
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 50
    end
  end
  object DSPClientes: TDataSetProvider
    DataSet = QClien
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 160
    Top = 184
  end
  object QClien: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select a.codigo,a.nombre,a.direccion,'
      '       a.telefono_1,'
      '       a.telefono_2,'
      '       a.campo_1,'
      '       a.campo_2,'
      '       a.referencia'
      '       from agenda a'
      'where a.nombre containing :dato '
      '')
    Left = 96
    Top = 192
    ParamData = <
      item
        Position = 1
        Name = 'dato'
        DataType = ftString
        ParamType = ptInput
      end>
  end
end

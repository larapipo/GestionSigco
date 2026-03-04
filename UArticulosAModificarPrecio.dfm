object FormArticulosAModificarPrecio: TFormArticulosAModificarPrecio
  Left = 338
  Top = 198
  BorderStyle = bsSingle
  Caption = 'Art'#237'culos que Cambiar'#237'an su Precio'
  ClientHeight = 511
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 511
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 313
    DesignSize = (
      635
      511)
    object dbgArticuos: TDBGrid
      Left = 1
      Top = 1
      Width = 633
      Height = 468
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      Ctl3D = False
      DataSource = DSArticulos
      DrawingStyle = gdsClassic
      FixedColor = clHighlight
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO_STK'
          Title.Alignment = taCenter
          Title.Caption = 'Cod.Art.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DETALLE_STK'
          Title.Alignment = taCenter
          Title.Caption = 'Art'#237'culo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 287
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FIJACION_PRECIO_TOTAL'
          Title.Alignment = taCenter
          Title.Caption = '$ Actual'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MIN'
          Title.Alignment = taCenter
          Title.Caption = '$ Nvo.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FUAP'
          Title.Alignment = taCenter
          Title.Caption = 'Ult.Actu.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 83
          Visible = True
        end>
    end
    object btCancel: TBitBtn
      Left = 440
      Top = 475
      Width = 75
      Height = 25
      Anchors = [akLeft, akBottom]
      Cancel = True
      Caption = 'Cancel'
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
      TabOrder = 1
      OnClick = btCancelClick
      ExplicitTop = 367
    end
    object btOk: TBitBtn
      Left = 521
      Top = 475
      Width = 75
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = '&All'
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
      TabOrder = 2
      OnClick = btOkClick
      ExplicitTop = 367
    end
  end
  object DSArticulos: TDataSource
    DataSet = CDSArticulos
    Left = 384
    Top = 152
  end
  object CDSArticulos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'fecha'
        ParamType = ptInput
      end>
    ProviderName = 'DSPArticulos'
    Left = 208
    Top = 152
    object CDSArticulosCODIGO_STK: TStringField
      FieldName = 'CODIGO_STK'
      Origin = 'CODIGO_STK'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 8
    end
    object CDSArticulosDETALLE_STK: TStringField
      FieldName = 'DETALLE_STK'
      Origin = 'DETALLE_STK'
      ProviderFlags = []
      Size = 45
    end
    object CDSArticulosFUAP: TSQLTimeStampField
      FieldName = 'FUAP'
      Origin = 'FUAP'
      ProviderFlags = []
    end
    object CDSArticulosFIJACION_PRECIO_TOTAL: TFloatField
      FieldName = 'FIJACION_PRECIO_TOTAL'
      Origin = 'FIJACION_PRECIO_TOTAL'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
    end
    object CDSArticulosMIN: TFloatField
      FieldName = 'MIN'
      Origin = 'MIN'
      ProviderFlags = []
    end
  end
  object DSPArticulos: TDataSetProvider
    DataSet = QArtic
    Options = []
    Left = 248
    Top = 152
  end
  object QArtic: TFDQuery
    ObjectView = False
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select r.codigo_stk, s.detalle_stk,s.fuap,s.fijacion_precio_tota' +
        'l, Min(r.precio)from relacion_articuloprovee r'
      'left join stock s on s.codigo_stk=r.codigo_stk'
      '    where r.ultima_actualizacion>=:fecha'
      
        'group by r.codigo_stk, s.detalle_stk,s.fuap,s.fijacion_precio_to' +
        'tal'
      'having s.fijacion_precio_total<>min(r.precio)')
    Left = 320
    Top = 152
    ParamData = <
      item
        Position = 1
        Name = 'fecha'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
end

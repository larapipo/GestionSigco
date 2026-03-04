object FormControlCuponAbono: TFormControlCuponAbono
  Left = 256
  Top = 89
  AutoSize = True
  Caption = 'Control de Cupon de Abonos'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 13
  object pnBase: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 441
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 884
    ExplicitHeight = 639
    object Label1: TLabel
      Left = 248
      Top = 256
      Width = 26
      Height = 13
      Caption = 'Saldo'
    end
    object dbgMov: TJvDBGrid
      Left = 1
      Top = 57
      Width = 882
      Height = 554
      Align = alClient
      DataSource = DSMovimientos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnColEnter = dbgMovColEnter
      OnDblClick = dbgMovDblClick
      OnEnter = dbgMovEnter
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'CLIENTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 50
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'FACTURA_CLASE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 39
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'FACTURA_TIPO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 38
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'FECHA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FACTURA_NROCPBTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'IMPORTE_1'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 73
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'MUESTRACLIENTE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 54
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'MUESTRAFECHA'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 98
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'MUESTRADETALLE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 153
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'MUESTRASALDO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAGADO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 882
      Height = 56
      Align = alTop
      BevelOuter = bvNone
      Color = clHighlight
      ParentBackground = False
      TabOrder = 1
      object Label2: TLabel
        Left = 625
        Top = 6
        Width = 30
        Height = 13
        Caption = 'Desde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 736
        Top = 6
        Width = 28
        Height = 13
        Caption = 'Hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 25
        Top = 11
        Width = 302
        Height = 29
        Caption = 'Control Cupon de Abonos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object desde: TJvDateEdit
        Left = 625
        Top = 20
        Width = 105
        Height = 21
        Glyph.Data = {
          76050000424D760500000000000036000000280000001C0000000C0000000100
          2000000000004005000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
          0000800000008000000000000000800000000000000000000000800000008080
          8000FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
          0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
          80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
          C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FF00FF00}
        ImageKind = ikCustom
        NumGlyphs = 2
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 0
      end
      object hasta: TJvDateEdit
        Left = 736
        Top = 20
        Width = 105
        Height = 21
        Glyph.Data = {
          76050000424D760500000000000036000000280000001C0000000C0000000100
          2000000000004005000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          800080808000808080008080800080808000FF00FF00FF00FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FF00FF00FF00FF000000000000000000800000000000
          0000800000008000000000000000800000000000000000000000800000008080
          8000FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF00FFFFFF00FFFFFF00FFFFFF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF0000000000000000000000
          0000FFFFFF00000000000000000000000000C0C0C000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00808080008080800080808000FF00FF008080
          80008080800080808000FF00FF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0
          C00000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0080808000FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          0000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FFFFFF00FF00FF00808080008080800080808000FF00FF00FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF000000000000000000FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF008080800080808000FFFFFF00FF00FF008080
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          000000000000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FF00
          FF0080808000FF00FF00FF00FF0080808000808080008080800080808000FF00
          FF0080808000FFFFFF00FF00FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000008080
          8000FF00FF0080808000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0080808000FFFFFF00FF00FF00FF00
          FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000FFFFFF008000000080808000FF00FF0080808000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0080808000FFFFFF00FF00FF00FF00FF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FF00FF00}
        ImageKind = ikCustom
        NumGlyphs = 2
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 1
      end
      object UpDown1: TUpDown
        Left = 847
        Top = 20
        Width = 16
        Height = 20
        Hint = 'Cambia el Per'#237'odo'
        Max = 10000
        ParentShowHint = False
        Position = 100
        ShowHint = True
        TabOrder = 2
        OnClick = UpDown1Click
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 611
      Width = 882
      Height = 41
      Align = alBottom
      TabOrder = 2
      ExplicitTop = 597
      DesignSize = (
        622
        41)
      object chbEstado: TCheckBox
        Left = 10
        Top = 11
        Width = -43
        Height = 17
        Anchors = [akLeft, akRight, akBottom]
        Caption = 'Abonos Sin Cancelar'
        TabOrder = 0
        OnClick = chbEstadoClick
        ExplicitWidth = 217
      end
      object btBuscar: TBitBtn
        Left = 783
        Top = 8
        Width = -171
        Height = 25
        Anchors = [akLeft, akRight, akBottom]
        Caption = 'Buscar'
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000010000FF00FF008C6B
          6C0087707000AE877C000D7FA9006F7C88006D7C94001F7ECE000E80AA001180
          A7001081AB00048CB900078DBC000B8DBA000C8DBA00088EBC001285B0007882
          95006092BD005EA8BE000A91C1000F9DCE002087DE0011A7D10030BCDC001F89
          E00059A9DC0044BADD004ABFE00057AEF4004DB1F90049B2FF004EB7FF0057B1
          F60050B6FE0022D7FC0024D7FF0024D8FD0039D7FB0035D8FD004BC6DC0046C6
          E40048D5EE0075D3E90058E9FD006FE6FF0070E6FF0071F9FE007BFFFF008683
          88008B8697008F989B00969594009C919000AD858000AD868500AB939500A49E
          9900B1979400B5A09F008AA5AD00CAA08C00CDAC9300C2A69A00F3BE8000C6AE
          A000CFB7A100D3BBA200F4C88E00F5CB9A00F5D09C00F8D09800DAC5B700E4CC
          A900EFD2A900ECD1AC00F6DAAB00F5DEB500F5E1B600F9E1B100FEEAB900FFF2
          BA00A1C6C8008DE6FA0081F8FE008CFAFD008DFCFE0097FCFD009BFBFD00B8ED
          F600A7FFFF00AAFFFE00ADFFFE00B6F6FF00B1FCFD00B4FFFF00ECDDCC00E8DD
          D600FFF7C600FCF5CD00FCF7D100FAF6D600FFFBD500FEFED600F7F2D900FEFF
          D900FFFEDD00C6F5FF00C6FEFF00D2FFFF00FEF7E000FBFCE100FDFFE100FFFF
          E400E3FEFF00F9F6F200FFFFF400F1FBFC00F5FFFE00FBFFFF00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000605000004080408080A000000000011191A000B2A23272D
          531B080000001116201D0B552C23272E531C1509003207201D000F552C23272B
          3A3F41030112202000000F552C252938606771684236200000000B5F5D6B3B61
          74676A67513D000000000B59181735716A676A63474B360000000F282C23396A
          6A6A6A4C404D360000000B552C2534656A654F455049360000000B552C251343
          6247446E7336000000000B552C25263C3E4B4E483636000000000F55542F3057
          523331020000000000000B77766D5F5C5C5C2F08000000000000001476726C5C
          5A58100000000000000000000F0F0B0F0F0F0000000000000000}
        TabOrder = 1
        OnClick = btBuscarClick
        ExplicitWidth = 89
      end
    end
  end
  object CDSMovimientos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'desde'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'hasta'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovimientos'
    BeforeInsert = CDSMovimientosBeforeInsert
    AfterPost = CDSMovimientosAfterPost
    Left = 792
    Top = 248
    object CDSMovimientosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object CDSMovimientosCLIENTE: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Required = True
      Size = 6
    end
    object CDSMovimientosFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object CDSMovimientosFACTURA_ID: TIntegerField
      FieldName = 'FACTURA_ID'
      Origin = 'FACTURA_ID'
      Required = True
      Visible = False
    end
    object CDSMovimientosFACTURA_TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'FACTURA_TIPO'
      Origin = 'FACTURA_TIPO'
      Size = 2
    end
    object CDSMovimientosFACTURA_CLASE: TStringField
      DisplayLabel = 'Clase'
      FieldName = 'FACTURA_CLASE'
      Origin = 'FACTURA_CLASE'
      Size = 2
    end
    object CDSMovimientosFACTURA_FECHA: TSQLTimeStampField
      FieldName = 'FACTURA_FECHA'
      Origin = 'FACTURA_FECHA'
      Visible = False
    end
    object CDSMovimientosFACTURA_NROCPBTE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'FACTURA_NROCPBTE'
      Origin = 'FACTURA_NROCPBTE'
      Size = 13
    end
    object CDSMovimientosPAGADO: TStringField
      DisplayLabel = 'Pagado'
      FieldName = 'PAGADO'
      Origin = 'PAGADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDSMovimientosMUESTRACLIENTE: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'MUESTRACLIENTE'
      Origin = 'CLIENTE'
      ProviderFlags = []
      Size = 6
    end
    object CDSMovimientosMUESTRAFECHA: TSQLTimeStampField
      Alignment = taCenter
      DisplayLabel = 'Fecha'
      FieldName = 'MUESTRAFECHA'
      Origin = 'FECHAVTA'
      ProviderFlags = []
    end
    object CDSMovimientosMUESTRANRO: TStringField
      Alignment = taCenter
      FieldName = 'MUESTRANRO'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Visible = False
      Size = 13
    end
    object CDSMovimientosMUESTRADETALLE: TStringField
      Alignment = taCenter
      DisplayLabel = 'Detalle'
      FieldName = 'MUESTRADETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
    end
    object CDSMovimientosIMPORTE_1: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE_1'
      Origin = 'IMPORTE_1'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovimientosMUESTRADEBE: TFloatField
      FieldName = 'MUESTRADEBE'
      Origin = 'DEBE'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSMovimientosMUESTRAHABER: TFloatField
      FieldName = 'MUESTRAHABER'
      Origin = 'HABER'
      ProviderFlags = []
      ReadOnly = True
    end
    object CDSMovimientosMUESTRASALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'MUESTRASALDO'
      Origin = 'SALDO'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
  end
  object DSPMovimientos: TDataSetProvider
    DataSet = QMovimientos
    UpdateMode = upWhereKeyOnly
    Left = 704
    Top = 256
  end
  object DSMovimientos: TDataSource
    DataSet = CDSMovimientos
    Left = 816
    Top = 312
  end
  object QMovimientos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select cp.id,cp.cliente,cp.fecha,cp.factura_id,cp.factura_tipo,'
      '  cp.factura_clase,cp.factura_fecha,cp.factura_nrocpbte,'
      '  cp.importe_1,cp.pagado,'
      
        '  m.cliente as MuestraCliente,m.fechavta as MuestraFecha ,m.nroc' +
        'pbte as MuestraNro,'
      
        '  m.detalle as MuestraDetalle,m.debe as MuestraDebe,m.haber as M' +
        'uestraHaber,m.saldo as MuestraSaldo from cupon_abonos cp'
      'left join movccvta m on m.id_cpbte= cp.factura_id'
      'left join clientes c on c.codigo=cp.cliente'
      ''
      'where c.activo<>'#39'N'#39' and cp.fecha between :desde and :hasta')
    Left = 592
    Top = 280
    ParamData = <
      item
        Position = 1
        Name = 'desde'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'hasta'
        DataType = ftDate
        ParamType = ptInput
      end>
    object QMovimientosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMovimientosCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Required = True
      Size = 6
    end
    object QMovimientosFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object QMovimientosFACTURA_ID: TIntegerField
      FieldName = 'FACTURA_ID'
      Origin = 'FACTURA_ID'
      Required = True
    end
    object QMovimientosFACTURA_TIPO: TStringField
      FieldName = 'FACTURA_TIPO'
      Origin = 'FACTURA_TIPO'
      Size = 2
    end
    object QMovimientosFACTURA_CLASE: TStringField
      FieldName = 'FACTURA_CLASE'
      Origin = 'FACTURA_CLASE'
      Size = 2
    end
    object QMovimientosFACTURA_FECHA: TSQLTimeStampField
      FieldName = 'FACTURA_FECHA'
      Origin = 'FACTURA_FECHA'
    end
    object QMovimientosFACTURA_NROCPBTE: TStringField
      FieldName = 'FACTURA_NROCPBTE'
      Origin = 'FACTURA_NROCPBTE'
      Size = 13
    end
    object QMovimientosIMPORTE_1: TFloatField
      FieldName = 'IMPORTE_1'
      Origin = 'IMPORTE_1'
    end
    object QMovimientosPAGADO: TStringField
      FieldName = 'PAGADO'
      Origin = 'PAGADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QMovimientosMUESTRACLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRACLIENTE'
      Origin = 'CLIENTE'
      ProviderFlags = []
      Size = 6
    end
    object QMovimientosMUESTRAFECHA: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAFECHA'
      Origin = 'FECHAVTA'
      ProviderFlags = []
    end
    object QMovimientosMUESTRANRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANRO'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object QMovimientosMUESTRADETALLE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADETALLE'
      Origin = 'DETALLE'
      ProviderFlags = []
    end
    object QMovimientosMUESTRADEBE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRADEBE'
      Origin = 'DEBE'
      ProviderFlags = []
    end
    object QMovimientosMUESTRAHABER: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRAHABER'
      Origin = 'HABER'
      ProviderFlags = []
    end
    object QMovimientosMUESTRASALDO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRASALDO'
      Origin = 'SALDO'
      ProviderFlags = []
    end
  end
end

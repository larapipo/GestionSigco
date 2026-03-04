inherited FormControlCheCompartidos: TFormControlCheCompartidos
  Caption = 'Controls de Cheques Compartidos'
  ClientHeight = 589
  ClientWidth = 832
  ExplicitWidth = 850
  ExplicitHeight = 630
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 832
    Height = 536
    Align = alClient
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 957
    ExplicitHeight = 536
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 832
      Height = 41
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  Control  Cheques Compartidos'
      Color = clMenuHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Padding.Left = 5
      Padding.Right = 5
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 957
      DesignSize = (
        832
        41)
      object Label1: TLabel
        Left = 564
        Top = 0
        Width = 41
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Desde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 813
      end
      object Label2: TLabel
        Left = 683
        Top = 0
        Width = 36
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 932
      end
      object desde: TJvDateEdit
        Left = 562
        Top = 16
        Width = 105
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
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
        Anchors = [akTop, akRight]
        ParentFont = False
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 0
        ExplicitLeft = 811
      end
      object hasta: TJvDateEdit
        Left = 681
        Top = 16
        Width = 105
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
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
        Anchors = [akTop, akRight]
        ParentFont = False
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 1
        ExplicitLeft = 930
      end
      object UpDown1: TUpDown
        Left = 792
        Top = 16
        Width = 16
        Height = 20
        Hint = 'Cambia el Per'#237'odo'
        Anchors = [akTop, akRight]
        Max = 10000
        ParentShowHint = False
        Position = 100
        ShowHint = True
        TabOrder = 2
        OnClick = UpDown1Click
        ExplicitLeft = 1041
      end
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 41
      Width = 832
      Height = 454
      Align = alClient
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      ExplicitLeft = 1
      ExplicitTop = 42
      ExplicitWidth = 1064
      object cxGrid1DBTableView1: TcxGridDBTableView
        PopupMenu = PopupMenu1
        OnDblClick = cxGrid1DBTableView1DblClick
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSCheCompartidos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Width = 50
        end
        object cxGrid1DBTableView1FECHA: TcxGridDBColumn
          DataBinding.FieldName = 'FECHA'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Width = 78
        end
        object cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn
          DataBinding.FieldName = 'TIPOCPBTE'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Width = 33
        end
        object cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn
          DataBinding.FieldName = 'CLASECPBTE'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Width = 40
        end
        object cxGrid1DBTableView1LETRA: TcxGridDBColumn
          DataBinding.FieldName = 'LETRA'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Width = 39
        end
        object cxGrid1DBTableView1SUC: TcxGridDBColumn
          DataBinding.FieldName = 'SUC'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Width = 45
        end
        object cxGrid1DBTableView1NUMERO: TcxGridDBColumn
          DataBinding.FieldName = 'NUMERO'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
        end
        object cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn
          DataBinding.FieldName = 'NROCPBTE'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
        end
        object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
        end
        object cxGrid1DBTableView1NOMBRE: TcxGridDBColumn
          DataBinding.FieldName = 'NOMBRE'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
        end
        object cxGrid1DBTableView1IMPORTE: TcxGridDBColumn
          DataBinding.FieldName = 'IMPORTE'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Width = 100
        end
        object cxGrid1DBTableView1SALDO: TcxGridDBColumn
          DataBinding.FieldName = 'SALDO'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Width = 88
        end
        object cxGrid1DBTableView1DISPONIBLE: TcxGridDBColumn
          DataBinding.FieldName = 'DISPONIBLE'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Width = 54
        end
      end
      object cxGrid1DBTableView2: TcxGridDBTableView
        OnDblClick = cxGrid1DBTableView2DblClick
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSMovChe
        DataController.DetailKeyFieldNames = 'ID_CHEQUE_COMPARTIDO'
        DataController.KeyFieldNames = 'ID_CHEQUE_COMPARTIDO'
        DataController.MasterKeyFieldNames = 'ID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            FieldName = 'IMPORTE'
            Column = cxGrid1DBTableView2IMPORTE
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView2ID_CHEQUE_COMPARTIDO: TcxGridDBColumn
          DataBinding.FieldName = 'ID_CHEQUE_COMPARTIDO'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
        end
        object cxGrid1DBTableView2ID_VALOR: TcxGridDBColumn
          DataBinding.FieldName = 'ID_VALOR'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
        end
        object cxGrid1DBTableView2ID_CAJA: TcxGridDBColumn
          DataBinding.FieldName = 'ID_CAJA'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
        end
        object cxGrid1DBTableView2ID_MOV_CAJA: TcxGridDBColumn
          DataBinding.FieldName = 'ID_MOV_CAJA'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
        end
        object cxGrid1DBTableView2ID_CUENTA_CAJA: TcxGridDBColumn
          DataBinding.FieldName = 'ID_CUENTA_CAJA'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Width = 25
        end
        object cxGrid1DBTableView2FECHA_CAJA: TcxGridDBColumn
          DataBinding.FieldName = 'FECHA_CAJA'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Width = 78
        end
        object cxGrid1DBTableView2FECHA_OPERACION: TcxGridDBColumn
          DataBinding.FieldName = 'FECHA_OPERACION'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Width = 78
        end
        object cxGrid1DBTableView2CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Width = 45
        end
        object cxGrid1DBTableView2NOMBRE: TcxGridDBColumn
          DataBinding.FieldName = 'NOMBRE'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
        end
        object cxGrid1DBTableView2TIPO_COMPROB: TcxGridDBColumn
          DataBinding.FieldName = 'TIPO_COMPROB'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
        end
        object cxGrid1DBTableView2CLASE_COMPROB: TcxGridDBColumn
          DataBinding.FieldName = 'CLASE_COMPROB'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
        end
        object cxGrid1DBTableView2NROCPBTE: TcxGridDBColumn
          DataBinding.FieldName = 'NROCPBTE'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
          Width = 90
        end
        object cxGrid1DBTableView2IMPORTE: TcxGridDBColumn
          DataBinding.FieldName = 'IMPORTE'
          HeaderAlignmentHorz = taCenter
          Options.Focusing = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
        object cxGrid1Level2: TcxGridLevel
          GridView = cxGrid1DBTableView2
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 495
      Width = 832
      Height = 41
      Align = alBottom
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 2
      ExplicitWidth = 957
    end
  end
  inherited ToolBar1: TToolBar
    Top = 536
    Width = 832
    Align = alBottom
    ExplicitTop = 536
    ExplicitWidth = 832
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
    inherited Ne: TSpeedButton
      Visible = False
    end
    inherited btBorrar: TBitBtn
      Visible = False
    end
  end
  inherited Panel1: TPanel
    Top = 566
    Width = 832
    Align = alBottom
    ExplicitTop = 566
    ExplicitWidth = 957
    inherited sbEstado: TStatusBar
      Width = 670
      ExplicitWidth = 670
    end
  end
  inherited ActionList1: TActionList
    object VerificaSaldo: TAction
      Caption = 'Verifica Saldo'
      OnExecute = VerificaSaldoExecute
    end
    object VerificaAll: TAction
      Caption = 'Verifica Todos'
      OnExecute = VerificaAllExecute
    end
  end
  inherited DSBase: TDataSource
    Top = 104
  end
  inherited ImageList1: TImageList
    Top = 112
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
  end
  object QCheCompartidos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtDateTimeStamp
        TargetDataType = dtDate
      end
      item
        SourceDataType = dtDateTime
        TargetDataType = dtDate
      end>
    SQL.Strings = (
      'select c.* from cheque_compartido c '
      '  where c.fecha between :desde and :hasta')
    Left = 136
    Top = 400
    ParamData = <
      item
        Position = 1
        Name = 'DESDE'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Position = 2
        Name = 'HASTA'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
  object DSPCheCompartidos: TDataSetProvider
    DataSet = QCheCompartidos
    Left = 240
    Top = 400
  end
  object CDSCheCompartidos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'HASTA'
        ParamType = ptInput
      end>
    ProviderName = 'DSPCheCompartidos'
    Left = 328
    Top = 400
    object CDSCheCompartidosID: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSCheCompartidosFECHA: TDateField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Origin = 'FECHA'
      Required = True
    end
    object CDSCheCompartidosTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      Required = True
      Size = 2
    end
    object CDSCheCompartidosCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      Size = 2
    end
    object CDSCheCompartidosLETRA: TStringField
      DisplayLabel = 'Letra'
      FieldName = 'LETRA'
      Origin = 'LETRA'
      Required = True
      Size = 1
    end
    object CDSCheCompartidosSUC: TStringField
      DisplayLabel = 'Suc.'
      FieldName = 'SUC'
      Origin = 'SUC'
      Required = True
      Size = 4
    end
    object CDSCheCompartidosNUMERO: TStringField
      DisplayLabel = 'Numero'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
      Size = 8
    end
    object CDSCheCompartidosCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object CDSCheCompartidosNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      Size = 35
    end
    object CDSCheCompartidosRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      Visible = False
      Size = 35
    end
    object CDSCheCompartidosSUCURSALVENTA: TIntegerField
      FieldName = 'SUCURSALVENTA'
      Origin = 'SUCURSALVENTA'
      Required = True
      Visible = False
    end
    object CDSCheCompartidosIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCheCompartidosSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = 'SALDO'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSCheCompartidosDETALLE: TStringField
      DisplayLabel = 'Detalle'
      FieldName = 'DETALLE'
      Origin = 'DETALLE'
      Size = 100
    end
    object CDSCheCompartidosNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      Required = True
      Size = 13
    end
    object CDSCheCompartidosDISPONIBLE: TStringField
      DisplayLabel = 'Dispon.'
      FieldName = 'DISPONIBLE'
      Origin = 'DISPONIBLE'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSCheCompartidos: TDataSource
    DataSet = CDSCheCompartidos
    Left = 424
    Top = 400
  end
  object QMovChe: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select vc.id_cheque_compartido,vc.id_valor,vc.id_caja,vc.id_mov_' +
        'caja,vc.importe,'
      
        '       vc.id_cuenta_caja,cm.fecha_caja,cm.fecha_operacion,cm.tip' +
        'o_comprob,cm.clase_comprob,cm.haber,cm.debe,'
      
        '       rc.codigo,rc.nrocpbte,rc.nombre,cm.id_comprobante from mo' +
        'v_valor_compartido vc'
      '  left join caja_mov cm on cm.id_mov_caja=vc.id_mov_caja'
      '  left join recibos rc on rc.id_rc=cm.id_comprobante'
      'where vc.id_cheque_compartido between :id_desde and :id_hasta')
    Left = 136
    Top = 464
    ParamData = <
      item
        Position = 1
        Name = 'ID_DESDE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ID_HASTA'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DSPMovChe: TDataSetProvider
    DataSet = QMovChe
    Left = 240
    Top = 464
  end
  object CDSMovChe: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_HASTA'
        ParamType = ptInput
      end>
    ProviderName = 'DSPMovChe'
    Left = 328
    Top = 464
    object CDSMovCheID_CHEQUE_COMPARTIDO: TIntegerField
      FieldName = 'ID_CHEQUE_COMPARTIDO'
      Required = True
    end
    object CDSMovCheID_VALOR: TIntegerField
      FieldName = 'ID_VALOR'
      Required = True
    end
    object CDSMovCheID_CAJA: TIntegerField
      FieldName = 'ID_CAJA'
      Required = True
    end
    object CDSMovCheID_MOV_CAJA: TIntegerField
      FieldName = 'ID_MOV_CAJA'
      Required = True
    end
    object CDSMovCheIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovCheID_CUENTA_CAJA: TIntegerField
      DisplayLabel = 'Id.Cta.Caja'
      FieldName = 'ID_CUENTA_CAJA'
    end
    object CDSMovCheFECHA_CAJA: TSQLTimeStampField
      DisplayLabel = 'Fecha Caja'
      FieldName = 'FECHA_CAJA'
      ReadOnly = True
    end
    object CDSMovCheFECHA_OPERACION: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA_OPERACION'
      ReadOnly = True
    end
    object CDSMovCheTIPO_COMPROB: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPO_COMPROB'
      ReadOnly = True
      Size = 2
    end
    object CDSMovCheCLASE_COMPROB: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASE_COMPROB'
      ReadOnly = True
      Size = 2
    end
    object CDSMovCheHABER: TFloatField
      DisplayLabel = 'Haber'
      FieldName = 'HABER'
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovCheDEBE: TFloatField
      DisplayLabel = 'Debe'
      FieldName = 'DEBE'
      ReadOnly = True
      DisplayFormat = ',0.00;-,0.00;-'
    end
    object CDSMovCheCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      ReadOnly = True
      Size = 6
    end
    object CDSMovCheNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      ReadOnly = True
      Size = 13
    end
    object CDSMovCheNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      ReadOnly = True
      Size = 35
    end
    object CDSMovCheID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      ReadOnly = True
    end
  end
  object DSMovChe: TDataSource
    DataSet = CDSMovChe
    Left = 424
    Top = 464
  end
  object spCorrigeSaldo: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'CONTROL_VALORES_COMPARTIDOS'
    Left = 648
    Top = 264
    ParamData = <
      item
        Position = 1
        Name = 'ID_CPTE'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 424
    Top = 208
    object VerificaSaldo1: TMenuItem
      Action = VerificaSaldo
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object VerificaTodos1: TMenuItem
      Action = VerificaAll
    end
  end
end

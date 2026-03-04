object FormControlNetosOPago: TFormControlNetosOPago
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Control de Netos OPago'
  ClientHeight = 510
  ClientWidth = 1230
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pnBase: TPanel
    Left = 0
    Top = 0
    Width = 1230
    Height = 469
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1044
    ExplicitHeight = 421
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 1228
      Height = 467
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 1042
      ExplicitHeight = 419
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DSControl
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            Position = spFooter
            FieldName = 'APLICA_NETO'
            Column = cxGrid1DBTableView1APLICA_NETO
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
            FieldName = 'APLICA_NETO'
            Column = cxGrid1DBTableView1APLICA_NETO
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupFooterMultiSummaries = True
        OptionsView.GroupFooters = gfAlwaysVisible
        object cxGrid1DBTableView1ID_OP: TcxGridDBColumn
          DataBinding.FieldName = 'ID_OP'
          Visible = False
          GroupIndex = 0
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn
          DataBinding.FieldName = 'TIPOCPBTE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn
          DataBinding.FieldName = 'CLASECPBTE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 28
        end
        object cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn
          DataBinding.FieldName = 'NROCPBTE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 87
        end
        object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGrid1DBTableView1NOMBRE: TcxGridDBColumn
          DataBinding.FieldName = 'NOMBRE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 199
        end
        object cxGrid1DBTableView1TOTAL: TcxGridDBColumn
          DataBinding.FieldName = 'TOTAL'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 86
        end
        object cxGrid1DBTableView1SALDO_APLICAR: TcxGridDBColumn
          DataBinding.FieldName = 'SALDO_APLICAR'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGrid1DBTableView1TOTAL_PAGOS_DEL_MES: TcxGridDBColumn
          DataBinding.FieldName = 'TOTAL_PAGOS_DEL_MES'
          HeaderAlignmentHorz = taCenter
          Width = 103
        end
        object cxGrid1DBTableView1APLICA_ID_CPBTE: TcxGridDBColumn
          DataBinding.FieldName = 'APLICA_ID_CPBTE'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGrid1DBTableView1APLICA_TIPOCPBTE: TcxGridDBColumn
          DataBinding.FieldName = 'APLICA_TIPOCPBTE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 99
        end
        object cxGrid1DBTableView1APLICA_CLASECPBTE: TcxGridDBColumn
          DataBinding.FieldName = 'APLICA_CLASECPBTE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 111
        end
        object cxGrid1DBTableView1APLICA_NROCPBTE: TcxGridDBColumn
          DataBinding.FieldName = 'APLICA_NROCPBTE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
        end
        object cxGrid1DBTableView1APLICA_NETO: TcxGridDBColumn
          DataBinding.FieldName = 'APLICA_NETO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 101
        end
        object cxGrid1DBTableView1APLICA_IVA: TcxGridDBColumn
          DataBinding.FieldName = 'APLICA_IVA'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 73
        end
        object cxGrid1DBTableView1IMPORTE: TcxGridDBColumn
          DataBinding.FieldName = 'IMPORTE'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Focusing = False
          Width = 83
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object pnPie: TPanel
    Left = 0
    Top = 469
    Width = 1230
    Height = 41
    Align = alBottom
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 421
    ExplicitWidth = 1044
    DesignSize = (
      1230
      41)
    object Label1: TLabel
      Left = 16
      Top = 6
      Width = 31
      Height = 13
      Caption = 'ID_OP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 53
      Top = 6
      Width = 65
      Height = 17
      DataField = 'ID_OP'
      DataSource = DSControl
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 1114
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Excel'
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 928
    end
  end
  object QControl: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        ' select o.id_op,o.tipocpbte,o.clasecpbte,o.nrocpbte,o.codigo,o.n' +
        'ombre,'
      
        ' o.total,o.saldo_aplicar,o.total_pagos_del_mes, m.aplica_id_cpbt' +
        'e,m.aplica_tipocpbte,'
      
        ' m.aplica_clasecpbte,m.aplica_nrocpbte,m.aplica_neto,m.aplica_iv' +
        'a,m.importe from ordenpago o'
      '   left join movaplicacccompra m on m.id_cpbte=o.id_op'
      
        ' where extract (year from o.fecha)=:anio and extract (month from' +
        ' o.fecha) = :mes and o.codigo=:codigo')
    Left = 136
    Top = 104
    ParamData = <
      item
        Position = 1
        Name = 'ANIO'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'MES'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'CODIGO'
        DataType = ftString
        ParamType = ptInput
        Size = 6
      end>
    object QControlID_OP: TIntegerField
      FieldName = 'ID_OP'
      Origin = 'ID_OP'
      ProviderFlags = [pfInKey]
    end
    object QControlTIPOCPBTE: TStringField
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      Size = 2
    end
    object QControlCLASECPBTE: TStringField
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      ProviderFlags = []
      Size = 2
    end
    object QControlNROCPBTE: TStringField
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object QControlCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      Size = 6
    end
    object QControlNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object QControlTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
    end
    object QControlSALDO_APLICAR: TFloatField
      FieldName = 'SALDO_APLICAR'
      Origin = 'SALDO_APLICAR'
      ProviderFlags = []
    end
    object QControlTOTAL_PAGOS_DEL_MES: TFloatField
      FieldName = 'TOTAL_PAGOS_DEL_MES'
      Origin = 'TOTAL_PAGOS_DEL_MES'
    end
    object QControlAPLICA_ID_CPBTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'APLICA_ID_CPBTE'
      Origin = 'APLICA_ID_CPBTE'
      ProviderFlags = []
    end
    object QControlAPLICA_TIPOCPBTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'APLICA_TIPOCPBTE'
      Origin = 'APLICA_TIPOCPBTE'
      ProviderFlags = []
      Size = 2
    end
    object QControlAPLICA_CLASECPBTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'APLICA_CLASECPBTE'
      Origin = 'APLICA_CLASECPBTE'
      ProviderFlags = []
      Size = 2
    end
    object QControlAPLICA_NROCPBTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'APLICA_NROCPBTE'
      Origin = 'APLICA_NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object QControlAPLICA_NETO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'APLICA_NETO'
      Origin = 'APLICA_NETO'
      ProviderFlags = []
    end
    object QControlAPLICA_IVA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'APLICA_IVA'
      Origin = 'APLICA_IVA'
      ProviderFlags = []
    end
    object QControlIMPORTE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      ProviderFlags = []
    end
  end
  object DSControl: TDataSource
    DataSet = CDSControl
    Left = 416
    Top = 128
  end
  object DSPControl: TDataSetProvider
    DataSet = QControl
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 192
    Top = 104
  end
  object CDSControl: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftSmallint
        Name = 'ANIO'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'MES'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 6
      end>
    ProviderName = 'DSPControl'
    AfterPost = CDSControlAfterPost
    Left = 257
    Top = 112
    object CDSControlID_OP: TIntegerField
      FieldName = 'ID_OP'
      Origin = 'ID_OP'
      ProviderFlags = [pfInKey]
      Visible = False
    end
    object CDSControlTIPOCPBTE: TStringField
      DisplayLabel = 'Tp'
      FieldName = 'TIPOCPBTE'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSControlCLASECPBTE: TStringField
      DisplayLabel = 'Cl'
      FieldName = 'CLASECPBTE'
      Origin = 'CLASECPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSControlNROCPBTE: TStringField
      DisplayLabel = 'Nro.Cpbte'
      FieldName = 'NROCPBTE'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object CDSControlCODIGO: TStringField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      Size = 6
    end
    object CDSControlNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object CDSControlTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSControlSALDO_APLICAR: TFloatField
      DisplayLabel = 'Saldo Apl.'
      FieldName = 'SALDO_APLICAR'
      Origin = 'SALDO_APLICAR'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSControlTOTAL_PAGOS_DEL_MES: TFloatField
      DisplayLabel = 'Pagos del Mes'
      FieldName = 'TOTAL_PAGOS_DEL_MES'
      Origin = 'TOTAL_PAGOS_DEL_MES'
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSControlAPLICA_ID_CPBTE: TIntegerField
      FieldName = 'APLICA_ID_CPBTE'
      Origin = 'APLICA_ID_CPBTE'
      ProviderFlags = []
      Visible = False
    end
    object CDSControlAPLICA_TIPOCPBTE: TStringField
      DisplayLabel = 'Tipo Cbte Aplicado'
      FieldName = 'APLICA_TIPOCPBTE'
      Origin = 'APLICA_TIPOCPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSControlAPLICA_CLASECPBTE: TStringField
      DisplayLabel = 'Clase Cpbte Aplicado'
      FieldName = 'APLICA_CLASECPBTE'
      Origin = 'APLICA_CLASECPBTE'
      ProviderFlags = []
      Size = 2
    end
    object CDSControlAPLICA_NROCPBTE: TStringField
      DisplayLabel = 'Cpbte Nro.Aplicado'
      DisplayWidth = 16
      FieldName = 'APLICA_NROCPBTE'
      Origin = 'APLICA_NROCPBTE'
      ProviderFlags = []
      Size = 13
    end
    object CDSControlAPLICA_NETO: TFloatField
      DisplayLabel = 'Neto'
      FieldName = 'APLICA_NETO'
      Origin = 'APLICA_NETO'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSControlAPLICA_IVA: TFloatField
      DisplayLabel = 'IVA'
      FieldName = 'APLICA_IVA'
      Origin = 'APLICA_IVA'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
    object CDSControlIMPORTE: TFloatField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Origin = 'IMPORTE'
      ProviderFlags = []
      DisplayFormat = ',0.00'
      EditFormat = '0.00'
    end
  end
  object SaveDialog: TSaveDialog
    Left = 648
    Top = 200
  end
end

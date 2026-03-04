inherited FormControlUsuarios_2: TFormControlUsuarios_2
  Caption = 'Control de Usuarios'
  ClientHeight = 716
  ClientWidth = 980
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 998
  ExplicitHeight = 757
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 980
    Height = 663
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 980
    ExplicitHeight = 663
    object Splitter1: TSplitter
      Left = 505
      Top = 0
      Height = 663
      ExplicitTop = 1
    end
    object Panel2: TPanel
      Left = 508
      Top = 0
      Width = 472
      Height = 663
      Align = alClient
      Caption = 'Panel2'
      TabOrder = 0
      object tvPermisosCopia: TAdvCheckedTreeView
        Left = 1
        Top = 42
        Width = 470
        Height = 579
        Align = alClient
        ParentDoubleBuffered = False
        DoubleBuffered = True
        TabOrder = 0
        Groups = <>
        GroupsAppearance.TopSize = 50.000000000000000000
        GroupsAppearance.BottomSize = 50.000000000000000000
        GroupsAppearance.TopFont.Charset = DEFAULT_CHARSET
        GroupsAppearance.TopFont.Color = clBlack
        GroupsAppearance.TopFont.Height = -11
        GroupsAppearance.TopFont.Name = 'Tahoma'
        GroupsAppearance.TopFont.Style = []
        GroupsAppearance.BottomFont.Charset = DEFAULT_CHARSET
        GroupsAppearance.BottomFont.Color = clBlack
        GroupsAppearance.BottomFont.Height = -11
        GroupsAppearance.BottomFont.Name = 'Tahoma'
        GroupsAppearance.BottomFont.Style = []
        Columns = <
          item
            Name = 'Column0'
            Text = 'Permisos Copia'
            Width = 100.000000000000000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            TopFont.Charset = DEFAULT_CHARSET
            TopFont.Color = clWindowText
            TopFont.Height = -11
            TopFont.Name = 'Tahoma'
            TopFont.Style = []
            BottomFont.Charset = DEFAULT_CHARSET
            BottomFont.Color = clWindowText
            BottomFont.Height = -11
            BottomFont.Name = 'Tahoma'
            BottomFont.Style = []
          end>
        Nodes = <
          item
            Values = <
              item
                Text = 'Audi'
                CheckType = tvntCheckBox
              end>
            Expanded = True
            Extended = True
            Tag = 0
            Nodes = <
              item
                Values = <
                  item
                    Text = 'A3'
                    CheckType = tvntCheckBox
                  end>
                Expanded = True
                Tag = 0
                Nodes = <>
              end
              item
                Values = <
                  item
                    Text = 'A5 series'
                    CheckType = tvntCheckBox
                  end>
                Expanded = True
                Tag = 0
                Nodes = <
                  item
                    Values = <
                      item
                        Text = 'S5'
                        CheckType = tvntCheckBox
                      end>
                    Expanded = True
                    Tag = 0
                    Nodes = <>
                  end
                  item
                    Values = <
                      item
                        Text = 'RS5'
                        CheckType = tvntCheckBox
                      end>
                    Expanded = True
                    Tag = 0
                    Nodes = <>
                  end>
              end
              item
                Values = <
                  item
                    Text = 'A8'
                    CheckType = tvntCheckBox
                  end>
                Expanded = True
                Tag = 0
                Nodes = <>
              end>
          end
          item
            Values = <
              item
                Text = 'Mercedes'
                CheckType = tvntCheckBox
              end>
            Expanded = True
            Extended = True
            Tag = 0
            Nodes = <
              item
                Values = <
                  item
                    Text = 'SLS'
                    CheckType = tvntCheckBox
                  end>
                Expanded = True
                Tag = 0
                Nodes = <>
              end
              item
                Values = <
                  item
                    Text = 'SLK'
                    CheckType = tvntCheckBox
                  end>
                Expanded = True
                Tag = 0
                Nodes = <>
              end
              item
                Values = <
                  item
                    Text = 'GLA'
                    CheckType = tvntCheckBox
                  end>
                Expanded = True
                Tag = 0
                Nodes = <>
              end>
          end>
        ColumnsAppearance.TopSize = 25.000000000000000000
        ColumnsAppearance.BottomSize = 25.000000000000000000
        ColumnsAppearance.TopFont.Charset = DEFAULT_CHARSET
        ColumnsAppearance.TopFont.Color = clBlack
        ColumnsAppearance.TopFont.Height = -11
        ColumnsAppearance.TopFont.Name = 'Tahoma'
        ColumnsAppearance.TopFont.Style = []
        ColumnsAppearance.BottomFont.Charset = DEFAULT_CHARSET
        ColumnsAppearance.BottomFont.Color = clBlack
        ColumnsAppearance.BottomFont.Height = -11
        ColumnsAppearance.BottomFont.Name = 'Tahoma'
        ColumnsAppearance.BottomFont.Style = []
        NodesAppearance.ExpandWidth = 15.000000000000000000
        NodesAppearance.ExpandHeight = 15.000000000000000000
        NodesAppearance.LevelIndent = 20.000000000000000000
        NodesAppearance.FixedHeight = 25.000000000000000000
        NodesAppearance.VariableMinimumHeight = 25.000000000000000000
        NodesAppearance.Font.Charset = DEFAULT_CHARSET
        NodesAppearance.Font.Color = clBlack
        NodesAppearance.Font.Height = -11
        NodesAppearance.Font.Name = 'Tahoma'
        NodesAppearance.Font.Style = []
        NodesAppearance.TitleFont.Charset = DEFAULT_CHARSET
        NodesAppearance.TitleFont.Color = clBlack
        NodesAppearance.TitleFont.Height = -11
        NodesAppearance.TitleFont.Name = 'Tahoma'
        NodesAppearance.TitleFont.Style = []
        NodesAppearance.ExtendedFont.Charset = DEFAULT_CHARSET
        NodesAppearance.ExtendedFont.Color = clWindowText
        NodesAppearance.ExtendedFont.Height = -11
        NodesAppearance.ExtendedFont.Name = 'Tahoma'
        NodesAppearance.ExtendedFont.Style = []
        NodesAppearance.ExpandNodeIcon.Data = {
          0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000000B00
          00000B080200000026CEE071000000017352474200AECE1CE90000000467414D
          410000B18F0BFC6105000000097048597300000EC300000EC301C76FA8640000
          001874455874536F667477617265007061696E742E6E657420342E302E36FC8C
          63DF000000334944415478DA63ACAEAD66C00B18812A5A9A5A7049D7D4D5A0AB
          F0F6F3DEBA692B8D540025301D01544A6F7710080FFC610A005ADF3FFDA83755
          DB0000000049454E44AE426082}
        NodesAppearance.CollapseNodeIcon.Data = {
          0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000000B00
          00000B080200000026CEE071000000017352474200AECE1CE90000000467414D
          410000B18F0BFC6105000000097048597300000EC300000EC301C76FA8640000
          001874455874536F667477617265007061696E742E6E657420342E302E36FC8C
          63DF0000002C4944415478DA63ACAEAD66C00B18812A5A9A5A7049D7D4D5D05B
          85B79F37B2DCD64D5B07C61DF854E00F53005DBC2DFDD89D52A7000000004945
          4E44AE426082}
        NodesAppearance.ExpandNodeIconLarge.Data = {
          0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000001600
          00001608020000004BD6FB6C000000017352474200AECE1CE90000000467414D
          410000B18F0BFC6105000000097048597300000EC300000EC301C76FA8640000
          001874455874536F667477617265007061696E742E6E657420342E302E36FC8C
          63DF000000404944415478DA63ACAEAD66A00C3052CD8896A6163234D7D4D5D0
          C5086F3F6F20B975D3D6512306C40888066200C450DA183138C262D488C1535E
          5002A8600400AA8F7FF987EC13380000000049454E44AE426082}
        NodesAppearance.CollapseNodeIconLarge.Data = {
          0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000001600
          00001608020000004BD6FB6C0000000467414D410000B18F0BFC610500000009
          7048597300000EC200000EC20115284A800000001874455874536F6674776172
          65007061696E742E6E657420342E302E36FC8C63DF000000384944415478DA63
          ACAEAD66A00C3052CD8896A6163234D7D4D58C1A31628CF0F6F3C6A36DEBA6AD
          7431627084C5A81183C1084A00158C000071065BF9A44132100000000049454E
          44AE426082}
      end
      object Panel5: TPanel
        Left = 1
        Top = 621
        Width = 470
        Height = 41
        Align = alBottom
        BevelOuter = bvLowered
        Caption = 'Copia de Permisos'
        Color = clMenuHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
      end
      object Panel7: TPanel
        Left = 1
        Top = 1
        Width = 470
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Copia de Permisos'
        Color = clMenuHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 505
      Height = 663
      Align = alLeft
      Caption = 'Panel2'
      TabOrder = 1
      object tvPermisos: TAdvCheckedTreeView
        Left = 1
        Top = 42
        Width = 503
        Height = 579
        Align = alClient
        Ctl3D = True
        ParentCtl3D = False
        ParentDoubleBuffered = False
        DoubleBuffered = True
        TabOrder = 0
        Stroke.Color = clDarkgray
        Groups = <>
        GroupsAppearance.TopSize = 50.000000000000000000
        GroupsAppearance.BottomSize = 50.000000000000000000
        GroupsAppearance.TopFill.Kind = gfkNone
        GroupsAppearance.BottomFill.Kind = gfkNone
        GroupsAppearance.TopFont.Charset = DEFAULT_CHARSET
        GroupsAppearance.TopFont.Color = clBlack
        GroupsAppearance.TopFont.Height = -11
        GroupsAppearance.TopFont.Name = 'Tahoma'
        GroupsAppearance.TopFont.Style = []
        GroupsAppearance.BottomFont.Charset = DEFAULT_CHARSET
        GroupsAppearance.BottomFont.Color = clBlack
        GroupsAppearance.BottomFont.Height = -11
        GroupsAppearance.BottomFont.Name = 'Tahoma'
        GroupsAppearance.BottomFont.Style = []
        Columns = <
          item
            Name = 'Column0'
            Text = 'Permisos Actuales'
            Width = 100.000000000000000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            TopFont.Charset = DEFAULT_CHARSET
            TopFont.Color = clWindowText
            TopFont.Height = -11
            TopFont.Name = 'Tahoma'
            TopFont.Style = []
            BottomFont.Charset = DEFAULT_CHARSET
            BottomFont.Color = clWindowText
            BottomFont.Height = -11
            BottomFont.Name = 'Tahoma'
            BottomFont.Style = []
          end>
        Nodes = <>
        ColumnsAppearance.TopSize = 25.000000000000000000
        ColumnsAppearance.BottomSize = 25.000000000000000000
        ColumnsAppearance.TopFont.Charset = DEFAULT_CHARSET
        ColumnsAppearance.TopFont.Color = clBlack
        ColumnsAppearance.TopFont.Height = -11
        ColumnsAppearance.TopFont.Name = 'Tahoma'
        ColumnsAppearance.TopFont.Style = []
        ColumnsAppearance.BottomFont.Charset = DEFAULT_CHARSET
        ColumnsAppearance.BottomFont.Color = clBlack
        ColumnsAppearance.BottomFont.Height = -11
        ColumnsAppearance.BottomFont.Name = 'Tahoma'
        ColumnsAppearance.BottomFont.Style = []
        ColumnsAppearance.TopFill.Kind = gfkNone
        ColumnsAppearance.BottomFill.Kind = gfkNone
        NodesAppearance.ExpandWidth = 15.000000000000000000
        NodesAppearance.ExpandHeight = 15.000000000000000000
        NodesAppearance.LevelIndent = 20.000000000000000000
        NodesAppearance.FixedHeight = 25.000000000000000000
        NodesAppearance.VariableMinimumHeight = 25.000000000000000000
        NodesAppearance.Font.Charset = DEFAULT_CHARSET
        NodesAppearance.Font.Color = clBlack
        NodesAppearance.Font.Height = -11
        NodesAppearance.Font.Name = 'Tahoma'
        NodesAppearance.Font.Style = []
        NodesAppearance.TitleFont.Charset = DEFAULT_CHARSET
        NodesAppearance.TitleFont.Color = clBlack
        NodesAppearance.TitleFont.Height = -11
        NodesAppearance.TitleFont.Name = 'Tahoma'
        NodesAppearance.TitleFont.Style = [fsBold]
        NodesAppearance.ExtendedFont.Charset = DEFAULT_CHARSET
        NodesAppearance.ExtendedFont.Color = clWindowText
        NodesAppearance.ExtendedFont.Height = -11
        NodesAppearance.ExtendedFont.Name = 'Tahoma'
        NodesAppearance.ExtendedFont.Style = []
        NodesAppearance.ExpandNodeIcon.Data = {
          0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000000B00
          00000B080200000026CEE071000000017352474200AECE1CE90000000467414D
          410000B18F0BFC6105000000097048597300000EC300000EC301C76FA8640000
          001874455874536F667477617265007061696E742E6E657420342E302E36FC8C
          63DF000000334944415478DA63ACAEAD66C00B18812A5A9A5A7049D7D4D5A0AB
          F0F6F3DEBA692B8D540025301D01544A6F7710080FFC610A005ADF3FFDA83755
          DB0000000049454E44AE426082}
        NodesAppearance.CollapseNodeIcon.Data = {
          0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000000B00
          00000B080200000026CEE071000000017352474200AECE1CE90000000467414D
          410000B18F0BFC6105000000097048597300000EC300000EC301C76FA8640000
          001874455874536F667477617265007061696E742E6E657420342E302E36FC8C
          63DF0000002C4944415478DA63ACAEAD66C00B18812A5A9A5A7049D7D4D5D05B
          85B79F37B2DCD64D5B07C61DF854E00F53005DBC2DFDD89D52A7000000004945
          4E44AE426082}
        NodesAppearance.ExpandNodeIconLarge.Data = {
          0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000001600
          00001608020000004BD6FB6C000000017352474200AECE1CE90000000467414D
          410000B18F0BFC6105000000097048597300000EC300000EC301C76FA8640000
          001874455874536F667477617265007061696E742E6E657420342E302E36FC8C
          63DF000000404944415478DA63ACAEAD66A00C3052CD8896A6163234D7D4D5D0
          C5086F3F6F20B975D3D6512306C40888066200C450DA183138C262D488C1535E
          5002A8600400AA8F7FF987EC13380000000049454E44AE426082}
        NodesAppearance.CollapseNodeIconLarge.Data = {
          0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000001600
          00001608020000004BD6FB6C0000000467414D410000B18F0BFC610500000009
          7048597300000EC200000EC20115284A800000001874455874536F6674776172
          65007061696E742E6E657420342E302E36FC8C63DF000000384944415478DA63
          ACAEAD66A00C3052CD8896A6163234D7D4D58C1A31628CF0F6F3C6A36DEBA6AD
          7431627084C5A81183C1084A00158C000071065BF9A44132100000000049454E
          44AE426082}
      end
      object Panel4: TPanel
        Left = 1
        Top = 621
        Width = 503
        Height = 41
        Align = alBottom
        BevelOuter = bvLowered
        Caption = 'Permisos Actuales'
        Color = clMenuHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object lbPerfil: TLabel
          Left = 360
          Top = 6
          Width = 31
          Height = 13
          Caption = 'lbPerfil'
        end
      end
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 503
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Permisos Actuales'
        Color = clMenuHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  inherited ToolBar1: TToolBar
    Top = 663
    Width = 980
    Align = alBottom
    ExplicitTop = 663
    ExplicitWidth = 980
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
    object BitBtn1: TBitBtn
      Left = 557
      Top = 0
      Width = 108
      Height = 29
      Action = CargarPermisos
      Caption = 'CargarPermisos'
      TabOrder = 7
    end
  end
  inherited Panel1: TPanel
    Top = 693
    Width = 980
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 693
    ExplicitWidth = 980
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 891
      ExplicitWidth = 891
    end
  end
  inherited ActionList1: TActionList
    Left = 568
    Top = 352
    object CargarPermisos: TAction
      Caption = 'CargarPermisos'
      OnExecute = CargarPermisosExecute
    end
    object HacerCopia: TAction
      Caption = 'HacerCopia'
      OnExecute = HacerCopiaExecute
    end
  end
  inherited DSBase: TDataSource
    Left = 464
    Top = 80
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
  end
  inherited JvAppIniFileStorage1: TJvAppIniFileStorage
    Left = 376
    Top = 200
  end
  inherited QUltimoCodigo2: TFDQuery
    Top = 328
  end
  object QPermisos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      ' select pa.prof_id,pr.prof_description,pa.comp_id,cm.comp_name, '
      '        pa.sec_level from ucs_paccess pa'
      '          left join ucs_profiles pr on pr.prof_id=pa.prof_id'
      '          left join ucs_comps cm on cm.comp_id=pa.comp_id'
      '         where cm.parent_id>0')
    Left = 73
    Top = 506
  end
  object QSetPermisos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'update ucs_paccess ac  set ac.sec_level=:estado'
      '  where ac.prof_id=:prof_id and ac.comp_id=:comp_id')
    Left = 449
    Top = 554
    ParamData = <
      item
        Name = 'ESTADO'
        DataType = ftString
        ParamType = ptInput
        Size = 1
        Value = Null
      end
      item
        Name = 'PROF_ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'COMP_ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object QGetId: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select pa.prof_id,pa.comp_id from ucs_paccess pa'
      '      left join ucs_profiles pr on pr.prof_id=pa.prof_id'
      '      left join ucs_comps cm on cm.comp_id=pa.comp_id'
      
        '  where pr.prof_description = :perfil and cm.comp_name = :compon' +
        'ente')
    Left = 585
    Top = 546
    ParamData = <
      item
        Name = 'PERFIL'
        DataType = ftString
        ParamType = ptInput
        Size = 30
        Value = Null
      end
      item
        Name = 'COMPONENTE'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end>
  end
  object DataSource1: TDataSource
    Left = 136
    Top = 616
  end
  object CDSPermisos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPPermisos'
    Left = 216
    Top = 512
    object CDSPermisosPROF_ID: TIntegerField
      FieldName = 'PROF_ID'
      Origin = 'PROF_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPermisosPROF_DESCRIPTION: TStringField
      FieldName = 'PROF_DESCRIPTION'
      Origin = 'PROF_DESCRIPTION'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object CDSPermisosCOMP_ID: TIntegerField
      FieldName = 'COMP_ID'
      Origin = 'COMP_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPermisosCOMP_NAME: TStringField
      FieldName = 'COMP_NAME'
      Origin = 'COMP_NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object CDSPermisosSEC_LEVEL: TStringField
      FieldName = 'SEC_LEVEL'
      Origin = 'SEC_LEVEL'
      Size = 1
    end
    object CDSPermisosCATEGORIA: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CATEGORIA'
      Size = 100
    end
  end
  object DSPPermisos: TDataSetProvider
    DataSet = QPermisos
    Options = [poAllowCommandText]
    Left = 152
    Top = 512
  end
  object spRestaurar: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'RESTAURAR_PERMISOS'
    Left = 672
    Top = 536
    ParamData = <
      item
        Position = 1
        Name = 'PERFIL'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end>
  end
  object spCopiarPermisos: TFDStoredProc
    Connection = DMMain_FD.fdcGestion
    StoredProcName = 'TOOL_COPIAR_PREMISOS'
    Left = 672
    Top = 664
  end
  object QPermisosBk: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from UCS_COPIA_PERMISOS'
      '  where prof_description<>'#39'#39#39'#39' and comp_name<>'#39'#39#39'#39
      '  order by prof_id,comp_id')
    Left = 642
    Top = 418
  end
  object CDSPermisosBk: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPPermisosBk'
    Left = 786
    Top = 426
    object CDSPermisosBkPROF_ID: TIntegerField
      FieldName = 'PROF_ID'
      Origin = 'PROF_ID'
    end
    object CDSPermisosBkPROF_DESCRIPTION: TStringField
      FieldName = 'PROF_DESCRIPTION'
      Origin = 'PROF_DESCRIPTION'
      Size = 30
    end
    object CDSPermisosBkCOMP_ID: TIntegerField
      FieldName = 'COMP_ID'
      Origin = 'COMP_ID'
    end
    object CDSPermisosBkCOMP_NAME: TStringField
      FieldName = 'COMP_NAME'
      Origin = 'COMP_NAME'
      Size = 100
    end
    object CDSPermisosBkSEC_LEVEL: TStringField
      FieldName = 'SEC_LEVEL'
      Origin = 'SEC_LEVEL'
      FixedChar = True
      Size = 1
    end
    object CDSPermisosBkCATEGORIA: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CATEGORIA'
      Size = 100
    end
  end
  object DSPPermisosBk: TDataSetProvider
    DataSet = QPermisosBk
    Options = []
    Left = 730
    Top = 426
  end
  object mtAcciones: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 522
    Top = 458
    object mtAccionesACCION: TStringField
      FieldName = 'ACCION'
      Size = 100
    end
    object mtAccionesCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Size = 100
    end
  end
end

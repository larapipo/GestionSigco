inherited FormKanbanPrespuesto: TFormKanbanPrespuesto
  Caption = 'Kanban Prespuesto'
  ClientHeight = 743
  ClientWidth = 1058
  StyleElements = [seFont, seClient, seBorder]
  OnResize = FormResize
  ExplicitWidth = 1076
  ExplicitHeight = 784
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Width = 1058
    Height = 690
    Align = alClient
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1058
    ExplicitHeight = 690
    object pnCab: TPanel
      Left = 0
      Top = 0
      Width = 1058
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 0
      DesignSize = (
        1058
        57)
      object Label1: TLabel
        Left = 813
        Top = 5
        Width = 31
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Desde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 790
      end
      object Label2: TLabel
        Left = 924
        Top = 5
        Width = 28
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Hasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 901
      end
      object Label3: TLabel
        Left = 12
        Top = 5
        Width = 39
        Height = 13
        Caption = 'Usuario '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object desde: TJvDateEdit
        Left = 813
        Top = 19
        Width = 105
        Height = 21
        ClickKey = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
        Images = ImageList1
        ImageKind = ikCustom
        NumGlyphs = 2
        ButtonWidth = 22
        Anchors = [akTop, akRight]
        ParentFont = False
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 0
        OnAcceptDate = desdeAcceptDate
      end
      object hasta: TJvDateEdit
        Left = 924
        Top = 19
        Width = 105
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
        ButtonWidth = 22
        Anchors = [akTop, akRight]
        ParentFont = False
        PopupColor = clBtnFace
        ShowNullDate = False
        TabOrder = 1
        OnAcceptDate = hastaAcceptDate
      end
      object UpDown1: TUpDown
        Left = 1035
        Top = 19
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
      end
      object cbUsuarios: TJvDBLookupCombo
        Left = 10
        Top = 24
        Width = 299
        Height = 21
        EmptyValue = 'Sin Seleccion'
        LookupField = 'USER_ID'
        LookupDisplay = 'REAL_NAME'
        LookupSource = DSUsuarios
        TabOrder = 3
        OnClick = cbUsuariosClick
      end
    end
    object fncKPresupuestos: TTMSFNCKanbanBoard
      Left = 0
      Top = 57
      Width = 1058
      Height = 592
      AdaptToStyle = True
      Align = alClient
      ParentDoubleBuffered = False
      Color = clMoneyGreen
      DoubleBuffered = True
      TabOrder = 1
      Adapter = TMSFNCKDatabaseAdapter
      Stroke.Color = 15987699
      Columns = <
        item
          Name = 'Header'
          HeaderText = 'Confeccionados'
          FooterText = 'Footer 0'
          Width = 300.000000000000000000
          UseDefaultAppearance = False
          HeaderFill.Kind = gfkGradient
          HeaderFill.TextureMode = gtmOriginal
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clBlue
          HeaderFont.Height = -12
          HeaderFont.Name = 'Segoe UI'
          HeaderFont.Style = [fsBold]
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'Segoe UI'
          FooterFont.Style = []
          Items = <>
          Expandable = True
          Filter = <>
          Sorting = kbsNormal
        end
        item
          Name = 'Header1'
          HeaderText = 'Aceptados'
          FooterText = 'Footer 1'
          Width = 300.000000000000000000
          UseDefaultAppearance = False
          HeaderFill.Kind = gfkGradient
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clBlue
          HeaderFont.Height = -12
          HeaderFont.Name = 'Segoe UI'
          HeaderFont.Style = [fsBold]
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'Segoe UI'
          FooterFont.Style = []
          Items = <>
          Expandable = True
          Filter = <>
          Sorting = kbsNormal
        end
        item
          Name = 'Header2'
          HeaderText = 'Cobrados'
          FooterText = 'Footer 2'
          Width = 300.000000000000000000
          UseDefaultAppearance = False
          HeaderFill.Kind = gfkGradient
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clBlue
          HeaderFont.Height = -12
          HeaderFont.Name = 'Segoe UI'
          HeaderFont.Style = [fsBold]
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'Segoe UI'
          FooterFont.Style = []
          Items = <>
          Filter = <>
          Sorting = kbsNormal
        end
        item
          Name = 'Header3'
          HeaderText = 'Entregados'
          FooterText = 'Footer 3'
          Width = 300.000000000000000000
          UseDefaultAppearance = False
          HeaderFill.Kind = gfkGradient
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clBlue
          HeaderFont.Height = -12
          HeaderFont.Name = 'Segoe UI'
          HeaderFont.Style = [fsBold]
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'Segoe UI'
          FooterFont.Style = []
          Items = <>
          Filter = <>
          Sorting = kbsNormal
        end>
      ColumnsAppearance.Margins.Left = 10.000000000000000000
      ColumnsAppearance.Margins.Top = 10.000000000000000000
      ColumnsAppearance.Margins.Right = 10.000000000000000000
      ColumnsAppearance.Margins.Bottom = 10.000000000000000000
      ColumnsAppearance.HeaderFont.Charset = DEFAULT_CHARSET
      ColumnsAppearance.HeaderFont.Color = 4539717
      ColumnsAppearance.HeaderFont.Height = -13
      ColumnsAppearance.HeaderFont.Name = 'Segoe UI'
      ColumnsAppearance.HeaderFont.Style = [fsBold]
      ColumnsAppearance.FooterFont.Charset = DEFAULT_CHARSET
      ColumnsAppearance.FooterFont.Color = clBlack
      ColumnsAppearance.FooterFont.Height = -11
      ColumnsAppearance.FooterFont.Name = 'Segoe UI'
      ColumnsAppearance.FooterFont.Style = []
      ColumnsAppearance.HeaderFill.Kind = gfkGradient
      ColumnsAppearance.HeaderFill.Color = 16380654
      ColumnsAppearance.HeaderFill.ColorTo = 16446448
      ColumnsAppearance.FooterFill.Color = 16578806
      ColumnsAppearance.HeaderStroke.Kind = gskNone
      ColumnsAppearance.HeaderStroke.Color = 16578806
      ColumnsAppearance.FooterStroke.Kind = gskNone
      ColumnsAppearance.FooterStroke.Color = 16578806
      ColumnsAppearance.Fill.Color = 16578806
      ColumnsAppearance.Stroke.Color = 16380654
      Interaction.DragDropMode = kbdmMove
      ItemsAppearance.Font.Charset = DEFAULT_CHARSET
      ItemsAppearance.Font.Color = clBlack
      ItemsAppearance.Font.Height = -11
      ItemsAppearance.Font.Name = 'Segoe UI'
      ItemsAppearance.Font.Style = []
      ItemsAppearance.TitleFont.Charset = DEFAULT_CHARSET
      ItemsAppearance.TitleFont.Color = 4539717
      ItemsAppearance.TitleFont.Height = -13
      ItemsAppearance.TitleFont.Name = 'Segoe UI'
      ItemsAppearance.TitleFont.Style = []
      ItemsAppearance.Margins.Left = 10.000000000000000000
      ItemsAppearance.Margins.Top = 10.000000000000000000
      ItemsAppearance.Margins.Right = 10.000000000000000000
      ItemsAppearance.Margins.Bottom = 10.000000000000000000
      ItemsAppearance.Fill.Color = clWhite
      ItemsAppearance.Stroke.Kind = gskDashDot
      ItemsAppearance.Stroke.Color = 15987699
      ItemsAppearance.Stroke.Width = 2.000000000000000000
      ItemsAppearance.DisabledFill.ColorMirror = clSlateblue
      ItemsAppearance.DisabledFill.ColorMirrorTo = 15453831
      ItemsAppearance.DisabledFill.TextureMode = gtmOriginal
      ItemsAppearance.DisabledStroke.Kind = gskDot
      ItemsAppearance.FixedHeight = 50.000000000000000000
      OnItemDblClick = fncKPresupuestosItemDblClick
    end
    object TMSFNCKDatabaseAdapter: TTMSFNCKanbanBoardDatabaseAdapter
      Left = 531
      Top = 480
      Width = 26
      Height = 26
      Visible = True
      Active = True
      Item.DataSource = DSPresupuesto
      Item.Column = 'K_COLUMNA'
      Item.DBKey = 'ID_PR'
      OnFieldsToItem = TMSFNCKDatabaseAdapterFieldsToItem
    end
    object pnPie: TPanel
      Left = 0
      Top = 649
      Width = 1058
      Height = 41
      Align = alBottom
      BevelOuter = bvLowered
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 3
    end
  end
  inherited ToolBar1: TToolBar
    Top = 690
    Width = 1058
    Align = alBottom
    ExplicitTop = 690
    ExplicitWidth = 1058
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
    Top = 720
    Width = 1058
    Align = alBottom
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 720
    ExplicitWidth = 1058
    inherited DBStatusLabel1: TJvDBStatusLabel
      Height = 21
    end
    inherited sbEstado: TStatusBar
      Width = 969
      ExplicitWidth = 969
    end
  end
  inherited JvFormStorage: TJvFormStorage
    PreventResize = False
  end
  inherited ImageListDos: TImageList
    Top = 184
  end
  object QPrespuestos: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      
        'select p.id_pr,p.fechavta, (p.nrocpbte||p.sub_nro) as NroPbte_Pr' +
        'esu ,p.codigo,p.sub_nro,p.nombre,'
      '       p.razonsocial,p.direccion,p.k_columna,p.total, p.usuario,'
      
        '       f.id_fc as Muestra_IdFc,f.tipocpbte as MuestraTipoFC,f.nr' +
        'ocpbte as MuestraNro_Fac,'
      
        '       r.id_rto as Muestra_IdRto,r.tipocpbte as MuestraTipoRto,r' +
        '.nrocpbte as MuestraNro_Rto,'
      
        '       n.id as Muestra_IdPed,n.tipocpbte as MuestraTipoNP,n.nroc' +
        'pbte as MuestraNro_NPed,'
      
        '       op.id as Muestra_Id_OProd,op.tipocpbte as MuestraTiopOPro' +
        'd,op.nrocpbte as MuestraNro_OProd,'
      
        '       r2.id_rto as Muestra_IdRto_P,r2.tipocpbte as MuestraTipoR' +
        'to_P,r2.nrocpbte as MuestraNro_Rto_P from prescab p'
      'left join fcvtacab f on f.id_fc=p.id_factura'
      'left join rtocab r on r.idfactura=f.id_fc'
      'left join rtocab r2 on r2.presupuesto_id=p.id_pr'
      'left join npedidocab_cliente n on n.presupuesto_id=p.id_pr'
      'left join ordenproduccion_cab op on op.id_presupuesto=p.id_pr'
      ''
      
        'where (p.fechavta between :desde and :hasta) and (p.usuario = SU' +
        'BSTRING(:Usuario FROM 1 FOR 50) or (CAST(:Usuario AS VARCHAR(50)' +
        '))='#39#39') and p.anulado<>'#39'S'#39' and p.anulado<>'#39'R'#39)
    Left = 512
    Top = 555
    ParamData = <
      item
        Position = 1
        Name = 'DESDE'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'HASTA'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end>
    object QPrespuestosID_PR: TIntegerField
      FieldName = 'ID_PR'
      Origin = 'ID_PR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPrespuestosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      Size = 6
    end
    object QPrespuestosSUB_NRO: TStringField
      FieldName = 'SUB_NRO'
      Origin = 'SUB_NRO'
      ProviderFlags = []
      Size = 2
    end
    object QPrespuestosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object QPrespuestosRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      ProviderFlags = []
      Size = 35
    end
    object QPrespuestosDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      ProviderFlags = []
      Size = 35
    end
    object QPrespuestosK_COLUMNA: TIntegerField
      FieldName = 'K_COLUMNA'
      Origin = 'K_COLUMNA'
      Required = True
    end
    object QPrespuestosTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
    end
    object QPrespuestosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      ProviderFlags = []
      Size = 50
    end
    object QPrespuestosFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
      Origin = 'FECHAVTA'
    end
    object QPrespuestosNROPBTE_PRESU: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NROPBTE_PRESU'
      Origin = 'NROPBTE_PRESU'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object QPrespuestosMUESTRA_IDFC: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRA_IDFC'
      Origin = 'ID_FC'
      ProviderFlags = []
      ReadOnly = True
    end
    object QPrespuestosMUESTRATIPOFC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATIPOFC'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QPrespuestosMUESTRANRO_FAC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANRO_FAC'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object QPrespuestosMUESTRA_IDRTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRA_IDRTO'
      Origin = 'ID_RTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QPrespuestosMUESTRATIPORTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATIPORTO'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QPrespuestosMUESTRANRO_RTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANRO_RTO'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object QPrespuestosMUESTRA_IDPED: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRA_IDPED'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object QPrespuestosMUESTRATIPONP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATIPONP'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QPrespuestosMUESTRANRO_NPED: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANRO_NPED'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object QPrespuestosMUESTRA_ID_OPROD: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRA_ID_OPROD'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object QPrespuestosMUESTRATIOPOPROD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATIOPOPROD'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QPrespuestosMUESTRANRO_OPROD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANRO_OPROD'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object QPrespuestosMUESTRA_IDRTO_P: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRA_IDRTO_P'
      Origin = 'ID_RTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QPrespuestosMUESTRATIPORTO_P: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRATIPORTO_P'
      Origin = 'TIPOCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object QPrespuestosMUESTRANRO_RTO_P: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUESTRANRO_RTO_P'
      Origin = 'NROCPBTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
  end
  object DSPPrespuestos: TDataSetProvider
    DataSet = QPrespuestos
    Options = []
    UpdateMode = upWhereKeyOnly
    Left = 582
    Top = 555
  end
  object CDSPrespuestos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftTimeStamp
        Name = 'HASTA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USUARIO'
        ParamType = ptInput
        Size = 50
      end>
    ProviderName = 'DSPPrespuestos'
    AfterPost = CDSPrespuestosAfterPost
    Left = 670
    Top = 555
    object CDSPrespuestosID_PR: TIntegerField
      FieldName = 'ID_PR'
      Origin = 'ID_PR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPrespuestosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      Size = 6
    end
    object CDSPrespuestosSUB_NRO: TStringField
      FieldName = 'SUB_NRO'
      Origin = 'SUB_NRO'
      ProviderFlags = []
      Size = 2
    end
    object CDSPrespuestosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Origin = 'NOMBRE'
      ProviderFlags = []
      Size = 35
    end
    object CDSPrespuestosRAZONSOCIAL: TStringField
      FieldName = 'RAZONSOCIAL'
      Origin = 'RAZONSOCIAL'
      ProviderFlags = []
      Size = 35
    end
    object CDSPrespuestosDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Origin = 'DIRECCION'
      ProviderFlags = []
      Size = 35
    end
    object CDSPrespuestosK_COLUMNA: TIntegerField
      FieldName = 'K_COLUMNA'
      Origin = 'K_COLUMNA'
    end
    object CDSPrespuestosTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
    end
    object CDSPrespuestosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      ProviderFlags = []
      Size = 50
    end
    object CDSPrespuestosFECHAVTA: TSQLTimeStampField
      FieldName = 'FECHAVTA'
    end
    object CDSPrespuestosNROPBTE_PRESU: TStringField
      FieldName = 'NROPBTE_PRESU'
      ReadOnly = True
      Size = 15
    end
    object CDSPrespuestosMUESTRA_IDFC: TIntegerField
      FieldName = 'MUESTRA_IDFC'
      ReadOnly = True
    end
    object CDSPrespuestosMUESTRATIPOFC: TStringField
      FieldName = 'MUESTRATIPOFC'
      ReadOnly = True
      Size = 2
    end
    object CDSPrespuestosMUESTRANRO_FAC: TStringField
      FieldName = 'MUESTRANRO_FAC'
      ReadOnly = True
      Size = 13
    end
    object CDSPrespuestosMUESTRA_IDRTO: TIntegerField
      FieldName = 'MUESTRA_IDRTO'
      ReadOnly = True
    end
    object CDSPrespuestosMUESTRATIPORTO: TStringField
      FieldName = 'MUESTRATIPORTO'
      ReadOnly = True
      Size = 2
    end
    object CDSPrespuestosMUESTRANRO_RTO: TStringField
      FieldName = 'MUESTRANRO_RTO'
      ReadOnly = True
      Size = 13
    end
    object CDSPrespuestosMUESTRA_IDPED: TIntegerField
      FieldName = 'MUESTRA_IDPED'
      ReadOnly = True
    end
    object CDSPrespuestosMUESTRATIPONP: TStringField
      FieldName = 'MUESTRATIPONP'
      ReadOnly = True
      Size = 2
    end
    object CDSPrespuestosMUESTRANRO_NPED: TStringField
      FieldName = 'MUESTRANRO_NPED'
      ReadOnly = True
      Size = 13
    end
    object CDSPrespuestosMUESTRA_ID_OPROD: TIntegerField
      FieldName = 'MUESTRA_ID_OPROD'
      ReadOnly = True
    end
    object CDSPrespuestosMUESTRATIOPOPROD: TStringField
      FieldName = 'MUESTRATIOPOPROD'
      ReadOnly = True
      Size = 2
    end
    object CDSPrespuestosMUESTRANRO_OPROD: TStringField
      FieldName = 'MUESTRANRO_OPROD'
      ReadOnly = True
      Size = 13
    end
    object CDSPrespuestosMUESTRA_IDRTO_P: TIntegerField
      FieldName = 'MUESTRA_IDRTO_P'
      ReadOnly = True
    end
    object CDSPrespuestosMUESTRATIPORTO_P: TStringField
      FieldName = 'MUESTRATIPORTO_P'
      ReadOnly = True
      Size = 2
    end
    object CDSPrespuestosMUESTRANRO_RTO_P: TStringField
      FieldName = 'MUESTRANRO_RTO_P'
      ReadOnly = True
      Size = 13
    end
  end
  object DSPresupuesto: TDataSource
    DataSet = CDSPrespuestos
    Left = 750
    Top = 555
  end
  object QUsuarios: TFDQuery
    Connection = DMMain_FD.fdcGestion
    SQL.Strings = (
      'select * from ucs_users'
      'order by real_name')
    Left = 738
    Top = 203
  end
  object DSPUsuarios: TDataSetProvider
    DataSet = QUsuarios
    Left = 810
    Top = 211
  end
  object CDSUsuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPUsuarios'
    Left = 890
    Top = 211
    object CDSUsuariosUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Required = True
      Size = 30
    end
    object CDSUsuariosREAL_NAME: TStringField
      FieldName = 'REAL_NAME'
      Size = 40
    end
    object CDSUsuariosUSER_ID: TIntegerField
      FieldName = 'USER_ID'
    end
  end
  object DSUsuarios: TDataSource
    DataSet = CDSUsuarios
    Left = 898
    Top = 307
  end
end
